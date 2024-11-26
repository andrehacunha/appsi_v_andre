import 'package:flutter/material.dart';
import 'package:app_psi/style_guide.dart';

class HomeUserScrean extends StatefulWidget {
  const HomeUserScrean({super.key});

  @override
  State<HomeUserScrean> createState() => _HomeUserScreen();
}

class _HomeUserScreen extends State<HomeUserScrean> {
  double _currentSliderValue = 1;
  int currentPageIndex = 0;

// --> Transição Slider
  Color getSliderColor() {
    if (_currentSliderValue < 0.5) {
// Transição do vermelho para o azul
      return Color.lerp(
        Colors.red,
        Colors.blue,
        _currentSliderValue * 1,
      )!;
    } else {
// Transição do azul para o verde
      return Color.lerp(
        Colors.blue,
        Colors.green,
        (_currentSliderValue - 0.5) * 1,
      )!;
    }
  }

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
// --> Circle Avatar e opções
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 300, bottom: 50),
                child: Column(
                  children: [
                    SizedBox(
                      child: CircleAvatar(
                        maxRadius: 25,
                        backgroundColor: AppColors.buttonlogin,
                        backgroundImage:
                            AssetImage('assets/images/profile_picture.jpg'),
                        child: PopupMenuButton(
                          onSelected: (value) {},
                          itemBuilder: (context) => [
                            PopupMenuItem(
                              //value: "Editar Perfil",
                              child: Text("Editar Perfil"),
                            ),
                            PopupMenuItem(
                              //value: "Segurança",
                              child: Text("Segurança"),
                            ),
                            PopupMenuItem(
                              //value: "Tags",
                              child: Text("Tags"),
                            ),
                            PopupMenuItem(
                              //value: "Sair",
                              child: Text("Sair"),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
// --> Emojis
              SizedBox(
                width: 300,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      '😢', // Muito Triste
                      style: TextStyle(
                        fontSize: 30,
                        color: AppColors.appTextDark,
                      ),
                    ),
                    Text(
                      '😟', // Triste
                      style: TextStyle(
                        fontSize: 30,
                        color: AppColors.appTextDark,
                      ),
                    ),
                    Text(
                      '😐', // Neutro
                      style: TextStyle(
                        fontSize: 30,
                        color: AppColors.appTextDark,
                      ),
                    ),
                    Text(
                      '🙂', // Feliz
                      style: TextStyle(
                        fontSize: 30,
                        color: AppColors.appTextDark,
                      ),
                    ),
                    Text(
                      '😄', // Muito Feliz
                      style: TextStyle(
                        fontSize: 30,
                        color: AppColors.appTextDark,
                      ),
                    ),
                  ],
                ),
              ),
// --> Slider
              SizedBox(
                width: 300,
                child: Slider(
                  value: _currentSliderValue,
                  thumbColor: AppColors.appTextBlue,
                  autofocus: true,
                  secondaryActiveColor: AppColors.BorderButtonBlue,
                  onChanged: (newValue) {
                    setState(
                      () {
                        _currentSliderValue = newValue;
                      },
                    );
                  },
                  activeColor: getSliderColor(),
                  inactiveColor: Colors.grey[300],
                ),
              ),
// --> Text 'Sua Próxima sessão'
              Padding(
                padding: const EdgeInsets.only(top: 64),
                child: Column(
                  children: [
                    SizedBox(
                      width: 300,
                      child: Text(
                        'Sua próxima sessão',
                        style: TextStyle(
                          color: AppColors.appTextDark,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
// --> Card 'Sua próxima sessão'
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: SizedBox(
                  height: 80,
                  width: 300,
                  child: Card.outlined(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                      side: BorderSide(
                        color: AppColors.appTextBlue,
                        width: 1,
                      ),
                    ),
                    color: AppColors.backgroundTransparent,
                    child: ListTile(
                      textColor: AppColors.appTextDark,
                      title: Text('Não há sessões cadastradas'),
                      titleTextStyle: TextStyle(
                        color: AppColors.appTextDark,
                        fontSize: 16,
                      ),
                      subtitle: Text('Configure sua agenda'),
                      subtitleTextStyle: TextStyle(
                        color: AppColors.appTextDark,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ),
// --> Text 'Meu terapeuta'
              SizedBox(
                width: 300,
                child: Text(
                  'Meu terapeuta',
                  style: TextStyle(
                      color: AppColors.appTextDark,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
              ),
// --> Card 'Meu terapeuta'
              SizedBox(
                height: 80,
                width: 300,
                child: Card.outlined(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: BorderSide(
                      color: AppColors.appTextBlue,
                      width: 1,
                    ),
                  ),
                  color: AppColors.backgroundTransparent,
                  child: ListTile(
                    title: Text('Não há profissional cadastrado'),
                    titleTextStyle: TextStyle(
                      color: AppColors.appTextDark,
                      fontSize: 16,
                    ),
                    subtitle: Text('Adicione um profissional'),
                    subtitleTextStyle: TextStyle(
                      color: AppColors.appTextDark,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
// --> Espaço entre Cards e Button
              SizedBox(height: 64),
// --> Button 'Meu Divâ'
              SizedBox(
                width: 260,
                child: ElevatedButton(
                  onPressed: () {},
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.person,
                        color: AppColors.appTextWhite,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Meu Divã',
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColors.appTextWhite,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
// --> Espaço entre Buttons
              SizedBox(height: 8),
// --> Button 'Buscar Profissional'
              SizedBox(
                width: 260,
                child: ElevatedButton(
                  onPressed: () {},
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.search,
                        color: AppColors.appTextWhite,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Buscar Profissional',
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColors.appTextWhite,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
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
