pragma solidity >=0.4.22 <0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract B08902049 is ERC721 {

	// constructor
	constructor () ERC721("B08902049", "B08902049_token") public {}	

	struct Sword { // sword structure
		string name; // Name of the Item
		uint level; // Item Level
		uint rarityLevel;  // 1 = normal, 2 = rare, 3 = epic, 4= legendary
		address owner;
	}

	Sword[] public swords; // stores all the sword

	function createSword(string memory _name, address _to) public {
		uint id = swords.length; // Item ID = Length of the Array Items
		uint lvl = ((id + 18367) * 9746 - 88) % 100;
		uint rlvl = id % 4;
		swords.push(Sword({
			name: _name,
			level: lvl,
			rarityLevel: rlvl,
			owner: _to 
		})); 
		_mint(_to,id); // Assigns the Token to the Ethereum Address that is specified
	}

	function swordName(uint id) public view returns (string memory) {
		return swords[id].name;
	}
	function swordLevel(uint id) public view returns (uint) {
		return swords[id].level;
	}
	function swordRarity(uint id) public view returns (uint) {
		return swords[id].rarityLevel;
	}
	function swordOwner(uint id) public view returns (address) {
		return swords[id].owner;
	}

}
