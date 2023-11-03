import 'package:flutter/material.dart';
import 'package:testapp/globals/app_asset.dart';
import 'package:testapp/globals/app_color.dart';
class ListBuild{
  static Row ListPlayer({
    required String assets,
    required icon,
    required String name,
    required VoidCallback onPressed,
  }){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 100,
          height: 100,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppAssets.background),
                    fit: BoxFit.cover,
                  ),
                borderRadius: BorderRadius.circular(50),
              ),
            )
          ),
        ),
        Container(
          width: 150,
          alignment: Alignment.center,
          child: Text(name),
        ),
        Container(
          child: IconButton(
              onPressed: onPressed,
              icon: icon,
            highlightColor: Colors.cyan,
          ),
        )
      ],
    );

  }
}