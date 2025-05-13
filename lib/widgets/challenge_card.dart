import 'package:flutter/material.dart';
import 'package:flutter_challenges/models/challenge_model.dart';

class ChallengeCard extends StatelessWidget {
  final Challenge challenge;
  final VoidCallback onTap;

  const ChallengeCard({super.key, required this.challenge, required this.onTap});
  

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: ListTile(
        title: Text(challenge.title),
        subtitle: Text(challenge.description),
        trailing: Icon(
          challenge.isUnlocked ? Icons.lock_open : Icons.lock_outline,
          color: challenge.isUnlocked ? Colors.green : Colors.grey,
        ),
        onTap: challenge.isUnlocked ? onTap : null,
      ),
    );
  }
}