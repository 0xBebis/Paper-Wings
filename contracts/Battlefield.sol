pragma solidity ^0.7.0;

abstract contract Battlefield {

  uint xMax = 6;
  uint yMax = 6;


  struct Terrain {
    string name;
    uint x;
    uint y;
    bytes4 difficulty;
  }
  // x y
  mapping (uint => mapping (uint => Terrain) terrainMap;

  function createNewTerrain (string name, uint x, uint y, bytes4 difficulty) public returns (bool);




}
