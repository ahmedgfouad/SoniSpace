import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sonispace/core/utils/app_colors.dart';
import 'package:sonispace/core/utils/app_images.dart';
import 'package:sonispace/core/utils/app_styles.dart';
import 'package:sonispace/features/details/view_model/details_controller.dart';

class SoundSliderAndDisposeWidget extends StatelessWidget {
  const SoundSliderAndDisposeWidget({super.key});

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
            max: 100,
            value: 20,
            thumbColor: AppColors.white,
            activeColor: AppColors.white,
            inactiveColor: AppColors.greySlider,
            divisions: 100,
            secondaryTrackValue: 5,
            onChanged: (value) {},
          ),
        ),
        const SizedBox(height: 8),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "0:20",
              style: AppStyles.textStyle16,
            ),
            Text(
              "0:50",
              style: AppStyles.textStyle16,
            ),
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
                radius: 30,
                backgroundColor: AppColors.white,
                child: IconButton(
                  onPressed: () async {
                    provider.changeStatues();
                    provider.audioStatues
                        ? provider.playAudio(
                            url:
                                "https://filesamples.com/samples/audio/mp3/Symphony%20No.6%20(1st%20movement).mp3")
                        : provider.stopAudio();
                  },
                  icon: provider.audioStatues
                      ? const Icon(
                          Icons.pause,
                          size: 30,
                        )
                      : const Icon(
                          Icons.play_arrow,
                          size: 30,
                        ),
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
