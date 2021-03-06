import _ from "@nomiclabs/hardhat-ethers";
import { ethers } from "hardhat";

async function deploy() {
	const C = await ethers.getContractFactory("Counter");
	const counter = await C.deploy();
	return counter
}

async function count(counter: any) {
	await counter.count();
	console.log("Counter", await counter.getCounter());
}

deploy().then(count);
