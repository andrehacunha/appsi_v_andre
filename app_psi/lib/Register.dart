import 'package:app_psi/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:app_psi/style_guide.dart';
// ignore: unused_import
import 'package:app_psi/home_user_screan.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  String? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
// --> Background com gradiente (Padrão em todas as páginas)
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

// --> Text 'Realize seu Cadastro'
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
                        'Realize seu Cadastro',
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
                        'E-mail',
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
                          labelText: 'Digite seu Nome',
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
                  SizedBox(
                    width: 360,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 4),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            'Insira sua Senha',
                            style: TextStyle(
                              fontSize: 14,
                              color: AppColors.appTextDark,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
// --> TextFormField Telefone
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: 50,
                          width: 360,
                          child: TextFormField(
                            obscureText: true,
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
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: 'Confirme sua senha',
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

// --> Divider
                      SizedBox(height: 16),
// --> Divider
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Ou acesse com',
                            style: TextStyle(
                              fontSize: 12,
                              color: AppColors.appTextDark,
                            ),
                          ),
                        ],
                      ),
// --> Icon Button Google
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {},
                          child: Image.asset('assets/images/google_logo.png'),
                        ),
                      ),
// --> Button 'Salvar'
                      Padding(
                        padding: const EdgeInsets.all(50.0),
                        child: SizedBox(
                          width: 260,
                          height: 50,
                          child: ElevatedButton(
                            iconAlignment: IconAlignment.start,
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const LoginScreen(),
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
            ],
          ),
        ),
      ),
    );
  }
}
