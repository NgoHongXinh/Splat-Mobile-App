
import 'package:flutter/material.dart';
import 'package:testapp/ListView/list_player_builder.dart';
import 'package:testapp/globals/app_asset.dart';
import 'package:testapp/globals/app_button.dart';
import 'package:testapp/globals/app_style.dart';

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
          title: IconButton(
            alignment: Alignment.centerLeft,
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
  static Column BottomListBuilder({
    required String title,
    required VoidCallback onClose,
    required VoidCallback onAdd,
  }){
      return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                    alignment: Alignment.topLeft,
                    onPressed: onClose,
                    icon: Icon(Icons.close),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0,right: 120),
                child: Container(
                    child: Text(title,style: AppTextStyle.headerDialogTextStyle(),)
                ),
              ),
            ],
          ),
          Container(
            height: 350,
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.all(20),
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: ListBuild.ListPlayer(
                          assets: AppAssets.player,
                          name: 'Mỹ',
                          onPressed:onAdd,
                          icon:Icon(Icons.add_circle_outline, color: Colors.orange, size: 30,)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: ListBuild.ListPlayer(
                          assets: AppAssets.player,
                          name: 'Hoa',
                          onPressed:onAdd,
                          icon:Icon(Icons.add_circle_outline, color: Colors.orange, size: 30,)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: ListBuild.ListPlayer(
                          assets: AppAssets.player,
                          name: 'Xinh',
                          onPressed:onAdd,
                          icon:Icon(Icons.add_circle_outline, color: Colors.orange, size: 30,)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: ListBuild.ListPlayer(
                          assets: AppAssets.player,
                          name: 'Minh',
                          onPressed:onAdd,
                          icon:Icon(Icons.add_circle_outline, color: Colors.orange, size: 30,)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      );
  }

}