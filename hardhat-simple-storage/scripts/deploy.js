// imports
const { ethers, run, network } = require("hardhat");

const main = async () => {
  const SimpleStorageFactory = await ethers.getContractFactory("SimpleStorage");

  console.log("Deploying SimpleStorage contract...");
  const simpleStorage = await SimpleStorageFactory.deploy();
  console.log(`Deployed contract to: ${await simpleStorage.getAddress()}`);

  // console.log(network, config);
  if (network.config.chainId === 11155111 && process.env.ETHERSCAN_API_KEY) {
    await simpleStorage.deploymentTransaction().wait(6);
    await verify(await simpleStorage.getAddress(), []);
  }

  const currentValue = await simpleStorage.retrieve();
  console.log(`Current value stored in contract: ${currentValue.toString()}`);

  // Update the current value
  const transactionResponse = await simpleStorage.store(13);
  await transactionResponse.wait(1);
  const updatedValue = await simpleStorage.retrieve();
  console.log(`Updated value stored in contract: ${updatedValue.toString()}`);
};

const verify = async (contractAddress, args) => {
  console.log("Verifying contract...");
  try {
    await run("verify:verify", {
      address: contractAddress,
      constructorArguments: args,
    });
  } catch (error) {
    if (error.message.toLowerCase().includes("already verified")) {
      console.error("Already Verified!");
    } else {
      console.error(error);
    }
  }
};

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
