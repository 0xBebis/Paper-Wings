pragma solidity ^0.7.0;

contract Battlefield {

  uint xMax;
  uint yMax;

  struct Terrain {
    string name;
    uint x;
    uint y;
    bytes4 difficulty;
  }

  mapping (uint => mapping (uint => Terrain)) terrainMap;
  mapping (uint => mapping (uint => bytes32)) creatureMap;

  function loadCreatures() public returns (bytes32, bytes32, bytes32, bytes32, bytes32, bytes32) {
    Creatures memory _creatures =
  }

  function createNewTerrain (string name, uint x, uint y, bytes4 difficulty) public;

  function




}
