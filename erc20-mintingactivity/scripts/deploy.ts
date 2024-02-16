import { ethers } from "hardhat";

async function main() {
  const token = await ethers.deployContract("Bitcoin", [
    "0xBe984211D7D9d6c4911552a31Ef415624fF9b72a"
  ]);

  await token.waitForDeployment();

  console.log(
    `Token deployed to ${token.target}`
  );
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});