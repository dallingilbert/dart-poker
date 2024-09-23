import './src/player/player.dart';
import 'src/card/card.dart';

void main() {
  // Instantiate players
  Player player1 = Player(1000, 'Saltyveins', []);
  Player player2 = Player(2000, 'Salty', []);

  // Create 3 random cards and add them to player 1
  for (int i = 0; i < 3; i++) {
    Card card = Card.random();
    player1.cards.add(card);
  }

  // print player1 individual cards
  player1.cards.forEach((card) => print(card.cardNumber));

}