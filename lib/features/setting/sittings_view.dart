import 'package:flutter/material.dart';
import 'package:sonispace/core/utils/app_colors.dart';
import 'package:sonispace/core/utils/app_images.dart';
import 'package:sonispace/core/utils/app_styles.dart';
import 'package:sonispace/core/widgets/auth_widgets/custom_button.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                AppImages.appBackGroundImage,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Settings", style: AppStyles.textStyle28,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey,
                      child: Text("N", style: AppStyles.textStyle28.copyWith(color: Colors.black),),
                    ),
                    const SizedBox(width: 12,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      const Text("Nasa", style: AppStyles.textStyle20,),
                      Text("View profile", style: AppStyles.textStyle16.copyWith(color: AppColors.greyDiscription),),
                    ],),
                    const Spacer(),
                    CustomButton(onPressed: (){},
                      width: MediaQuery.of(context).size.width*0.32,
                      title: "Edit profile",titleSize: 20,borderRadius: 30, titleColor: AppColors.white,),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_forward_ios)),
                  ],
                ),
                const SizedBox(height: 7,),
                const Text("Account", style: AppStyles.textStyle24,),
                const SizedBox(height: 7,),
                const ListTile(title: Text("E-mail", style: AppStyles.textStyle20,),
                  subtitle: Text("Nasa_gamil.com", style: AppStyles.textStyle18,),
                ),
                const ListTile(title: Text("Notifications", style: AppStyles.textStyle20,),
                  subtitle: Text("turned on", style: AppStyles.textStyle18,),
                ),
                const ListTile(title: Text("Your plan", style: AppStyles.textStyle20,),
                  subtitle: Text("Free plan", style: AppStyles.textStyle18,),
                ),
                const ListTile(title: Text("Privacy Policy", style: AppStyles.textStyle20,),
                  subtitle: Text("Important for both of us", style: AppStyles.textStyle18,),
                ),
                const ListTile(title: Text("Version", style: AppStyles.textStyle20,),
                  subtitle: Text("0.1 s", style: AppStyles.textStyle18,),
                ),
                const ListTile(title: Text("Support", style: AppStyles.textStyle20,),
                  subtitle: Text("Get help from us and the community", style: AppStyles.textStyle18,),
                ),
                const ListTile(title: Text("Support", style: AppStyles.textStyle20,),
                  subtitle: Text("Get help from us and the community", style: AppStyles.textStyle18,),
                ),
                const ListTile(
                  title: Text("Log out", style: AppStyles.textStyle20,),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
