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
      // Set our dealer to the first player in our list
      if (round == 0) playerList.first.isDealer = true; 
      var dealerIndex = 0;

      // Keep an index of the dealer and adjust the next two players in our list
      for (int i = 0; i < playerList.length - 1; i++){
        if (playerList[i].isDealer) {
          dealerIndex = i;
          print('This player: ${playerList[i].name} is set to the dealer!');
          break;
        }
      }

      // We have dealer index, so we know where to set our big and small blinds
      // Before we do that, we need to check if the player index is out of bounds
      playerList[dealerIndex + 1].isBigBlind = true;
      playerList[dealerIndex + 2].isSmallBlind = true;
  }

  void dealCardsToPlayers() {
    if (playerCount == 0) throw 'Error, no players found!';
    else {
      for (final player in playerList) {
        player.cards.add(Card.random());
      }
    }
  }

}