import 'package:flutter/cupertino.dart';

import '../../data/top_navigator.dart';

class TopNavigatorCardWidget extends StatelessWidget {
  final TopNavigator topNavigator;

  const TopNavigatorCardWidget({super.key, required this.topNavigator});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Container(
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Row(
          children: [
            Text(topNavigator.actions,
              style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
            Text(topNavigator.games,
              style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
            Text(topNavigator.lives,
              style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
            Text(topNavigator.mixes,
              style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
            Text(topNavigator.navigator,
              style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
            Text(topNavigator.news,
              style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
            Text(topNavigator.nonSelected,
              style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
          ],
        ),
      ),
    );
  }
}
