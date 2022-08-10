import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:loja_quitanda/src/auth/components/custom_eleveted_buttom.dart';
import 'package:loja_quitanda/src/auth/components/custom_text_fild.dart';
import 'package:loja_quitanda/src/auth/sign_up_screen.dart';
import 'package:loja_quitanda/src/config/custom_colors.dart';

class SingInScreen extends StatelessWidget {
  const SingInScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: CustomColors.customSwatchColor,
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                    Text.rich(
                      TextSpan(
                        style: const TextStyle(
                          fontSize: 40
                        ),
                        children: [
                          const TextSpan(
                            text: "Loja do ",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                            )
                          ),
                          TextSpan(
                            text: "Menor",
                            style: TextStyle(
                              color: CustomColors.customContrastColor,
                              fontWeight: FontWeight.bold
                            )
                          )
                        ]
                        )
                    ),
                    
                    SizedBox(
                      height: 30,
                      child: DefaultTextStyle(
                        style: const TextStyle(
                          fontSize: 25,
                        ),
                        child: AnimatedTextKit(
                          repeatForever: true,
                          pause: Duration.zero,
                          animatedTexts: [
                            FadeAnimatedText('Olha eu!'),
                            FadeAnimatedText('Olha eu Chegando!'),
                            FadeAnimatedText('Venha ver!'),
                            FadeAnimatedText('Passando em sua porta!'),
                            FadeAnimatedText('Tempero do Menor'),
                          ]
                        ),
                      ),
                    )
                  ],
                ) 
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(45)
                  )
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const CustomTextFild(
                      icon: Icons.email,
                      label: "E-mail",
                    ),
                    const CustomTextFild(
                      icon: Icons.lock,
                      label: "Senha",
                      isSecret: true,
                    ),
                    CustomElevetedButton(label: "Entrar", onPressed: () {}),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {}, 
                        child: Text("Esqueceu a senha",
                        style: TextStyle(
                          color: CustomColors.customContrastColor
                        ),
                        )
                      ),
                    ),
                    Row(
                      children: const [
                        Expanded(
                          child: Divider(
                            color: Colors.grey,
                            thickness: 2,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Text("Ou"),
                        ),
                        Expanded(
                          child: Divider(
                            color: Colors.grey,
                            thickness: 2,
                          ),
                        ),
                      ],
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (c) {
                            return SignUpScreen();
                          })
                        );
                      }, 
                      child: const Text("Criar conta Agora")
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}