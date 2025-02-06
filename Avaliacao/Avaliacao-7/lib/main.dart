import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navegador com Drawer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PaginaInicialComContador(),
    );
  }
}

class PaginaInicialComContador extends StatefulWidget {
  @override
  _PaginaInicialComContadorState createState() => _PaginaInicialComContadorState();
}

class _PaginaInicialComContadorState extends State<PaginaInicialComContador> {
  int _contador = 0;

  void _incrementarContador() {
    setState(() {
      _contador++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página Inicial'),
      ),
      drawer: NavegacaoDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Contador de Enzo Gabriel e Jonas Freitas:',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              '$_contador',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementarContador,
        child: Icon(Icons.add),
      ),
    );
  }
}

class Configuracoes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Configurações'),
      ),
      drawer: NavegacaoDrawer(),
      body: Center(
        child: Text(
          'Aqui estão as configurações.',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}

class Sobre extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sobre'),
      ),
      drawer: NavegacaoDrawer(),
      body: Center(
        child: Text(
          'Este é um exemplo de navegação com Drawer.',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}

class NavegacaoDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Menu de Navegação',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Página Inicial'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PaginaInicialComContador()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Configurações'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Configuracoes()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('Sobre'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Sobre()),
              );
            },
          ),
        ],
      ),
    );
  }
}
