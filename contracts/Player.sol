pragma solidity ^0.8.0;

contract Player {

  mapping (address => Player) players;

  struct Player {
    uint[2] coordinates;
    uint kills;
    uint deaths;
  }

}
