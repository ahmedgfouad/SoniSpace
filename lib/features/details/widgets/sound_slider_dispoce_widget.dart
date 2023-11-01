import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sonispace/core/utils/app_colors.dart';
import 'package:sonispace/core/utils/app_images.dart';
import 'package:sonispace/features/details/view_model/details_controller.dart';

class SoundSliderAndDisposeWidget extends StatefulWidget {
  final String sound;
  const SoundSliderAndDisposeWidget({
    super.key,
    required this.sound,
  });

  @override
  State<SoundSliderAndDisposeWidget> createState() =>
      _SoundSliderAndDisposeWidgetState();
}

class _SoundSliderAndDisposeWidgetState
    extends State<SoundSliderAndDisposeWidget> {
  Duration position = Duration.zero;

  @override
  void initState() {
    super.initState();

    DetailsController.changPlayerState();

    DetailsController.changeDuration();

    DetailsController.player.onPositionChanged.listen((newPosition) {
      setState(() {
        position = newPosition;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<DetailsController>(builder: (
      BuildContext context,
      DetailsController provider,
      Widget? child,
    ) {
      return Column(
        children: [
          SliderTheme(
            data: SliderTheme.of(context).copyWith(
              overlayShape: SliderComponentShape.noOverlay,
            ),
            child: Slider(
              min: 0,
              max: DetailsController.duration.inSeconds.toDouble(),
              value: position.inSeconds.toDouble(),
              onChanged: (value) {
                final position = Duration(seconds: value.toInt());
                DetailsController.player.seek(position);
                DetailsController.player.resume();
              },
              thumbColor: AppColors.white,
              activeColor: AppColors.burple,
              inactiveColor: AppColors.greySlider,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(DetailsController.formatTime(position.inSeconds)),
              Text(
                DetailsController.formatTime(
                  (DetailsController.duration - position).inSeconds,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(AppImages.spedIcon),
              Image.asset(AppImages.backTenSecondIcon),
              CircleAvatar(
                backgroundColor: AppColors.white,
                radius: 25,
                child: IconButton(
                  icon: Icon(
                    DetailsController.isPlaying
                        ? Icons.pause
                        : Icons.play_arrow,
                  ),
                  onPressed: () {
                    if (DetailsController.isPlaying) {
                      DetailsController.player.pause();
                    } else {
                      DetailsController.player.play(AssetSource(widget.sound));
                    }
                  },
                ),
              ),
              Image.asset(AppImages.goTenSecondIcon),
              const Icon(Icons.share),
            ],
          ),
        ],
      );
    });
  }
}
