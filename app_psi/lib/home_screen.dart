import 'package:app_psi/Register.dart';
import 'package:app_psi/login_screen.dart';
import 'package:app_psi/style_guide.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
// --> Espaço inicío do 'Appsi'
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
            ),
// --> Text 'Appsi'
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    text: const TextSpan(
                      text: 'Ap',
                      style: TextStyle(
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                          color: AppColors.appTextDark),
                      children: [
                        TextSpan(
                          text: 'psi',
                          style: TextStyle(
                            fontSize: 60,
                            fontWeight: FontWeight.bold,
                            color: AppColors.appTextBlue,
                          ),
                        ),
                      ],
                    ),
                  ),
// --> Espaço Title 'Appsi' e Text 'O pensamento é o ensaio da ação'
                  const SizedBox(height: 150),
// --> Text 'O pensamento é o ensaio da ação'
                  const Text(
                    '"O pensamento é o ensaio da ação."',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.appTextDark,
                    ),
                  ),
// --> Espaço entre Text 'O pensamento é o ensaio da ação' e Button 'Login'
                  const SizedBox(height: 200),
// --> Button 'Login'
                  SizedBox(
                    width: 260,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
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
                        'Login',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
// --> Espaço entre Button 'Login' e 'Cadastrar'
                  const SizedBox(height: 8),
// --> Button 'Cadastrar'
                  SizedBox(
                    width: 260,
                    height: 45,
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => Register(),
                          ),
                        );
                      },
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(
                          color: AppColors.BorderButtonTransparente,
                          width: 1,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: const Text(
                        'Cadastrar',
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColors.appTextBlue,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //
          ],
        ),
      ),
    );
  }
}
