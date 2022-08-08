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
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(45)
                )
              ),
              child: SingleChildScrollView(
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
                    SizedBox(
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(45)
                          )
                        ),
                        onPressed: () {}, 
                        child: const Text("Entrar")
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {}, 
                        child: const Text("Esqueceu a senha",
                        style: TextStyle(
                          color: Colors.red
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
                      onPressed: () {}, 
                      child: const Text("Criar conta Agora")
                    )
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