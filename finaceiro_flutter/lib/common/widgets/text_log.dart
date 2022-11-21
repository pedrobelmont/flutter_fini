import 'dart:developer';

import 'package:flutter/material.dart';

import '../const/epp_text_style.dart';

class textLog extends StatelessWidget {
  const textLog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => log('teste texto'),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Already have account? ',
            style: EppTextStyles.smText.copyWith(
              color: Colors.black54,
            ),
          ),
          Text(
            'Log In',
            style: EppTextStyles.smText.copyWith(
              color: Color.fromARGB(255, 37, 125, 38),
            ),
          )
        ],
      ),
    );
  }
}
