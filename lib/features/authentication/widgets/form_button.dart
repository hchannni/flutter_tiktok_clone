import 'package:flutter/material.dart';
import 'package:flutter_tiktok_clone/constants/sizes.dart';

class FormButton extends StatelessWidget {
  const FormButton({
    super.key,
    required this.disabled,
  });

  final bool disabled;

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 1,
      child: AnimatedContainer(
        padding: EdgeInsets.symmetric(vertical: Sizes.size16),
        decoration: BoxDecoration(
          color:
              disabled ? Colors.grey.shade300 : Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(Sizes.size8),
        ),
        duration: Duration(milliseconds: 100),
        child: AnimatedDefaultTextStyle(
          duration: Duration(milliseconds: 100),
          style: TextStyle(
            color: disabled ? Colors.grey.shade500 : Colors.white,
            fontWeight: FontWeight.w600,
          ),
          child: Text(
            'Next',
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
