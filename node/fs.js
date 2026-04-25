const fs = require('fs')
console.log("Task 1")

const altText="Welcome to Console New Text"
console.log("Task 2")

fs.writeFileSync("./text.txt", altText)

console.log("Task 3")

const data=fs.readFileSync("./text.txt", "utf8")
console.log("Task 4")

console.log(data)