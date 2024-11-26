import 'package:app_psi/other_page.dart';
import 'package:flutter/material.dart';
import 'package:app_psi/style_guide.dart';
// ignore: unused_import
import 'package:app_psi/home_user_screan.dart';

class EditarPerfil extends StatefulWidget {
  const EditarPerfil({super.key});

  @override
  State<EditarPerfil> createState() => _EditarPerfilState();
}

class _EditarPerfilState extends State<EditarPerfil> {
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
                        'Complete seu Cadastro',
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
                        'Nome e sobrenome',
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
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: SizedBox(
                      height: 50,
                      width: 360,
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Digite seu Sobrenome',
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
                            'Telefone de contato',
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
                            decoration: InputDecoration(
                              labelText: 'Digite o n° do seu telefone',
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
                                'Informe a sua data de nascimento',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: AppColors.appTextDark,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
// --> TextFormField Data Nascimento
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              height: 50,
                              width: 360,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Digite sua data de nascimento',
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
                                    'Informe o seu gênero',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: AppColors.appTextDark,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

// --> TextFormField Gênero
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              height: 50,
                              width: 360,
                              child: DropdownButtonFormField<String>(
                                decoration: InputDecoration(
                                  labelText: 'Gênero',
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
                                value: selectedGender,
                                items: <String>[
                                  'Masculino',
                                  'Feminino',
                                  'Transgênero',
                                  'Gênero Neutro',
                                  'Outro'
                                ].map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    selectedGender = newValue;
                                  });
                                },
                              ),
                            ),
                          ),
// --> Button 'Salvar'
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
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
