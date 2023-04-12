import 'package:conversor_de_moedas/app/models/currency_model.dart';
import 'package:flutter/material.dart';

class CurrencyBox extends StatelessWidget {
  final List<CurrencyModel> items;
  final TextEditingController? controller;
  final CurrencyModel selectedItem;
  final void Function(CurrencyModel?) onChanged;

  const CurrencyBox(
      {super.key,
      required this.items,
      required this.controller,
      required this.onChanged,
      required this.selectedItem});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width - 60,
          child: Row(
            children: [
              Expanded(
                  flex: 1,
                  child: SizedBox(
                    height: 63,
                    child: DropdownButton<CurrencyModel>(
                        value: selectedItem,
                        iconEnabledColor: Colors.amber,
                        underline: Container(
                          height: 1,
                          color: Colors.amber,
                        ),
                        isExpanded: true,
                        items: items
                            .map((e) =>
                                DropdownMenuItem(value: e, child: Text(e.name)))
                            .toList(),
                        onChanged: onChanged),
                  )),
              const SizedBox(
                width: 10,
              ),
               Expanded(
                  flex: 2,
                  child: TextField(
                    controller: controller,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.amber)),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.amber)),
                    ),
                  ))
            ],
          ),
        ),
      ],
    );
  }
}
