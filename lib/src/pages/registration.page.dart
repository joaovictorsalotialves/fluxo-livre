import 'package:app_fluxolivre/src/widget/button.widget.dart';
import 'package:app_fluxolivre/src/widget/input.widget.dart';
import 'package:app_fluxolivre/src/widget/redirect.widget.dart';
import 'package:flutter/material.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

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
              const Text(
                'Cadastrar-se',
                style: TextStyle(
                  fontSize: 48,
                  color: Color(0xFFFFFFFF),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              InputWidget(
                icon: Icons.person_outline,
                hintText: 'Nome:',
                obscureText: false,
              ),
              const SizedBox(
                height: 30,
              ),
              InputWidget(
                icon: Icons.mail_outline,
                hintText: 'E-mail:',
                obscureText: false,
              ),
              const SizedBox(
                height: 30,
              ),
              InputWidget(
                icon: Icons.numbers_outlined,
                hintText: 'CPF:',
                obscureText: false,
              ),
              const SizedBox(
                height: 30,
              ),
              InputWidget(
                icon: Icons.lock_outlined,
                hintText: 'Senha:',
                obscureText: false,
              ),
              const SizedBox(
                height: 30,
              ),
              InputWidget(
                icon: Icons.lock_outlined,
                hintText: 'Confirmação da Senha:',
                obscureText: false,
              ),
              const SizedBox(
                height: 30,
              ),
              ButtonWidget(
                route: '/home',
                text: 'Cadastrar',
              ),
              const SizedBox(
                height: 15,
              ),
              RedirectWidget(
                route: '/',
                text: 'Já possui cadastro',
              )
            ],
          ),
        ),
      ),
    );
  }
}
