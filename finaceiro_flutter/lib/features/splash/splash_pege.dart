import 'package:finaceiro_flutter/common/const/epp_colors.dart';
import 'package:finaceiro_flutter/common/const/epp_text_style.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                AppColos.corPd1,
                AppColos.corPd2,
              ]),
        ),
        child: Text('test',
            style: EppTextStyles.bigText.copyWith(
              color: Colors.white,
            )
            // color: Colors.white,
            ),
      ),
    );
  }
}
