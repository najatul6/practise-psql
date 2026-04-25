const path = require("path");
const fs = require("fs");

const inputArguments = process.argv.slice(2);
const text = inputArguments.join(" ").concat("\n");
const message = `${text},\n`;

if (!message) {
  console.log("❌ Please Add some log");
  console.log("Example: node index.js Hello World");
  process.exit(1);
}

const filePath = path.join(__dirname, "log.txt");
fs.appendFile(filePath, message, "utf-8", () => {
  console.log("")
});
console.log(filePath);
