const hre = require("hardhat");
const fs = require("fs");

async function main() {
  const contract = await hre.ethers.deployContract("ERC20Test");
  await contract.waitForDeployment();
  const deployedContract = await contract.getAddress();
  fs.writeFileSync("contract.txt", deployedContract);
  // save deployedContract for mint and transfer
  
  console.log(`Contract deployed to ${deployedContract}`);
}


main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
