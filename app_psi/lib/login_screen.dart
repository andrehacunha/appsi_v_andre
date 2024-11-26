// ignore: unused_import
import 'package:app_psi/home_user_screan.dart';
import 'package:app_psi/other_page.dart';
import 'package:app_psi/style_guide.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
// --> Background com gradiente (Padrão em todas as páginas)
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.center,
            colors: [
              AppColors.backgroundColor.withOpacity(0.0),
              AppColors.backgroundColor.withOpacity(0.5),
            ],
          ),
        ),
// --> Text 'Informe E-mail e Senha para acessar'
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Informe E-mail e Senha para acessar',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
// --> espaço entre Text 'Informe E-mail e Senha para acessar' e TextFormField
              SizedBox(height: 50),
// --> TextFormField Email
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: SizedBox(
                      height: 40,
                      width: 260,
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Didite seu E-mail',
                          labelStyle: TextStyle(
                            color: AppColors.appTextBlue,
                            fontSize: 14,
                          ),
                          filled: true,
                          fillColor: AppColors.backgroundform,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                  ),
// --> TextFormField Senha
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: SizedBox(
                      height: 40,
                      width: 260,
                      child: TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Digite sua Senha',
                          labelStyle: TextStyle(
                            color: AppColors.appTextBlue,
                            fontSize: 14,
                          ),
                          filled: true,
                          fillColor: AppColors.backgroundform,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
// --> Checkbox 'Lembrar minha senha'
              Column(
                children: [
                  SizedBox(
                    width: 260,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(
                          checkColor: AppColors.appTextWhite,
                          value: false,
                          onChanged: (bool? value) {},
                        ),
                        const Text(
                          'Lembrar minha senha',
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
// --> Button 'Entrar'
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: SizedBox(
                  width: 260,
                  height: 45,
                  child: ElevatedButton(
                    iconAlignment: IconAlignment.start,
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const OtherPage(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.buttonlogin,
                      side: const BorderSide(
                        color: AppColors.BorderButtonBlue,
                        width: 1,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text(
                      'Entrar',
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.appTextWhite,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
