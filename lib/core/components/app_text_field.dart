import 'package:flutter/material.dart';
import 'package:torch_mobile/core/components/app_text.dart';
import 'package:torch_mobile/core/themes/colors_scheme.dart';

class AppTextField extends StatefulWidget {
  final TextEditingController? controller;
  final String? label;
  final Color? labelColor;
  final FontSize? labelSize;
  final FontWeight? labelWeight;
  final Color? textColor;
  final double? textSize;
  final FontWeight? textWeight;
  final String? hint;
  final Color? hintColor;
  final double? hintSize;
  final FontWeight? hintWeight;
  final Widget? prefixIcon;
  final bool? isReadOnly;
  final bool? isSecureText;
  const AppTextField({
    super.key,
    this.controller,
    this.label,
    this.labelColor,
    this.labelSize,
    this.labelWeight,
    this.textColor,
    this.textSize,
    this.textWeight,
    this.hint,
    this.hintColor,
    this.hintSize,
    this.hintWeight,
    this.prefixIcon,
    this.isReadOnly,
    this.isSecureText,
  });

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  bool displaySecureText = false;

  @override
  void initState() {
    super.initState();
    displaySecureText = widget.isSecureText ?? false;
  }

  void setDisplaySecureText() {
    setState(() {
      displaySecureText = !displaySecureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<ColorsScheme>()!;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Visibility(
          visible: widget.label != null,
          child: AppText(
            text: widget.label,
            size: widget.labelSize ?? FontSize.medium,
            weight: widget.labelWeight ?? FontWeight.w500,
            color: widget.labelColor ?? colors.text,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 8),
          // padding: EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            border: Border.all(width: 2, color: colors.text.withAlpha(50)),
            borderRadius: BorderRadius.circular(12),
          ),
          child: TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(12),
              border: InputBorder.none,
              hintText: widget.hint,
              hintStyle: TextStyle(
                fontSize: widget.hintSize ?? 16,
                fontWeight: widget.hintWeight ?? FontWeight.w400,
                color: widget.hintColor ?? colors.gray600,
              ),
              prefixIcon: widget.prefixIcon,
              suffixIcon: widget.isSecureText == true
                  ? IconButton(
                      icon: Icon(
                        displaySecureText
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: colors.gray600,
                      ),
                      onPressed: setDisplaySecureText,
                    )
                  : null,
            ),
            style: TextStyle(
              fontSize: widget.textSize ?? 16,
              fontWeight: widget.textWeight ?? FontWeight.w400,
              color: widget.textColor ?? colors.text,
            ),
            readOnly: widget.isReadOnly ?? false,
            obscureText: displaySecureText,
            obscuringCharacter: '•',
            cursorColor: colors.text,
          ),
        ),
      ],
    );
  }
}
