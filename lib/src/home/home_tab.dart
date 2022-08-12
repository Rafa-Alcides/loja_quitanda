import 'package:flutter/material.dart';
import 'package:loja_quitanda/src/config/custom_colors.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text.rich(
          TextSpan(
            style: TextStyle(fontSize: 30),
            children: [
              TextSpan(
                text: "Loja do ", style: TextStyle(
                  color: CustomColors.customSwatchColor
                )
              ),
              TextSpan(
                text: "Menor", style: TextStyle(
                  color: CustomColors.customContrastColor
                )
              )
            ]
          )
        ),
        actions: [IconButton(
            onPressed: () {}, 
            icon:  Icon(Icons.shopping_cart, 
            color: CustomColors.customSwatchColor,) 
          )
        ],
      ),
    );
  }
}