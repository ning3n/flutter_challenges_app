import 'package:flutter_challenges/models/challenge_model.dart';

List<Challenge> challenges = [
  Challenge(
    id: '1', 
    title: 'Tu primera app', 
    description: 'Crea una app simple que muestre tu nombre en el centro, con un AppBar que diga "Bienvenido".', 
    level: 'Basico',
    isUnlocked: true,
  ),
  Challenge(
    id: '2', 
    title: 'Tarjeta de presentacion', 
    description: 'Crea una tarjeta con tu nombre, imagen y contacto, Usa: Container, Column, Row, Icon, Text, Image.asset o Image.network', 
    level: 'Basico',
    isUnlocked: false,
  ),
];