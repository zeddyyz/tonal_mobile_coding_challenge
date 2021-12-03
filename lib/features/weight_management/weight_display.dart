import 'package:flutter/material.dart';
import 'package:tonal_mobile_coding_challenge/features/components/metrics_widget.dart';
import 'package:tonal_mobile_coding_challenge/utilities/styles.dart';

class WeightDisplayScreen extends StatefulWidget {
  const WeightDisplayScreen({Key? key}) : super(key: key);

  @override
  _WeightDisplayScreenState createState() => _WeightDisplayScreenState();
}

class _WeightDisplayScreenState extends State<WeightDisplayScreen> {
  String _label = "Upper body", _labelInput = "";
  int _weight = 45, _weightInput = 0;
  final _labelController = TextEditingController();
  final _weightController = TextEditingController();

  void _clearText() {
    _labelController.clear();
    _weightController.clear();
  }

  @override
  Widget build(BuildContext context) {
    var kScreenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kLightBackground,
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: kSpacingSizedBox),
                MetricsWidget(
                  label: _label,
                  weight: _weight,
                ),
                const SizedBox(height: 40),
                SizedBox(
                  width: kScreenWidth * 0.8,
                  child: TextField(
                    controller: _labelController,
                    decoration: const InputDecoration(
                        labelText: "Label", border: OutlineInputBorder()),
                    onChanged: (String value) {
                      setState(() {
                        _labelInput = value;
                      });
                    },
                  ),
                ),
                const SizedBox(height: kSpacingSizedBox),
                SizedBox(
                  width: kScreenWidth * 0.8,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    controller: _weightController,
                    decoration: const InputDecoration(
                        labelText: "Weight", border: OutlineInputBorder()),
                    onChanged: (String value) {
                      setState(() {
                        _weightInput = int.parse(value);
                      });
                    },
                  ),
                ),
                const SizedBox(height: kSpacingSizedBox),
                SizedBox(
                  width: kScreenWidth * 0.8,
                  child: TextButton(
                    child: const Text(
                      "Submit",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green),
                    ),
                    onPressed: () {
                      setState(() {
                        _label = _labelInput;
                        _weight = _weightInput;
                      });
                      FocusScope.of(context).unfocus();
                      _clearText();
                    },
                  ),
                ),
                SizedBox(
                  width: kScreenWidth * 0.8,
                  child: TextButton(
                    child: const Text(
                      "Undo",
                      style: TextStyle(color: Colors.black),
                    ),
                    onPressed: () {
                      setState(() {
                        _label = "Upper Body";
                        _weight = 45;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
