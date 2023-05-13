import 'package:flutter/material.dart';
import 'empresa.dart';
import 'servicos.dart';
import 'contato.dart';
import 'clientes.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ATM Consultoria')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 30),
              child: Image.asset('images/logo.png'),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 30, left: 50, right: 50),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Empresa()));
                      },
                      child: Image.asset('images/menu_empresa.png'),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Servicos()));
                      },
                      child: Image.asset('images/menu_servico.png'),
                    )
                  ]),
            ),
            Container(
              margin: EdgeInsets.only(left: 50, right: 50),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => clientes()));
                      },
                      child: Image.asset('images/menu_cliente.png'),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Contato()));
                      },
                      child: Image.asset('images/menu_contato.png'),
                    )
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
