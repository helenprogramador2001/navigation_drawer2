import 'package:flutter/material.dart';
//import 'package:navigation_drawer/pages/pagina2.dart';
import 'inicio.dart';
import 'pagina1.dart';
import 'pagina2.dart';
import 'pagina3.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        title: Text('Navigation Drawer'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.redAccent,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'ITCA-FEPADE',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              //
              leading: Image.asset(
                'images/casa.png',
                width: 24,
                height: 24,
              ),
              title: Text(
                'Home',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              onTap: () {
                //
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Inicio()),
                );
              },
            ),
            Divider(color: Colors.black), // Divisor
            ListTile(
              leading: Image.asset(
                'images/www.png',
                width: 24,
                height: 24,
              ),
              title: Text(
                'Pagina 1',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              onTap: () {
                // Agregar navegación a la Pagina 1
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Pagina1()),
                );
              },
            ),
            Divider(color: Colors.black), // Divisor
            ListTile(
              leading: Image.asset(
                'images/sitioweb.png',
                width: 24,
                height: 24,
              ),
              title: Text(
                'Pagina 2',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              onTap: () {
                // Agregar navegación a la Pagina 2
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Pagina2()),
                );
              },
            ),
            Divider(color: Colors.purple), // Divisor
            ListTile(
              leading: Image.asset(
                'images/pagina3.png',
                width: 24,
                height: 24,
              ),
              title: Text(
                'Pagina 3',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Pagina3()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
