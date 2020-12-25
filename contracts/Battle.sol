pragma solidity ^0.7.0;

contract Battle is Battlefield {

  enum Turn { Player1, Player2 }

  struct Game {
    address player1;
    address player2;
    address nextPlayer;
    address winner;
    bool ended;
    uint pot; // What this game is worth: ether paid into the game
    uint player1Winnings;
    uint player2Winnings;
    uint turnTime; // in minutes
    uint ogIndex;
  }

  struct CreatureState {
    uint[2] xy;
  }

  bytes32[3] player1Creatures;
  bytes32[3] player2Creatures;

  bytes32[] openGames;

  mapping (bytes32 => Game) games;
  //creature
  mapping (bytes32 => Creatures) creaturesInGame;

  // NOTE: make sure this isn't dumbassed
  function closeGame(bytes32 _id) internal {
    bytes32 memory _lastGame = openGames[openGames.length.sub(1)].pop;
    openGames[games[_id].ogIndex] = _lastGame;
  }

  function newGame()


  function joinBattle()


}
