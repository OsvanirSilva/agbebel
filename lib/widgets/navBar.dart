import 'package:flutter/material.dart';

// Paginas
import 'package:agbebel/view/PrincipalView.dart';

class navBar extends StatefulWidget {
  const navBar({super.key});

  @override
  State<navBar> createState() => _navBarState();
}

class _navBarState extends State<navBar> {
  int _selectedIndex = 0;

  final _screens = [
    const PrincipalView(), // Pagina vendas,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screens[_selectedIndex],
      bottomNavigationBar: SizedBox(
        height: 110,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: const Color(0xFF7165d6),
          unselectedItemColor: Colors.black26,
          selectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.point_of_sale),
              label: "Agendar",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Cliente",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.app_registration_sharp),
              label: "Serviços",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Funcionário",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: "Opções",
            )
          ],
        ),
      ),
    );
  }
}
