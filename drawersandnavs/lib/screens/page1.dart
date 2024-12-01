import 'package:drawersandnavs/drawer/customdrawer.dart';
import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _taille = TextEditingController();
  final TextEditingController _poid = TextEditingController();
  double? _imc;
  void calculeImc() {
    if (_formKey.currentState!.validate()) {
      double height = double.parse(_taille.text) / 100;
      double weight = double.parse(_poid.text);
      setState(() {
        _imc = weight / (height * height);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("calcule IMC")),
      drawer: CustomDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: _taille,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(labelText: "taille en cm"),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'veuillez saisir une taille correcte';
                    }
                  },
                ),
                TextFormField(
                  controller: _poid,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(labelText: "poid en kg"),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'veuillez saisir un poids correcte';
                    }
                  },
                ),
                SizedBox(height: 20),
                ElevatedButton(
                    onPressed: calculeImc, child: Text("Calculer imc")),
                if (_imc != null)
                  Text(
                      "votre indice de masse corporelle est de : ${_imc!.toStringAsFixed(2)}")
              ],
            )),
      ),
    );
  }
}
