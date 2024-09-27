import './src/player/player.dart';
import 'src/card/card.dart';
import './src/game/game_logic.dart';
import './src/house/house.dart';


const double bigBlind = 50;

void main() {
  // Instantiate players
  Player player1 = Player(1000, 'Saltyveins', []);
  Player player2 = Player(2000, 'Salty', []);
  Player player3 = Player(3500, 'John Doe', []);
  Player player4 = Player(4000, 'Jane', []);

  House house = House();

  // Instantiate game object
  GameLogic game = GameLogic(([player1, player2, player3, player4]), house, bigBlind);

  // Set the players up with correct roles
  game.assignDealer();
  // game.assignBlinds();
  game.dealCardsToPlayers(2);

  // print player1 individual cards
  for (final player in game.playerList) {
    print('Player: ${player.name} had ${player.cards[0]} of ${player.cards}');
  }

}