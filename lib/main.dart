import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
       appBar: AppBar(
        title: const Text('こんぶ @ Flutter大学',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
        backgroundColor: Colors.blue,
       ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              TweetWidget(),
              TweetWidget(),
              TweetWidget(),
              TweetWidget(),
              TweetWidget(),
              TweetWidget(),
              TweetWidget(),
              TweetWidget(),
              TweetWidget(),
              TweetWidget(),
              TweetWidget(),
              TweetWidget(),
              TweetWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class TweetWidget extends StatelessWidget {
  const TweetWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4,vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage('https://appstars.jp/wp-content/uploads/2020/05/egg_step_1.png'),
          ),
          SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text('こんぶ @ Flutter大学'),
                  SizedBox(width: 10),
                  Text('2022/05/05'),
                ],
              ),
              SizedBox(height: 10),
              Text('最高でした。'),
              IconButton(
                onPressed: (){},
                icon: Icon(Icons.favorite_border),
              ),
            ],
          ),
        ],
      ),
    );
  }
}