import 'package:flutter/material.dart';
import 'package:jinny_portfolio/config/constants.dart';
import 'package:jinny_portfolio/models/recommendation/recommendation.dart';

class RecommendationCard extends StatelessWidget {
  const RecommendationCard({Key? key, required this.recommendation})
      : super(key: key);

  final Recommendation recommendation;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      padding: const EdgeInsets.all(
        defaultPadding,
      ),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            recommendation.name!,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
          Text(
            recommendation.source!,
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          Text(
            recommendation.text!,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}