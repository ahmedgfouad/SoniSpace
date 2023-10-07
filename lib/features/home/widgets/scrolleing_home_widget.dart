// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:provider/provider.dart';
// import 'package:sonispace/features/home/view_model/home_controller.dart';
// import 'package:sonispace/features/home/widgets/category_widget.dart';

// class ScrollingHomeWidget extends StatelessWidget {
//   const ScrollingHomeWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Consumer<HomeController>(
//       builder: (
//         BuildContext context,
//         HomeController provider,
//         Widget? child,
//       ) =>
//           ListView.separated(
//         physics: const BouncingScrollPhysics(),
//         shrinkWrap: true,
//         separatorBuilder: (context, index) => SizedBox(height: 32.h),
//         itemCount: provider.listOfCategyType.length,
//         itemBuilder: (context, index) =>
//             CategoryTypeWidget(categoryType: provider.listOfCategyType[index]),
//       ),
//     );
//   }
// }