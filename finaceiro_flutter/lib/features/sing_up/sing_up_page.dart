import 'package:finaceiro_flutter/common/const/epp_colors.dart';
import 'package:finaceiro_flutter/common/const/epp_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SingUpPage extends StatelessWidget {
  const SingUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Star Saving',
            textAlign: TextAlign.center,
            style: EppTextStyles.mindText.copyWith(color: AppColos.corPd2),
          ),
          Text(
            'Yuor money',
            textAlign: TextAlign.center,
            style: EppTextStyles.mindText.copyWith(color: AppColos.corPd2),
          ),
          Expanded(
            child: Image.asset('assets/images/list_man.png'),
          )
        ],
      ),
    );
  }
}
