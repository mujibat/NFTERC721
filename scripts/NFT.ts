import { ethers } from "hardhat";


async function main() { 

  const NFTContract = await ethers.deployContract("DOLNFT", [1]);

  await NFTContract.waitForDeployment();

  console.log(
    `NFTContract with deployed to ${NFTContract.target}`
  );
  
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});

