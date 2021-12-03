import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tonal_mobile_coding_challenge/utilities/styles.dart';

class MetricsWidget extends StatelessWidget {
  final String label;
  final int weight;

  const MetricsWidget({Key? key, required this.label, required this.weight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: bubbleBoxDecoration,
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      height: bubbleDiameter,
      width: bubbleDiameter,
      child: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: [
          Column(
            children: [
              const SizedBox(height: 24),
              SizedBox(
                height: 24,
                child: Text(label, style: labelTextStyle),
              ),
              SizedBox(
                height: 130,
                child: Text(weight.toString(), style: weightTextStyle),
              ),
              const Text("lbs", style: unitTextStyle),
            ],
          ),
          Positioned(
            bottom: -24,
            child: SvgPicture.asset(
              'lib/utilities/assets/graph.svg',
              fit: BoxFit.cover,
              alignment: Alignment.bottomCenter,
              width: 220,
            ),
          ),
        ],
      ),
    );
  }
}
