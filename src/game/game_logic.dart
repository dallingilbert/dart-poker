import '../player/player.dart';
import '../card/card.dart';
import '../house/house.dart';

class GameLogic {
  // Member variables
  List<Player> playerList;
  House house;
  double bigBlindValue, smallBlindValue;
  int round, playerCount;

  // Constructor
  GameLogic(this.playerList, this.house, this.bigBlindValue)
    : smallBlindValue = bigBlindValue / 2,
      playerCount = playerList.length,
      round = 0;

  // Methods
  void initPlayerRoles() {
      playerList.first.isDealer = true;
      for (int i = 1; i < playerList.length - 1; i++){
      }
  }

  void dealCardsToPlayers() {
    if (playerCount == 0) throw 'Error, no players found!';
    else {
      playerList.forEach((p) => p.cards.add(Card.random()));
    }
  }

}