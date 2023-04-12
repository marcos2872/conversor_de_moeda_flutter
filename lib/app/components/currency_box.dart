import 'package:flutter/material.dart';

class CurrencyBox extends StatelessWidget {
  const CurrencyBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width - 40,
          child: Row(
            children: [
              Expanded(
                  flex: 1,
                  child: SizedBox(
                    height: 63,
                    child: DropdownButton(
                        underline: Container(
                          height: 1,
                          color: Colors.amber,
                        ),
                        isExpanded: true,
                        value: 'Real',
                        items: const [
                          DropdownMenuItem(
                            value: 'Real',
                            child: Text('Real'),
                          ),
                          DropdownMenuItem(
                            value: 'Dolar',
                            child: Text('Dolar'),
                          )
                        ],
                        onChanged: (value) {}),
                  )),
              const SizedBox(
                width: 10,
              ),
              const Expanded(
                  flex: 2,
                  child: TextField(
                    decoration: InputDecoration(
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
