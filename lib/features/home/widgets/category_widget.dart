// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:sonispace/core/functions/navigator.dart';
// import 'package:sonispace/core/utils/app_styles.dart';
// import 'package:sonispace/features/details/details_view.dart';
// import 'package:sonispace/features/details/view_model/details_controller.dart';
// import 'package:sonispace/features/home/view_model/home_controller.dart';
// import 'package:sonispace/features/home/widgets/custom_category_widget.dart';

// class CategoryTypeWidget extends StatelessWidget {
//   final String categoryType;
//   const CategoryTypeWidget({super.key, required this.categoryType});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           categoryType,
//           style: AppStyles.textStyle28,
//         ),
//         const SizedBox(height: 7),
//         SizedBox(
//           height: 150.h,
//           child: ListView.separated(
//             physics: const BouncingScrollPhysics(),
//             scrollDirection: Axis.horizontal,
//             separatorBuilder: (context, index) => SizedBox(width: 16.w),
//             itemCount: 5,
//             itemBuilder: (context, index) => InkWell(
//               onTap: () {
//                 defaultNavigator(
//                   context,
//                   DetailsView(
//                     image: HomeController().popularImages[index],
//                     sound: DetailsController().listOfAudio[0],
//                   ),
//                 );
//               },
//               child: CustomContainer(
//                 title: "Nipton",
//                 description: "Description of the planet",
//                 image: HomeController().popularImages[index],
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
