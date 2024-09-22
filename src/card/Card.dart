import 'dart:math';

enum Suit { Heart, Diamond, Spade, Club }
enum FaceCard { Jack, Queen, King, Ace }

class Card {
  int cardNumber;
  Suit cardSuit;
  FaceCard? faceValue;
  
  Card(this.cardNumber, this.cardSuit) {
    cardNumber = this.cardNumber;
    cardSuit = this.cardSuit;
  }

  // Generate suit for an individual card
  void determineSuit(){
    var random = Random();
    var suit = random.nextInt(4);

    if (suit == 0) {
      cardSuit = Suit.Heart;
    } else if (suit == 1) {
      cardSuit = Suit.Diamond;
    } else if (suit == 2) {
      cardSuit = Suit.Spade;
    } else if (suit == 3) {
      cardSuit = Suit.Club;
    }
  }

  // Generate the cards value as a number
  void cardValue(){
    var random = Random();
    cardNumber = random.nextInt(13) + 1;
  }

  void convertToFaceCard(){
    if (cardNumber == 0) {
      faceValue = FaceCard.Ace;
    } else if (cardNumber == 11) {
      faceValue = FaceCard.Jack;
    } else if (cardNumber == 12) {
      faceValue = FaceCard.Queen;
    } else if (cardNumber == 13) {
      faceValue = FaceCard.King;
    }
  }

}
