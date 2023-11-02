import 'package:flutter/material.dart';
import 'package:testapp/globals/app_asset.dart';

import '../globals/constants.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    return  SafeArea(
            child: Center(
              child: Scaffold(
                body: Stack(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(AppAssets.background),
                            fit: BoxFit.cover,
                            opacity: 0.5,
                          )
                      ),
                    ),
                    Container(
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            top: 80,
                            left: 0,
                            right: 0,
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Container(
                                alignment: Alignment.center,
                                height: myHeight*0.3,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: -10,
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
                                            child: Text('Hồng Xinh',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black87),),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 30),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Column(
                                                  children: [
                                                    Text('Game đã chơi'),
                                                    Row(
                                                      children: [
                                                        Icon(Icons.sports_basketball_outlined,size: 30,color: Colors.orange.shade200,),
                                                        Text(
                                                          '18',
                                                          style: TextStyle(color: Colors.black54, fontSize: 30),
                                                        ),
                                                      ],
                                                    )
                                                  ],
                                                ),
                                                Column(
                                                  children: [
                                                    Text('Thành tích'),
                                                    Row(
                                                      children: [
                                                        Icon(Icons.workspace_premium_outlined,size: 30,color: Colors.orange.shade200),
                                                        Text(
                                                          '18',
                                                          style: TextStyle(color: Colors.black54, fontSize: 30),

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
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20),
                                    child: Container(
                                      height: myHeight*0.3,
                                      child: Stack(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                              borderRadius: BorderRadius.circular(20)
                                            ),
                                          )
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

                  ],
                )

              ),
            )
    );
  }
}
