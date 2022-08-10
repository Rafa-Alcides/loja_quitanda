import 'package:flutter/material.dart';

class CustomElevetedButton extends StatelessWidget {

  final String label;
  final Function()? onPressed;

  const CustomElevetedButton({super.key, required this.label, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(45)
          ),
        ),
        onPressed: onPressed, 
        child: Text(label)
      ),
    );
  }
}