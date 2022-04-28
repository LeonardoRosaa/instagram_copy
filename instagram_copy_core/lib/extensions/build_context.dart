import 'package:flutter/widgets.dart';

extension BuildContextExtension on BuildContext {

  Size get viewport => MediaQuery.of(this).size;
}