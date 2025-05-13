class Challenge {
  final String id;
  final String title;
  final String description;
  final String level;
  bool isUnlocked;


  Challenge({
    required this.id,
    required this.title,
    required this.description,
    required this.level,
    this.isUnlocked = false,    
  });
}