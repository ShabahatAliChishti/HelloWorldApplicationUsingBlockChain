const { ethers } = require("hardhat");

async function main() {

   const HelloWorld = await ethers.getContractFactory('HellowWorld');

   const hw = await HelloWorld.deploy("Hello World! Bingo");

   console.log('Contract Deployed to:', hw.address);
}

main().then(() => process.exit(0))
.catch(error => {
 console.error(error);
 process.exit(1);
});