import 'package:finaceiro_flutter/common/const/epp_colors.dart';
import 'package:flutter/material.dart';

import '../const/epp_text_style.dart';

class PraimeBottom extends StatelessWidget {
  // final void Function()? onTap;
  final VoidCallback? onPress;
  final String text;
  const PraimeBottom({
    Key? key,
    this.onPress,
    required this.text,
  }) : super(key: key);
  final BorderRadius _borderRadius =
      const BorderRadius.all(Radius.circular(38.0));
  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: BoxDecoration(
          borderRadius: _borderRadius,
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: onPress != null
                ? AppColos.greenGradient
                : AppColos.greenGradientoff,
          )),
      child: InkWell(
        borderRadius: _borderRadius,
        onTap: onPress,
        child: Container(
          width: 260,
          height: 56,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: _borderRadius,
          ),
          child: Text(
            text,
            style: EppTextStyles.mindText18.copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
