pragma solidity ^0.7.0;


import "./SafeMath.sol";

contract Creatures is PaperWings {

  using SafeMath for uint;

  function checkAge (bytes32 _id) public returns (uint ageInDays) {
    Creature creature = getCreatureStruct(_id);
    age = (block.timestamp.sub(creature.birthDate)).div(86400);
    return(age);
  }

  function viewCreature(uint index) public view override returns(Creature memory) {
    bytes32 id = getCreatureId(index);
    return (getCreatureStruct(id));
  }


}
