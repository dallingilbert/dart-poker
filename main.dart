import './src/player/Player.dart';
import './src/card/Card.dart';

void main() {
  // Instantiate player
  Player player1 = Player(1000, 'Saltyveins');
  Card card = Card(4, Suit.Heart);

    // If a card value is equal to 1, or less than 11, exit
    if (card.cardNumber == 0 || card.cardNumber >= 11) {
      card.convertToFaceCard();
    }

  print(card.cardNumber);
  print(card.faceValue);


}