pragma solidity ^0.8.0;

contract Army {

  using safemath for uint;

  mapping (address => Army) armies;

  struct Army {
    string name;
    uint power;
    uint kills;
    uint deaths;
  }

  function checkDistance(address _attacker, address _target) internal pure returns (uint) {

  }

  function calculateCost(uint _strength, uint _range, uint _speed) internal pure returns (uint) {
    uint _cost = _strength.mul(_range.mul(_speed));
    return (_cost);
  }

  function attack(address _target)

}
