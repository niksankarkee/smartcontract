# Some guidance for future me

## Initialize a new project

```
  forge init
```

OR

```
  forge init --force
```

## Compile the project

```
  forge compile
```

OR

```
  forge build
```

## To resolve the compile issue need to pull the chainlink browine contracts from github

```
  forge install smartcontractkit/chainlink-brownie-contracts@0.6.1 --no-commit
```

## To run the script for deployment

```
  forge script script/DeployFundMe.s.sol
```

## To run the test using fork

```
  forge test --match-test testPriceFeedVersionIsAccurate -vvv --fork-url $SEPOLIA_RPC_URL
```

## To see the test coverage

```
 forge coverage --rpc-url $SEPOLIA_RPC_URL
```

OR

```
  forge coverage --fork-url $SEPOLIA_RPC_URL
```

## To Count a gas fee

```
  forge snapshot  --match-test <functionName> Eg:- testWithdrawFromMultipleFunders
```

## To inspect the storage layout

```
  forge inspect FundMe storageLayout
```
