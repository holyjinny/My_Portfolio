import 'package:flutter/material.dart';
import 'package:jinny_portfolio/config/constants.dart';
import 'package:jinny_portfolio/models/recommendation/recommendation.dart';
import 'package:jinny_portfolio/screens/home/components/recommendation_card.dart';

class Recommendations extends StatelessWidget {
  const Recommendations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: defaultPadding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recommendations',
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                my_recommendations.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(
                    right: defaultPadding,
                  ),
                  child: RecommendationCard(
                    recommendation: my_recommendations[index],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
