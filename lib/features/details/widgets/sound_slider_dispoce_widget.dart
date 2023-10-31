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
  final player = AudioPlayer();
  bool isPlaying = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;

  String formatTime(int seconds) {
    return '${(Duration(seconds: seconds))}'.split('.')[0].padLeft(8, '0');
  }

  @override
  void initState() {
    super.initState();

    player.onPlayerStateChanged.listen((state) {
      setState(() {
        isPlaying = state == PlayerState.playing;
      });
    });

    player.onDurationChanged.listen((newDuration) {
      setState(() {
        duration = newDuration;
      });
    });

    player.onPositionChanged.listen((newPosition) {
      setState(() {
        position = newPosition;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            overlayShape: SliderComponentShape.noOverlay,
          ),
          child: Slider(
            min: 0,
            max: duration.inSeconds.toDouble(),
            value: position.inSeconds.toDouble(),
            onChanged: (value) {
              final position = Duration(seconds: value.toInt());
              player.seek(position);
              player.resume();
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
            Text(formatTime(position.inSeconds)),
            Text(formatTime((duration - position).inSeconds)),
          ],
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(AppImages.spedIcon),
            Image.asset(AppImages.backTenSecondIcon),
            Consumer<DetailsController>(
              builder: (
                BuildContext context,
                DetailsController provider,
                Widget? child,
              ) =>
                  CircleAvatar(
                backgroundColor: AppColors.white,
                radius: 25,
                child: IconButton(
                  icon: Icon(
                    isPlaying ? Icons.pause : Icons.play_arrow,
                  ),
                  onPressed: () {
                    if (isPlaying) {
                      player.pause();
                    } else {
                      player.play(AssetSource(widget.sound));
                    }
                  },
                ),
              ),
            ),
            Image.asset(AppImages.goTenSecondIcon),
            const Icon(Icons.share),
          ],
        ),
      ],
    );
  }
}
