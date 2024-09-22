import '../card/Card.dart';
import 'dart:math';

class Player {
  int funds;
  String name;
  List <Card>? cards;

  Player(this.funds, this.name) {
    funds = this.funds;
    name = this.name;
  }

  int drawCard() {
    var number = Random().nextInt(13);
    return number;
  }
  
}