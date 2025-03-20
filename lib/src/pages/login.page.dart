import 'package:app_fluxolivre/src/widget/input.widget.dart';
import 'package:app_fluxolivre/src/widget/redirect.widget.dart';
import 'package:flutter/material.dart';

import '../widget/button.widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/img_fundologin.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(26.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 200,
                width: 200,
                child: Image(
                  image: AssetImage('assets/images/et.png'),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              InputWidget(
                icon: Icons.person_outline,
                hintText: 'Usuário:',
                obscureText: false,
              ),
              const SizedBox(
                height: 30,
              ),
              InputWidget(
                icon: Icons.lock_outlined,
                hintText: 'Senha:',
                obscureText: true,
              ),
              const SizedBox(
                height: 30,
              ),
              ButtonWidget(
                route: '/home',
                text: 'Login',
              ),
              const SizedBox(
                height: 15,
              ),
              RedirectWidget(
                route: '/registration',
                text: 'Novo usuário',
              )
            ],
          ),
        ),
      ),
    );
  }
}
