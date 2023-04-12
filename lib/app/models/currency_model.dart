class CurrencyModel {
  final String name;
  final double real;
  final double dolar;
  final double euro;

  CurrencyModel(
      {this.name = '', this.real = 0.0, this.dolar = 0.0, this.euro = 0.0});

  static List<CurrencyModel> getCurrencies() {
    return <CurrencyModel>[
      CurrencyModel(name: 'Real', real: 1.0, dolar: 0.20, euro: 0.18),
      CurrencyModel(name: 'Dolar', real: 5.01, dolar: 1.0, euro: 0.92),
      CurrencyModel(name: 'Euro', real: 5.46, dolar: 1.09, euro: 1.0),
    ];
  }
}
