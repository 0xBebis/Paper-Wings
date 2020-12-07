pragma solidity ^0.7.0;
pragma experimental ABIEncoderV2;


abstract contract PaperWings {

  mapping(address => bytes32[]) collection;
  mapping(bytes32 => uint256) creatures;
  mapping(bytes32 => string) name;
  mapping(bytes32 => string) faction;
  mapping(bytes32 => bytes4) stance;
  mapping (bytes4 => function() public returns (uint)) stances;
  mapping (bytes4 => function() public returns (uint)) abilities;

  struct Creature {
    uint256 birthDate; // require uint40
    uint256 hp; // require uint16
    uint256 power; // require uint8
    uint256 defense; // require uint8
    uint256 energy; // require uint8
    uint256 proximity; // require uint8
    bytes4 stance;
    string name;
    string faction;
  }

  function setCreatureStats(bytes32 _id, )


  function storeCreature(bytes32 _id, address owner, uint256 birthDate, uint256 hp, uint256 power, uint256 defense, uint256 energy, uint256 proximity, bytes4 _stance, string memory _name, string memory _faction)
      internal
  {
    require(birthDate == block.timestamp, "invalid birthdate");
    require(hp <= 250 && hp > 0, "invalid hp parameter");
    require(power <= 10 && power > 0, "invalid power parameter");
    require(defense <= 10 && defense > 0, "invalid defense parameter");
    require(energy <= 10 && energy > 0, "invalid energy parameter");
    require(proximity <= 3 && proximity >= 0, "invalid proximity parameter");
    uint256 creature = uint256(owner);
    creature |= birthDate<<160;
    creature |= hp<<208;
    creature |= power<<224;
    creature |= defense<<232;
    creature |= energy<<240;
    creature |= proximity<<248;
    creatures[_id] = creature;
    name[_id] = _name;
    faction[_id] = _faction;
    stance[_id] = _stance;
  }

  function getCreatureStruct(bytes32 _id)
      internal view
  returns(Creature memory _creature)
  {
    uint256 creature = creatures[_id];
    _creature.name = name[_id];
    _creature.faction = faction[_id];
    _creature.stance = stance[_id];
    _creature.owner = address(creature);
    _creature.birthDate = uint256(uint40(creature>>160));
    _creature.hp = uint256(uint8(creature>>208));
    _creature.power = uint256(uint8(creature>>224));
    _creature.defense = uint256(uint8(creature>>232));
    _creature.energy = uint256(uint8(creature>>240));
    _creature.proximity = uint256(uint8(creature>>248));
  }

  function getCreatureId (uint index) public returns (bytes32) {
    return (collection[msg.sender][index]);
  }

  function checkAge (bytes32 _id) public returns (uint ageInDays);
  function createNewCreature(string memory _name) public virtual;
  function viewCreature(bytes32 id) public virtual view returns(Creature memory);

}
