import 'package:conversor_de_moedas/app/components/currency_box.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, top: 100),
          child: Column(
            children: [
              Image.asset(
                'assets/logo.png',
                width: 150,
                height: 150,
              ),
              const SizedBox(height: 50),
              const CurrencyBox(),
              const SizedBox(
                height: 10,
              ),
              const CurrencyBox(),
              const SizedBox(height: 50),
              TextButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.amber[700])),
                  onPressed: () {},
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: Text(
                      'Converter',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
