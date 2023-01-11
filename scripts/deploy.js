const hre = require("hardhat");

async function main() {
  const CALC = await hre.ethers.getContractFactory("Calculator");
  const calc = await CALC.deploy();

  await calc.deployed();

  console.log(
    `Deployed to ${calc.address}`
  );
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
