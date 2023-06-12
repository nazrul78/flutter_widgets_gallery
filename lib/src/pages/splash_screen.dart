import 'package:flutter/material.dart';
import 'package:flutter_widget_gallery/src/helpers/app_theme_colors.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppThemeColors.AppBarColor1,
        child: Center(
          child: LoadingAnimationWidget.staggeredDotsWave(
            color: AppThemeColors.AppTextColor1,
            size: 60,
          ),
        ),
      ),
    );
  }
}
