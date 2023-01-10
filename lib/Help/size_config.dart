import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:oktc/Help/colors.dart';

class CommonTextField extends StatelessWidget {
  final TextInputType? keyboardType;
  final TextCapitalization? textCapitalization;
  final String hintText;
  final String? labelText;
  final String? initialValue;
  final TextStyle? hintStyle;
  final TextStyle? labelStyle;
  final TextStyle? inputStyle;
  final String? suffixLabel;
  final bool? enabled;
  final bool? obSecureText;
  final TextEditingController? textEditingController;
  final FocusNode? focusNode;
  final Function(String)? onChange;
  final Function(String)? onSubmit;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final Widget? prefixIcon;
  final String? prefixText;
  final Widget? suffixIcon;
  final Color? fillColor;
  final Color? cursorColor;
  final String? Function(String?)? validator;
  final int? maxLines;
  final List<TextInputFormatter>? inputFormatter;

  const CommonTextField(
      {Key? key,
        required this.hintText,
        this.labelText,
        this.labelStyle,
        this.hintStyle,
        this.keyboardType,
        this.textCapitalization,
        this.suffixLabel,
        this.textEditingController,
        this.enabled,
        this.focusNode,
        this.onChange,
        this.onSubmit,
        this.enabledBorder,
        this.focusedBorder,
        this.prefixIcon,
        this.fillColor,
        this.validator,
        this.maxLines,
        this.inputFormatter,
        this.cursorColor,
        this.prefixText,
        this.obSecureText,
        this.suffixIcon,
        this.inputStyle,
        this.initialValue})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        obscureText: obSecureText ?? false,
        textCapitalization: textCapitalization ?? TextCapitalization.words,
        enabled: enabled,
        controller: textEditingController,
        keyboardType: keyboardType ?? TextInputType.text,
        style: inputStyle ?? Theme.of(context).textTheme.headlineSmall,
        focusNode: focusNode,
        initialValue: initialValue,
        maxLines: maxLines,
        onChanged: onChange,
        autofocus: false,
        onFieldSubmitted: onSubmit,
        inputFormatters: inputFormatter,
        cursorColor: cursorColor,
        decoration: InputDecoration(
            prefixText: prefixText,
            suffixIcon: suffixIcon,
            prefixIcon: prefixIcon,
            prefixIconColor: PrimaryColor,
            prefixStyle: const TextStyle(color: PrimaryColor),
            prefixIconConstraints:
            const BoxConstraints(minWidth: 40, maxHeight: 20),
            isDense: true,
            border: InputBorder.none,
            focusedBorder: focusedBorder ?? InputBorder.none,
            enabledBorder: enabledBorder ?? InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            contentPadding:
            const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
            labelText: labelText,
            labelStyle: hintStyle ?? Theme.of(context).textTheme.headlineSmall,
            hintText: hintText,
            hintStyle: hintStyle ?? Theme.of(context).textTheme.titleLarge,
            suffixText: suffixLabel,
            fillColor: fillColor),
        validator: validator);
  }
}

class SizeConfig {
  static MediaQueryData? mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  static double? defaultSize;
  static Orientation? orientation;

  void init(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    screenWidth = mediaQueryData?.size.width;
    screenHeight = mediaQueryData?.size.height;
    orientation = mediaQueryData?.orientation;

    defaultSize = orientation == Orientation.landscape ?
    screenWidth! * 0.024:
    screenHeight! * 0.024;

  }

}
