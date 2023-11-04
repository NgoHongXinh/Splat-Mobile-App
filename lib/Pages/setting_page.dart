
import 'package:flutter/material.dart';
import 'package:testapp/globals/app_asset.dart';
import 'package:testapp/globals/app_button.dart';
import 'package:testapp/globals/app_style.dart';
class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  bool passwordVisible=false;

  @override
  void initState(){
    super.initState();
    passwordVisible=true;
  }
  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    return Container(
      child: Center(
        child: Scaffold(
          body: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(AppAssets.background),
                        fit: BoxFit.fitWidth,
                        opacity: 0.5,
                      )
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image:  DecorationImage(
                              image:  AssetImage(AppAssets.avatar),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        Container(
                          width: myWidth,
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: TextField(
                              textAlign: TextAlign.center,
                              style: AppTextStyle.headerInfoTextStyle(),
                              decoration: InputDecoration(
                                hintText: 'Hồng Xinh',
                                hintStyle: AppTextStyle.headerInfoTextStyle(),
                                focusedBorder: new OutlineInputBorder(
                                  borderRadius: new BorderRadius.circular(30.0),
                                  borderSide:  BorderSide(color: Colors.grey.shade200, width: 1),
                                ),
                                enabledBorder: UnderlineInputBorder(borderSide: BorderSide.none),

                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(10.0),
                                child: TextField(
                                  decoration: InputDecoration(
                                    enabledBorder: UnderlineInputBorder(borderSide: BorderSide.none),
                                    focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.deepOrange)),
                                    hintText: "Username",
                                    labelText: "Username",
                                    labelStyle: TextStyle(color: Colors.deepOrange),
                                    helperText:"Username must contain special character",
                                    helperStyle:TextStyle(color:Colors.green,fontSize: 16,fontWeight: FontWeight.w600),
                                    alignLabelWithHint: false,
                                    filled: true,
                                  ),
                                  keyboardType: TextInputType.visiblePassword,
                                  textInputAction: TextInputAction.done,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(10.0),
                                child: TextField(
                                  obscureText: passwordVisible,
                                  decoration: InputDecoration(
                                    enabledBorder: UnderlineInputBorder(borderSide: BorderSide.none),
                                    focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.deepOrange)),
                                    hintText: "Password",
                                    labelText: "Password",
                                    labelStyle: TextStyle(color: Colors.deepOrange),
                                    helperText:"Password must contain special character",
                                    helperStyle:TextStyle(color:Colors.green,fontSize: 16,fontWeight: FontWeight.w600),
                                    suffixIcon: IconButton(
                                      icon: Icon(passwordVisible
                                          ? Icons.visibility
                                          : Icons.visibility_off),
                                      color: Colors.deepOrange,
                                      onPressed: () {setState(() {passwordVisible = !passwordVisible;},);},
                                    ),
                                    alignLabelWithHint: false,
                                    filled: true,
                                  ),
                                  keyboardType: TextInputType.visiblePassword,
                                  textInputAction: TextInputAction.done,
                                ),
                              ),
                              Container(
                                child: AppButton.buildButtonCreateGame(buttonName: 'Xác nhận', onTap: (){}),
                              )
                            ],
                          ),
                        )

                      ],
                    ),
                  ),
                ),
              ]
          ),
        ),
      ),
    );
  }
}
