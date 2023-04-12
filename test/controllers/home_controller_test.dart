import 'package:conversor_de_moedas/app/controllers/home_controller.dart';
import 'package:conversor_de_moedas/app/models/currency_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  TextEditingController toText = TextEditingController();
  TextEditingController fromText = TextEditingController();
  final homeController = HomeController(toText = toText, fromText = fromText);

  group('testando as conversões', () {
    test('deve converter de real para dolar', () {
      toText.text = '2.0';
      homeController.toCurrency =
          CurrencyModel(name: 'Real', real: 1.0, dolar: 0.20, euro: 0.18);
      homeController.fromCurrency =
          CurrencyModel(name: 'Dolar', real: 5.01, dolar: 1.0, euro: 0.92);
      homeController.convert();
      expect(fromText.text, '0.40');
    });
    test('deve converter de real para euro', () {
      toText.text = '2.0';
      homeController.toCurrency =
          CurrencyModel(name: 'Real', real: 1.0, dolar: 0.20, euro: 0.18);
      homeController.fromCurrency =
          CurrencyModel(name: 'Euro', real: 5.46, dolar: 1.09, euro: 1.0);
      homeController.convert();
      expect(fromText.text, '0.36');
    });
    test('deve converter de dolar para real', () {
      toText.text = '2.0';
      homeController.toCurrency =
          CurrencyModel(name: 'Dolar', real: 5.01, dolar: 1.0, euro: 0.92);
      homeController.fromCurrency =
          CurrencyModel(name: 'Real', real: 1.0, dolar: 0.20, euro: 0.18);
      homeController.convert();
      expect(fromText.text, '10.02');
    });
    test('deve converter de dolar para euro', () {
      toText.text = '2.0';
      homeController.toCurrency =
          CurrencyModel(name: 'Dolar', real: 5.01, dolar: 1.0, euro: 0.92);
      homeController.fromCurrency =
         CurrencyModel(name: 'Euro', real: 5.46, dolar: 1.09, euro: 1.0);
      homeController.convert();
      expect(fromText.text, '1.84');
    });
    test('deve converter de euro para real', () {
      toText.text = '2.0';
      homeController.toCurrency =
         CurrencyModel(name: 'Euro', real: 5.46, dolar: 1.09, euro: 1.0);
      homeController.fromCurrency =
          CurrencyModel(name: 'Real', real: 1.0, dolar: 0.20, euro: 0.18);
      homeController.convert();
      expect(fromText.text, '10.92');
    });
    test('deve converter de euro para dolar', () {
      toText.text = '2.0';
      homeController.toCurrency =
         CurrencyModel(name: 'Euro', real: 5.46, dolar: 1.09, euro: 1.0);
      homeController.fromCurrency =
          CurrencyModel(name: 'Dolar', real: 5.01, dolar: 1.0, euro: 0.92);
      homeController.convert();
      expect(fromText.text, '2.18');
    });
  });
}
