import 'package:elena_video_app/core/reusable_widgets/reusable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

// ignore: must_be_immutable
class MyAppBar extends StatelessWidget {
  String? title;
  Function()? onpress;
  MyAppBar({super.key, this.title, this.onpress});

  @override
  Widget build(BuildContext context) {
    return PlatformAppBar(
        backgroundColor: Colors.grey,
        title: ReusableText(
          fontWeight: FontWeight.bold,
          text: title,
        ),
        leading: PlatformIconButton(
          icon: Icon(PlatformIcons(context).back),
          onPressed: onpress,
        ));
  }
}

// ignore: must_be_immutable
class MyAppBarNew2 extends PlatformAppBar {
  Text myTitle;
  void Function()? onPressingBackButton;
  MyAppBarNew2({super.key, required this.myTitle, this.onPressingBackButton});

  @override
  Widget build(BuildContext context) {
    return PlatformAppBar(
        backgroundColor: Colors.grey,
        title: myTitle,
        leading: BackButton(
          onPressed: onPressingBackButton,
        ));
  }
}


// class IAppBar extends PreferredSize {
//   //
//   final Widget? child;
//   final double? height;
//   final Color? color;
  
// IAppBar({
//     @required this.child,
//     this.color,
//     this.height = kToolbarHeight,
//   });
// @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: preferredSize.height,
//       color: color ?? Colors.red,
//       alignment: Alignment.center,
//       child: child,
//     );
//   }
// }

// PlatformAppBar myAppBarNew({String? title,Function()? onpress}) {
//     return PlatformAppBar(
//       backgroundColor: Colors.grey,
//       title: ReusableText(
//         fontWeight: FontWeight.bold,
//         text: title,
//       ),
//       leading: BackButton(
//         onPressed: onpress,
//       ));
// }


// previous code which i used, without PlatformScaffold
// PreferredSize(
//           preferredSize: const Size.fromHeight(kToolbarHeight),
//           child: MyAppBar(
//             title: 'Choose',
//             onpress: () {
//               Navigator.pushNamed(context, RouteTo.intro);
//             },
//           ),