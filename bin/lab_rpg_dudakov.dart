import 'dart:async';
import 'dart:io';
import 'package:lab_rpg_dudakov/character.dart';
import 'package:lab_rpg_dudakov/characters.dart';
import 'package:lab_rpg_dudakov/battle.dart';

void printClasses() {
  print('');
  print('Выберите класс персонажа');
  print('1 - ${Warrior(name:'priview')}');
  print('2 - ${Mage(name:'priview')}');
  print('3 - ${Archer(name:'priview')}');
}

Character selectCharater(String promt) {
  stdout.write('&promt - введите имя персонажа: ');
  String? name = stdin.readLineSync();
  name = (name == null || name.trim().isEmpty) ? 'Герой' :name.trim();
}

printClasses();
while (true) {
  stdout.write('Выберите класс (1/2/3): ');
  String? choice = stdin.readLineSync();
  switch (choice?.trim()) {
    case 1: return Warrior(name: name);
    case 2: return Mage(name: name);
    case 3: return Archer(name: name);
    default: print('Неверный выбор. Введите 1, 2 или 3')ж
  }
}

void main() {
  print('⚔️ RPG БИТВА ⚔️');
  Character player = selectCharater('Игрок');
  Character enemy = selectCharater('Противник');
  battle(player, enemy);
  stdout.write('Сыграть еще раз? (да/нет)');
}