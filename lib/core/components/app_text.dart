import 'package:flutter/material.dart';
import 'package:torch_mobile/core/themes/colors_scheme.dart';

enum FontSize { tiny, small, medium, large, header }

class AppText extends StatelessWidget {
  /// display text
  final String? text;

  /// size of text
  final FontSize? size;

  /// font weight of text
  final FontWeight? weight;

  /// max lines of text before overflows
  final int? maxLines;

  /// overflow styles
  final TextOverflow? overflow;

  /// colors of text
  final Color? color;

  /// AppText replaced Text for display words
  const AppText({
    super.key,
    this.text,
    this.size,
    this.weight,
    this.maxLines,
    this.overflow,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<ColorsScheme>()!;
    double fontSize;
    switch (size) {
      case FontSize.tiny:
        fontSize = 8;
        break;
      case FontSize.small:
        fontSize = 12;
        break;
      case FontSize.medium:
        fontSize = 16;
        break;
      case FontSize.large:
        fontSize = 24;
        break;
      case FontSize.header:
        fontSize = 32;
        break;
      default:
        fontSize = 16;
    }
    return Text(
      text ?? "",
      style: TextStyle(
        color: color ?? colors.text,
        fontWeight: weight ?? FontWeight.w400,
        fontSize: fontSize,
      ),
      maxLines: maxLines,
      overflow: overflow ?? TextOverflow.ellipsis,
    );
  }
}
