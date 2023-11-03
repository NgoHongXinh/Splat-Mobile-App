import 'package:flutter/material.dart';
import 'package:testapp/globals/app_asset.dart';
import 'package:testapp/globals/app_color.dart';
class ListBuild{
  static Row ListPlayer({
    required String assets,
    required String name,
    required VoidCallback onPressed,
  }){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
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
            // child: ClipRRect(
            //   borderRadius: BorderRadius.circular(50.0),
            //   child: SizedBox.fromSize(
            //     size: Size.fromRadius(10),
            //     child: Image.asset(assets, fit: BoxFit.cover),
            //   ),
            // ),
          ),
        ),
        Container(
          width: 150,
          alignment: Alignment.center,
          child: Text(name),
        ),
        Container(
          width: 30,
          child: IconButton(
              onPressed: onPressed,
              icon: Icon(Icons.cancel_outlined, color: Colors.orange, size: 30,),
            highlightColor: Colors.cyan,
          ),
        )
      ],
    );

  }
}