import '../player/player.dart';
import '../card/card.dart';
import '../house/house.dart';

class GameLogic {
  // Member variables
  List<Player> playerList;
  House house;
  Card card;
  double bigBlindValue, smallBlindValue;
  int round, playerCount;

  // Constructor
  GameLogic(this.playerList, this.house, this.card, this.bigBlindValue)
    : smallBlindValue = bigBlindValue / 2,
      playerCount = playerList.length,
      round = 0;

  // Methods
  void initPlayerRoles() {
    
  }

  void dealCardsToPlayers() {
    if (playerCount == 0) throw 'Error, no players found!';
    else {
      playerList.forEach((p) => p.cards.add(Card.random()));
    }
  }

}