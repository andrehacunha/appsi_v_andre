import 'package:flutter/material.dart';
import 'package:app_psi/style_guide.dart';
import 'package:app_psi/other_page.dart';

class Seguranca extends StatefulWidget {
  const Seguranca({super.key});

  @override
  State<Seguranca> createState() => _SegurancaState();
}

class _SegurancaState extends State<Seguranca> {
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

// --> Text 'Complete seu Cadastro'
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 360,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        'Alterar senha',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
// --> espaço
              SizedBox(height: 12),
// --> espaço
              SizedBox(
                width: 360,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        'Informe sua nova senha',
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColors.appTextDark,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

// --> TextFormField Nome e Sobrenome
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: SizedBox(
                      height: 50,
                      width: 360,
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Digite sua senha',
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
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: SizedBox(
                      height: 50,
                      width: 360,
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Repita sua senha',
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
// --> espaço
                  SizedBox(height: 12),
// --> espaço

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
                          'Salvar',
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
            ],
          ),
        ),
      ),
    );
  }
}
