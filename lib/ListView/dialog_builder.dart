
import 'package:flutter/material.dart';
import 'package:testapp/ListView/list_player_builder.dart';
import 'package:testapp/globals/app_asset.dart';
import 'package:testapp/globals/app_button.dart';

class AddDialog{
  static AlertDialog AddDialogbuilder({
    required VoidCallback onclose,
    required VoidCallback onApply,
    required String content,
  }){
      return AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(30))
          ),
          insetPadding: EdgeInsets.zero,
          contentPadding: EdgeInsets.zero,
          alignment: Alignment.center,
          title: IconButton(
            alignment: Alignment.topLeft,
            onPressed: onclose,
            icon: Icon(Icons.close),
          ),
          content: Padding(
            padding: const EdgeInsets.all(10.0),
            child:  Text(
              content,textAlign: TextAlign.center,
            ),
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Container(
                alignment: Alignment.center,
                child: AppButton.buildButtonCreateGame(
                  buttonName: 'Xác nhận',
                  onTap: onApply,
                ),
              ),
            )


          ]
      );
  }
  static AlertDialog AddPlayer({
    required String title,
    required VoidCallback onclose,
    required VoidCallback onApply,
  }){
      return AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(30))
          ),
          insetPadding: EdgeInsets.zero,
          contentPadding: EdgeInsets.zero,
          alignment: Alignment.center,
          title: Row(
            children: [
              IconButton(
                alignment: Alignment.topLeft,
                onPressed: onclose,
                icon: Icon(Icons.close),
              ),
              Text(title),
            ],
          ),
          content: Container(
            height: 100,
            width: 200,
            child: Padding(
              padding: EdgeInsets.all(8),
              child: ListView(
                children: [
                  ListBuild.ListPlayer(assets: AppAssets.player, name: 'Xinh',onPressed: (){},icon: Icon(Icons.cancel_outlined, color: Colors.orange, size: 30,)),
                  ListBuild.ListPlayer(assets: AppAssets.player, name: 'Xinh',onPressed: (){},icon: Icon(Icons.cancel_outlined, color: Colors.orange, size: 30,)),
                  ListBuild.ListPlayer(assets: AppAssets.player, name: 'Xinh',onPressed: (){},icon:Icon(Icons.cancel_outlined, color: Colors.orange, size: 30,)),

                ],
              ),
            ),

          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Container(
                alignment: Alignment.center,
                child: AppButton.buildButtonCreateGame(
                  buttonName: 'Xác nhận',
                  onTap: onApply,
                ),
              ),
            )


          ]
      );
  }

}