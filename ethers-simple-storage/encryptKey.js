const ethers = require('ethers');
const fs = require('fs');
require('dotenv').config();

async function main() {
  const wallet = new ethers.Wallet(process.env.PRIVATE_KEY);
  const encryptedJsonKey = await wallet.encrypt(
    process.env.PRIVATE_KEY_PASSWORD,
    process.env.PASSWORD
  );
  console.log(encryptedJsonKey);
  fs.writeFileSync('./.encryptedJsonKey.json', encryptedJsonKey);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
