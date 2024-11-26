import 'package:app_psi/editar_perfil.dart';
import 'package:app_psi/home_screen.dart';
import 'package:app_psi/seguranca.dart';
import 'package:flutter/material.dart';
import 'package:app_psi/style_guide.dart';

class OtherPage extends StatefulWidget {
  const OtherPage({super.key});

  @override
  State<OtherPage> createState() => _OtherPage();
}

class _OtherPage extends State<OtherPage> {
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

// -->
  @override
  Widget build(BuildContext context) {
    return Scaffold(
// --> Background com gradiente (Padrão em todas as páginas)
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });

          if (index == 2) {
            showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return ListView(
                  padding: const EdgeInsets.all(16),
                  children: [
                    ListTile(
                      leading: const Icon(Icons.edit),
                      title: const Text("Editar Perfil"),
                      titleAlignment: ListTileTitleAlignment.center,
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const EditarPerfil(),
                          ),
                        );
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.security),
                      title: const Text("Segurança"),
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const Seguranca(),
                          ),
                        );
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.logout),
                      title: const Text("Sair"),
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const HomeScreen(),
                          ),
                        );
                      },
                    ),
                  ],
                );
              },
            );
          }
        },
        indicatorColor: AppColors.backgroundform,
        selectedIndex: currentPageIndex,
        destinations: <Widget>[
          const NavigationDestination(
            selectedIcon: Icon(
              Icons.home,
            ),
            icon: Icon(
              Icons.home_outlined,
            ),
            label: 'Home',
          ),
          const NavigationDestination(
            icon: Icon(
              Icons.notifications_sharp,
            ),
            label: 'Notifications',
          ),
          const NavigationDestination(
            icon: Icon(
              Icons.density_medium_rounded,
            ),
            label: 'Menu',
          ),
        ],
      ),

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
                              child: Text("Alterar foto"),
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
                height: 45,
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
                height: 45,
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
