import 'package:flutter/material.dart';
import 'package:loja_quitanda/src/auth/components/custom_eleveted_buttom.dart';
import 'package:loja_quitanda/src/auth/components/custom_text_fild.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../config/custom_colors.dart';

class SignUpScreen extends StatelessWidget {
   SignUpScreen({super.key});

  final maskCpf = MaskTextInputFormatter(
    mask: '###.###.###-##'  ,
    filter: { "#": RegExp(r'[0-9]') }
  );

  final maskPhone = MaskTextInputFormatter(
    mask: "(##) # ####-####",
    filter: { "#": RegExp(r'[0-9]') }
  );

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: CustomColors.customSwatchColor,
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Stack(
            children: [
              Column(
                children: [
                  const Expanded(
                    child: Center(
                      child: Text("Cadastro", style: TextStyle(
                        color: Colors.white,
                        fontSize: 35),),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(45),
                      )
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children:  [
                        const CustomTextFild(icon: Icons.email, label: "E-mail"),
                        const CustomTextFild(icon: Icons.lock, label: "Senha", isSecret: true),
                        const CustomTextFild(icon: Icons.person, label: "Nome"),
                        CustomTextFild(icon: Icons.phone, label: "Celular", inputFormatters: [maskPhone]),
                        CustomTextFild(icon: Icons.file_copy, label: "CPF", inputFormatters: [maskCpf]),
                        CustomElevetedButton(label: "Cadastrar", onPressed: () {},)
                      ],
                    ),
                  )
                ],
              ),

              Positioned(
                left: 10,
                top: 10,
                child: SafeArea(
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    }, 
                    icon: const Icon(Icons.arrow_back_ios, color: Colors.white,)
                  )
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}