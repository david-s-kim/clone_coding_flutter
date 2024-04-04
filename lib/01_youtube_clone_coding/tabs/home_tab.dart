import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  final List<String> cards = ['전체', '게임', '뉴스', '실시간', '믹스', '액션'];

  HomeTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          _topNavigator(),
          _videoList(),
        ],
      ),
    );
  }

  Widget _topNavigator() {
    return SizedBox(
      height: 50,
      child: PageView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: cards.length,
        itemBuilder: (context, index) {
          return Container(
            width: 50,
            margin: const EdgeInsets.symmetric(horizontal: 5),
            child: Card(
              margin: const EdgeInsets.all(8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  cards[index],
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _videoList() {
    return SingleChildScrollView(
      child: Column(children: [
        SizedBox(
          height: 300,
          width: double.infinity,
          child: Image.asset('assets/images/ocean.jpg', fit: BoxFit.cover),
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.account_circle),
            Column(
              children: [
                Text('제목제목제목제목'),
                Text('채널명채널명채널명채널명채널명'),
              ],
            ),
            Icon(Icons.more_vert),
          ],
        ),
        SizedBox(
          height: 300,
          width: double.infinity,
          child: ListView.builder(

            itemCount: 10,
            itemBuilder: (context, index) {
              return Image.asset('assets/images/ocean.jpg', fit: BoxFit.cover);
            },
          )
        )
      ]),
    );
  }
}
