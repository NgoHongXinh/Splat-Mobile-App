import 'package:flutter/material.dart';
import 'package:testapp/globals/app_color.dart';
import 'package:testapp/globals/app_style.dart';

class AppButton {
  static MaterialButton buildMaterialButton({
    required String buttonName,
    required VoidCallback onTap,
  }) {
    return MaterialButton(
      onPressed: onTap,
      color: AppColors.White,
      splashColor: AppColors.White,
      padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 15),
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25),
        borderSide:  BorderSide(color: Colors.orange.shade600, width: 3),
      ),
      hoverColor: AppColors.White,
      elevation: 7,
      height: 46,
      minWidth: 130,
      focusElevation: 14,
      child: Text(
        buttonName,
        style:
        AppTextStyle.headerInfoTextStyle(fontSize: 18, color: Colors.orange.shade600),
      ),
    );
  }
  static MaterialButton buildButtonCreateGame({
    required String buttonName,
    required VoidCallback onTap,
  }) {
    return MaterialButton(
      onPressed: onTap,
        color: AppColors.Organe,
      splashColor: AppColors.btnHover,
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25),
        borderSide:  BorderSide(color: Colors.orange.shade600, width: 3),
      ),
      hoverColor: AppColors.btnHover,
      elevation: 7,
      height: 46,
      minWidth: 130,
      focusElevation: 14,
      child: Text(
        buttonName,
        style:
        AppTextStyle.headerInfoTextStyle(fontSize: 18, color: Colors.white),
      )
      );
    }
}