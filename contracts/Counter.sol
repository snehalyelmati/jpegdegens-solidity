// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract Counter {
	uint counter;
	event CounterInc(uint counter);

	function count() public {
		counter++;
		console.log("counter", counter);
		emit CounterInc(counter);
	}

	function getCounter() public view returns (uint32) {
		return uint32(counter);
	}
}
