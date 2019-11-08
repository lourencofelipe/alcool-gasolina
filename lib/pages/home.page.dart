import 'package:alcool_gasolina/widgets/logo.widget.dart';
import 'package:alcool_gasolina/widgets/submit-form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class HomePage extends StatelessWidget {
  var _gasCtrl =
      new MoneyMaskedTextController(); // Create a new private money mask controller.
  var _alcCtrl = new MoneyMaskedTextController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context)
          .primaryColor, // Get the primary color (primarySwatch).
      body: ListView(
        children: <Widget>[
          Logo(),
          SubmitForm(
            alcCtrl: _alcCtrl,
            gastCtrl: _gasCtrl,
            submitFunc: () {},
            busy: false,
          ),
        ],
      ),
    );
  }
}
