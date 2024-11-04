import 'package:flutter/material.dart';

class Currency extends StatefulWidget {
  @override
  State<Currency> createState() => _CurrencyState();
}

class _CurrencyState extends State<Currency> {
  TextEditingController amount_c = TextEditingController();

  List<String> currencies = ["MAD", "USD", "EUR"];
  String from = "MAD";
  String to = "MAD";
  String result = "0";
  List<List<double>> rates = [
    // m u R
    /*m*/ [1, 0.10, 0.094],
    /*u*/ [9.89, 1, 0.92],
    /*e*/ [10.69, 1.08, 1],
  ];
  List<String> symbols = ["Dh", "\$", "€"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 252, 252, 252),
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Center(child: Text("Currency converter")),
      ),
      body: Column(
        children: [
          Container(
              alignment: Alignment.center,
              child: Image.asset("images/currency.png")),
          Container(
            alignment: Alignment.center,
            child: TextField(
              controller: amount_c,
              keyboardType: TextInputType.number,
              style: TextStyle(fontSize: 30, color: Colors.green),
              decoration: InputDecoration(
                  labelText: "Amount",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DropdownButton(
                  value: from,
                  items: currencies.map((String value) {
                    return DropdownMenuItem<String>(
                        value: value, child: Text(value));
                  }).toList(),
                  onChanged: (newValue) {
                    setState(() {
                      from = newValue!;
                    });
                  }),
              Icon(
                Icons.change_circle,
                size: 30,
              ),
              DropdownButton(
                  value: to,
                  items: currencies.map((String value) {
                    return DropdownMenuItem<String>(
                        value: value, child: Text(value));
                  }).toList(),
                  onChanged: (newValue) {
                    setState(() {
                      to = newValue!;
                    });
                  }),
            ],
          ),
          Container(
            alignment: Alignment.center,
            child: ElevatedButton(
                onPressed: () {
                  double rslt = int.parse(amount_c.text) *
                      rates[currencies.indexOf(from)][currencies.indexOf(to)];
                  setState(() {
                    result = rslt.toStringAsFixed(2) +
                        " " +
                        symbols[currencies.indexOf(to)];
                  });
                },
                child: Text("converter")),
          ),
          Container(alignment: Alignment.center, child: Text(result)),
        ],
      ),
    );
  }
}
