import 'package:flutter/material.dart';
import 'package:testapp/globals/app_asset.dart';
class RattingPage extends StatefulWidget {
  const RattingPage({super.key});

  @override
  State<RattingPage> createState() => _RattingPageState();
}

class _RattingPageState extends State<RattingPage> {
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
