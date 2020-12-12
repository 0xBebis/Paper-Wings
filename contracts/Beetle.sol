pragma solidity ^0.7.0;
pragma experimental ABIEncoderV2;

contract Beetle is Creature {

  function createBeetle(string memory name) public override {
    bytes32 _id = keccak256(abi.encodePacked(msg.sender, block.timestamp, name));
    collection[msg.sender].push(_id);
    storeCreature(_id, msg.sender, block.timestamp, 150, 2, 4, 2, 0, 0x35895a57, name, "Beetle");
  }

  function 
}
