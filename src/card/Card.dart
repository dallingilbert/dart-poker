import 'dart:math';

enum Suit { Heart, Diamond, Spade, Club }
enum FaceCard { Jack, Queen, King, Ace }

class Card {
  int? cardNumber;
  Suit? cardSuit;
  FaceCard? faceValue;

  // Named constructor to generate a random card
  Card.random(){
    assignSuit();
    cardValue();
    convertToFaceCard();
  }
  
  Card(this.cardNumber, this.cardSuit) {
    cardNumber = this.cardNumber;
    cardSuit = this.cardSuit;
    convertToFaceCard();
  }

  // Generate suit for an individual card
  void assignSuit(){
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

  // To assist with defining Jack, Queen, King and Ace cards
  void convertToFaceCard(){
    // If a card value is not equal to 1, or greater than 10, dont convert
    if (cardNumber! >= 2 && cardNumber! <= 10) {
      return;
    }

    if (cardNumber == 1) {
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
