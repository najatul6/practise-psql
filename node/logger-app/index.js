const path=require("path")
const inputArguments=process.argv.slice(2)

const text =inputArguments.join(' ')
if(!text){
    console.log("❌ Please Add some text")
    console.log("Example: node index.js Hello World")
    process.exit(1)
}

const filePath=path.join(__dirname, "log.txt")

console.log(filePath)