import 'package:flutter/material.dart';
import 'package:loja_quitanda/src/auth/components/custom_text_fild.dart';

class SingInScreen extends StatelessWidget {
  const SingInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Column(
        children: [
          Expanded(child: Container(color: Colors.blue,),),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 32,
                vertical: 40,
              ),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(45)
                )
              ),
              child: SingleChildScrollView(
                child: Column(
                  children:  const [
                    CustomTextFild(
                      icon: Icons.email,
                      label: "E-mail",
                    ),
                    CustomTextFild(
                      icon: Icons.lock,
                      label: "Senha",
                      isSecret: true,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}