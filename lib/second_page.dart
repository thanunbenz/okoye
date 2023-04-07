import 'dart:math';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {

  final affirmations = [
    "You know more than you think",
    "You're resourceful and clever",
    "Everything has cracks - that's how the light gets in",
    "Don't worry if you find flaws in your past creations, it's because you've evolved",
    "The path to success is to take massive, determined action",
    "Struggling is part of learning",
    "If everything was easy you'd be bored",
    "I give myself permission to do what is right for me",
    "You're an inspiration",
    "Success is the progressive realization of a worthy goal",
    "Struggling means you're learning",
    "People with goals succeed because they know where they’re going",
    "You're a smart cookie",
    "We are all works in progress",
    "Failure is just another way to learn how to do something right",
    "Your mind is full of brilliant ideas",
    "10x engineers are a myth",
    "I know you'll sort it out",
    "Your life is about to be incredible",
    "You make a difference in the world by simply existing in it",
    "All you need is the plan, the roadmap, and the courage to press on to your destination",
    "It'll feel magical when it's working",
    "Sucking at something is the first step towards being good at something",
    "You got this",
    "You know more than you knew yesterday",
    "Whenever we’re afraid, it’s because we don’t know enough. If we understood enough, we would never be afraid",
    "I admire you for taking this on",
    "Starting is the most difficult step - but you can do it",
    "The past does not equal the future",
    "Nothing is impossible. The word itself says 'I’m possible!'",
    "Mistakes don't make you less capable",
    "You are a capable human",
    "We are all works in progress",
    "It is not a sprint, it is a marathon. One step at a time",
    "It’s what you practice in private that you will be rewarded for in public",
    "You're an inspiration",
    "Your life is about to be incredible",
    "You are worthy and deserving of respect",
    "You're doing a great job",
    "The path to success is to take massive, determined action",
    "It'll feel magical when it's working",
    "The opposite of courage in our society is not cowardice... it is conformity",
    "Small progress is still progress"
  ];

  String getRandomAffirmation(List<String> affirmations) {
    final random = Random();
    final index = random.nextInt(affirmations.length);
    return affirmations[index];
  }

  @override
  Widget build(BuildContext context) {
    final name = ModalRoute.of(context)?.settings.arguments as String?;

    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hello, $name!',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 16),
            SizedBox(height: 8),
            Text(
              getRandomAffirmation(affirmations),
              style: TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
