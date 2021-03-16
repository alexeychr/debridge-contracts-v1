const WhiteDebridge = artifacts.require("WhiteDebridge");

module.exports = async function (deployer, network) {
  let chainId = 0;
  let minAmount = "10000";
  let transferFee = web3.utils.toWei("0.00001");
  let supportedChainIds = [];
  switch (network) {
    case "development":
      chainId = 199;
      supportedChainIds = [42];
      break;
    case "kovan":
      chainId = 42;
      supportedChainIds = [97];
      break;
    case "bsc":
      chainId = 56;
      supportedChainIds = [42];
      break;
    case "bsctest":
      chainId = 97;
      supportedChainIds = [42];
      break;
    default:
      chainId = 1;
      break;
  }
  await deployer.deploy(
    WhiteDebridge,
    chainId,
    minAmount,
    transferFee,
    supportedChainIds
  );
};
