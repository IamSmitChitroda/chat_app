import "package:flutter/material.dart";

extension DoubleAppExtensions on double {
  Widget get height => SizedBox(height: this);
  Widget get width => SizedBox(width: this);
  Widget mqHeight(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(height: size.height * toDouble() / 100);
  }

  Widget mqWidth(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(height: size.height * toDouble() / 100);
  }
}

extension IntAppExtensions on int {
  Widget get height => SizedBox(height: toDouble());
  Widget get width => SizedBox(width: toDouble());
  Widget mqHeight(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(height: size.height * this / 100);
  }

  Widget mqWidth(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(width: size.width * this / 100);
  }
}
