import 'package:flutter/material.dart';
import 'package:tonal_mobile_coding_challenge/features/components/metrics_widget.dart';
import 'package:tonal_mobile_coding_challenge/utilities/styles.dart';

class WeightDisplayScreen extends StatefulWidget {
  const WeightDisplayScreen({Key? key}) : super(key: key);

  @override
  _WeightDisplayScreenState createState() => _WeightDisplayScreenState();
}

class _WeightDisplayScreenState extends State<WeightDisplayScreen> {
  String _label = "Upper body";
  int _weight = 45;
  final TextEditingController _labelController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kLightBackground,
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: double.maxFinite,
              width: double.maxFinite,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MetricsWidget(
                    label: _label,
                    weight: _weight,
                  ),
                  // MetricsWidget(
                  //   label: "Core",
                  //   weight: 145,
                  // ),
                  // MetricsWidget(
                  //   label: "Lower Body",
                  //   weight: 315,
                  // ),
                  Flexible(
                    child: Row(
                      children: [
                        SizedBox(
                          width: 120,
                          child: TextField(
                            controller: _labelController,
                            onChanged: (String value) {
                              setState(() {
                                _labelController.text = value;
                              });
                            },
                          ),
                        ),
                        SizedBox(
                          width: 120,
                          child: TextField(
                            controller: _weightController,
                            onChanged: (String value) {
                              setState(() {
                                _weightController.text = value;
                              });
                            },
                          ),
                        ),
                        SizedBox(
                          width: 100,
                          child: TextButton(
                            child: const Text("Submit"),
                            onPressed: () {
                              setState(() {
                                _label = _labelController.text;
                                _weight = int.parse(_weightController.text);
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
