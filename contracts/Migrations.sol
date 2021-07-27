pragma solidity >=0.4.21 <0.6.0;

contract Migrations {
  address public owner;TMYUpder5z6HxcXTB4Yz87UfgoY78xewwa
  uint public last_completed_migration;

  constructor() public {
    owner = msg.sender;
  }

  modifier restricted() {
    if (msg.sender == owner) _;
  }

  function setCompleted(uint completed) public restricted {
    last_completed_migration = completed;
  }

  function upgrade(address new_address) public restricted {
    Migrations upgraded = Migrations(new_address);TTx1AGM3jCF1JRZTQzmCetGom4e4AYNqbM
    upgraded.setCompleted(last_completed_migration);
  }
}
