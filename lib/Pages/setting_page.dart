import 'package:flutter/material.dart';
import 'package:testapp/globals/app_asset.dart';
class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
              ]
          ),
        ),
      ),
    );
  }
}
