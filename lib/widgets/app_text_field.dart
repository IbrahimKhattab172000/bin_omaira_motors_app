import 'package:bin_omaira_motors/helpers/colors.dart';
import 'package:bin_omaira_motors/helpers/dimentions.dart';
import 'package:bin_omaira_motors/helpers/utils.dart';
import 'package:bin_omaira_motors/widgets/app_text.dart';
import 'package:flutter/material.dart';

class AppTextField extends StatefulWidget {
  const AppTextField({
    super.key,
    this.hint,
    this.validator,
    this.textInputAction = TextInputAction.next,
    this.inputType = TextInputType.text,
    this.onTap,
    this.trailing,
    this.leading,
    this.label,
    this.maxLines = 1,
    this.borderColor = Colors.grey,
    this.fillColor = AppColors.black,
    this.onSaved,
    this.onChanged,
    this.controller,
    this.secure = false,
    this.hintColor,
    this.transperent,
    this.inputDecorationLable,
    this.textColor,
    this.cursorColor,
  });

  final String? hint;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final TextInputAction textInputAction;
  final TextInputType inputType;
  final VoidCallback? onTap;
  final Widget? trailing;
  final Widget? leading;
  final String? label;
  final int maxLines;
  final Color borderColor;
  final Color fillColor;
  final bool secure;
  final void Function(String?)? onSaved;
  final TextEditingController? controller;
  final Color? hintColor;
  final bool? transperent;
  final String? inputDecorationLable;
  final Color? textColor;
  final Color? cursorColor;

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.label != null)
          Padding(
            padding: EdgeInsets.only(bottom: 8.height),
            child: AppText(
              title: widget.label!,
              color: AppColors.black,
              fontWeight: FontWeight.w700,
              fontSize: 16,
            ),
          ),
        InkWell(
          radius: _radius,
          onTap: widget.onTap != null
              ? () {
                  Utils.dismissKeyboard();
                  widget.onTap!();
                }
              : null,
          borderRadius: BorderRadius.circular(_radius),
          child: AbsorbPointer(
            absorbing: widget.onTap != null,
            child: TextFormField(
              style: TextStyle(
                color: widget.textColor ?? AppColors.white,
              ),
              controller: widget.controller,
              cursorColor: widget.cursorColor ?? AppColors.white,
              // cursorHeight: double.infinity,
              validator: widget.validator,
              onChanged: widget.onChanged,
              textInputAction: TextInputAction.done,
              keyboardType: widget.inputType,
              maxLines: widget.maxLines,
              onSaved: widget.onSaved,
              obscureText: widget.secure,

              decoration: InputDecoration(
                labelText: widget.inputDecorationLable,
                labelStyle: const TextStyle(color: AppColors.grey),
                hintText: widget.hint ?? '',
                fillColor: widget.fillColor,
                filled: true,
                hintStyle: TextStyle(
                  color: widget.hintColor ?? AppColors.grey,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
                suffixIcon: widget.trailing,
                prefixIcon: widget.leading,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 12.width,
                  vertical: 20.height,
                ),
                border: _border(
                  (widget.transperent ?? false)
                      ? Colors.transparent
                      : widget.borderColor,
                ),
                enabledBorder: _border(
                  (widget.transperent ?? false)
                      ? Colors.transparent
                      : widget.borderColor,
                ),
                focusedBorder: _border(
                  (widget.transperent ?? false)
                      ? Colors.transparent
                      : AppColors.grey,
                  width: 1,
                ),
                errorBorder: _border((widget.transperent ?? false)
                    ? Colors.transparent
                    : AppColors.red),
                focusedErrorBorder: _border(
                  (widget.transperent ?? false)
                      ? Colors.transparent
                      : AppColors.grey,
                  width: 11,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  InputBorder _border(Color color, {double width = 1}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(_radius),
      borderSide: BorderSide(
        color: color,
        width: width,
      ),
    );
  }

  double get _radius => widget.maxLines > 1 ? 15 : 20;
}
