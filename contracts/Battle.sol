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

  struct Creatures {
    //player 1
    bytes32 cid1;
    bytes32 cid2;
    bytes32 cid3;
    // player 2
    bytes32 cid4;
    bytes32 cid5;
    bytes32 cid6;
  }

  bytes32[] openGames;

  mapping (bytes32 => Game) games;
  mapping (bytes32 => Creatures) creaturesInGame;

  // NOTE: make sure this isn't dumbassed
  function closeGame(bytes32 _id) internal {
    bytes32 memory _lastGame = openGames[openGames.length.sub(1)].pop;
    openGames[games[_id].ogIndex] = _lastGame;
  }

  function newGame()


  function joinBattle()


}
