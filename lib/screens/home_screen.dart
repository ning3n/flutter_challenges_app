import 'package:flutter/material.dart';
import 'package:flutter_challenges/data/challenges_data.dart';
import 'package:flutter_challenges/widgets/challenge_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FlutterChallenges'),
        centerTitle: true,
      ),
      body: ListView(
        children: challenges.map((challenge){
          return ChallengeCard(
            challenge: challenge, 
            onTap: () {
              //Aqui ira la navegacion a los detalles (ejercicios)
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Reto: ${challenge.title}')),
              );
            },
          );
        }).toList(),
      ),
    );
  }
}