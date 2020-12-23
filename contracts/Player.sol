pragma solidity ^0.7.0;

contract Player {

  struct Profile {
    string username;
    uint wins;
    uint losses;
    bytes32 currentGame;
    Party party;
  }

  struct Party {
    bytes32 cid1;
    bytes32 cid2;
    bytes32 cid3;
  }

  mapping(address => bytes32[]) creatureCollections;




}
