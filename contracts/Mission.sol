pragma solidity ^0.8.0;

contract Mission {

  mapping (address => bytes32[]) missionIDs;
  mapping (bytes32 => Mission) missions;

  struct Mission {

    uint index;
  }

  function finishMission(address _player, bytes32 _id) public returns(bool success) {
    require(missions[_player].length <= 10, );
    uint missionToFinish = missions[_id].index;
    address missionToMove   = missionIDs[_player][missionIDs[_player].length.sub(1)];
    missionIDs[_player][missionToFinish] = missionToMove;
    missions[_id].index = missionToFinish;
    _missionIDs.length--;
    return true;
}

}
