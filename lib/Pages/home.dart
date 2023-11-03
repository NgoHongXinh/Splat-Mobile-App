import 'package:flutter/material.dart';
import 'package:testapp/ListView/dialog_builder.dart';
import 'package:testapp/ListView/list_player_builder.dart';
import 'package:testapp/globals/app_asset.dart';
import 'package:testapp/globals/app_button.dart';
import 'package:testapp/globals/app_style.dart';

import '../globals/constants.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
final List<String> entries = <String>['A', 'B', 'C'];
class _HomePageState extends State<HomePage> {
  //Show DiaLog Delete
  void _showDialog(){
    showDialog(context: context, builder: (context){
      return AddDialog.AddDialogbuilder(
          onclose: (){Navigator.of(context).pop();},
          onApply: (){Navigator.of(context).pop();},
          content: 'Bạn có chắc muốn xoá người chơi này');
    });
  }
  void _showDialogAddPlayer(){
    showModalBottomSheet(
      context: context,

        shape: RoundedRectangleBorder(
          borderRadius:  BorderRadius.vertical(top: Radius.circular(30)),
        ),
      // transitionAnimationController: ,
      builder: (context){
      return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.centerLeft,
               child: IconButton(
                  alignment: Alignment.topLeft,
                  onPressed: (){Navigator.of(context).pop();},
                  icon: Icon(Icons.close),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0,right: 120),
                child: Container(
                  child: Text('Thêm người chơi',style: AppTextStyle.headerDialogTextStyle(),)
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
                  ListBuild.ListPlayer(
                      assets: AppAssets.player,
                      name: 'Xinh',
                      onPressed:(){},
                      icon:Icon(Icons.add_outlined, color: Colors.orange, size: 30,)),
                  ListBuild.ListPlayer(
                      assets: AppAssets.player,
                      name: 'Như',
                      onPressed: (){},
                      icon:Icon(Icons.add_outlined, color: Colors.orange, size: 30,)),
                  ListBuild.ListPlayer(
                      assets: AppAssets.player,
                      name: 'Thịnh',
                      onPressed: (){},
                      icon:Icon(Icons.add_outlined, color: Colors.orange, size: 30,)),
                  ListBuild.ListPlayer(
                      assets: AppAssets.player,
                      name: 'Ngọc',
                      onPressed: (){},
                      icon:Icon(Icons.add_outlined, color: Colors.orange, size: 30,)),
                  ListBuild.ListPlayer(
                      assets: AppAssets.player,
                      name: 'Nhân',
                      onPressed: (){},
                      icon:Icon(Icons.add_outlined, color: Colors.orange, size: 30,)),
                ],
              ),
            ),
          ),
        ],
      );
    },
    );
  }
  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            width: myHeight,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppAssets.background),
                  fit: BoxFit.cover,
                  opacity: 0.5,
                )
            ),
          ),
          Container(
            child: ListView(
                  children: [
                    Container(
                      height: myHeight*0.45,
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            top: 50,
                            left: 0,
                            right: 0,
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Container(
                                alignment: Alignment.center,
                                height: myHeight*0.35,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top:-30,
                            left: 0,
                            right: 0,
                            child: Padding(
                              padding: const EdgeInsets.all(30),
                              child: Column(
                                children: [
                                  Container(
                                    child: Padding(
                                      padding: const EdgeInsets.all(30),
                                      child: Column(
                                        children: [
                                          Container(
                                            width: 100,
                                            height: 100,
                                            decoration: BoxDecoration(
                                              image:  DecorationImage(
                                                image:  AssetImage(AppAssets.avatar),
                                                fit: BoxFit.cover,
                                              ),
                                              borderRadius: BorderRadius.circular(50),
                                            ),

                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(20),
                                            child: Text('Hồng Xinh',
                                              style: AppTextStyle.headerInfoTextStyle(),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 30),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Column(
                                                  children: [
                                                    Text('Game đã chơi',
                                                      style: AppTextStyle.normalTextStyle(),
                                                    ),
                                                    Row(
                                                      children: [
                                                        Icon(Icons.sports_basketball_outlined,size: 30,color: Colors.orange.shade200,),
                                                        Text(
                                                          '18',
                                                          style: AppTextStyle.textNumber(),
                                                        ),
                                                      ],
                                                    )
                                                  ],
                                                ),
                                                Column(
                                                  children: [
                                                    Text('Thành tích',
                                                      style: AppTextStyle.normalTextStyle(),
                                                    ),
                                                    Row(
                                                      children: [
                                                        Icon(Icons.workspace_premium_outlined,size: 30,color: Colors.orange.shade200),
                                                        Text(
                                                          '38',
                                                          style: AppTextStyle.textNumber(),

                                                        ),
                                                      ],
                                                    )
                                                  ],
                                                )
                                              ],

                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(20),
                           child: Container(
                              width: myWidth,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(20),
                                child: Column(
                                  children: [
                                    Container(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        'Tên game',
                                        style: AppTextStyle.normalHeaderTextStyle(),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        alignment: Alignment.center,
                                        child:TextField(
                                            textAlign: TextAlign.left,
                                            cursorColor: Colors.orange,
                                            decoration: InputDecoration(
                                              hintText: "Game 7.1.3",
                                              hintStyle: AppTextStyle.normalTextStyle(),
                                              filled: true,
                                              fillColor: Colors.grey.shade200,
                                              contentPadding: EdgeInsets.symmetric(vertical: 8,horizontal: 10),
                                              enabledBorder: new OutlineInputBorder(
                                                borderRadius: new BorderRadius.circular(30.0),
                                                borderSide: new BorderSide(color: Colors.grey.shade200,width: 0),
                                              ),
                                              focusedBorder: new OutlineInputBorder(
                                                borderRadius: new BorderRadius.circular(30.0),
                                                borderSide:  BorderSide(color: Colors.grey.shade200, width: 3),
                                              ),
                                            )

                                        ),


                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        'Người chơi:',
                                        style: AppTextStyle.normalHeaderTextStyle(),

                                      ),
                                    ),
                                    Container(
                                        child: Padding(
                                          padding: EdgeInsets.all(10),
                                          child: Column(
                                            children: <Widget>[
                                              AppButton.buildMaterialButton(buttonName: 'Thêm người chơi', onTap: _showDialogAddPlayer)
                                            ],
                                          ),
                                        )
                                    ),
                                    Container(
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: ListView(
                                          //không cần set height, khi wrap
                                          shrinkWrap: true,
                                          physics: NeverScrollableScrollPhysics(),
                                          //ko cho scroll
                                          children: [
                                            ListBuild.ListPlayer(assets: AppAssets.player, name: 'Xinh',onPressed: _showDialog,icon:Icon(Icons.cancel_outlined, color: Colors.orange, size: 30,)),
                                            ListBuild.ListPlayer(assets: AppAssets.player, name: 'Như',onPressed: _showDialog,icon:Icon(Icons.cancel_outlined, color: Colors.orange, size: 30,)),
                                            ListBuild.ListPlayer(assets: AppAssets.player, name: 'Thịnh',onPressed: _showDialog,icon:Icon(Icons.cancel_outlined, color: Colors.orange, size: 30,)),
                                            ListBuild.ListPlayer(assets: AppAssets.player, name: 'Ngọc',onPressed: _showDialog,icon:Icon(Icons.cancel_outlined, color: Colors.orange, size: 30,)),
                                            ListBuild.ListPlayer(assets: AppAssets.player, name: 'Nhân',onPressed: _showDialog,icon:Icon(Icons.cancel_outlined, color: Colors.orange, size: 30,)),
                                            ListBuild.ListPlayer(assets: AppAssets.player, name: 'Quỳnh',onPressed: _showDialog,icon:Icon(Icons.cancel_outlined, color: Colors.orange, size: 30,)),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                        child: Padding(
                                          padding: EdgeInsets.all(10),
                                          child: Column(
                                            children: <Widget>[
                                              AppButton.buildButtonCreateGame(buttonName: 'Tạo game', onTap: (){})
                                            ],
                                          ),
                                        )
                                    )
                                  ],
                                ),
                              ),
                            )

                    ),
              ],
            ),

          ),

        ],
      )

    );
  }
}
