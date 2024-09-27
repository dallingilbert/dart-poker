import '../player/player.dart';
import '../card/card.dart';
import '../house/house.dart';

class GameLogic {
  // Member variables
  List<Player> playerList;
  House house;
  double bigBlindValue, smallBlindValue;
  int round = 0;
  int playerCount;
  int dealerIndex = 0;

  // Constructor
  GameLogic(this.playerList, this.house, this.bigBlindValue)
    : smallBlindValue = bigBlindValue / 2,
      playerCount = playerList.length;

  // Methods

  int get dealerLocation =>  dealerIndex;
  
  // This function loops through our playerList
  void assignDealer() {
      // Keep an index of the dealer and adjust the next two players in our list
      for (int i = 1; i < playerCount; i++){
        if (i == dealerIndex) {
          playerList[i].isDealer = true;
          dealerIndex = i;
          print('This player: ${playerList[i].name} is set to the dealer!');
        }
      }
  }

  void dealCardsToPlayers(int number) {
    if (playerCount == 0) throw 'Error, no players found!';
    else {
      for (final player in playerList) {
        for (int i = 0; i < number; i++) {
          player.cards.add(Card.random());
        }
      }
    }
  }

  void assignBlinds() {
    
  }
}