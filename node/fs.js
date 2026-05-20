const fs = require('fs')
// fs.readFile("./text.txt", "utf8", (err,data)=>{
// if(err){
//     console.log("Something went wrong",err)
//     return
// }
// console.log("data read successfully",data)
// })

const readSteam = fs.createReadStream("./text.txt", "utf8")
const writeSteam = fs.createWriteStream("./output.txt", "utf8")
readSteam.on("data",(data)=>{
    console.log(data)
    writeSteam.write(data,(err)=>{
        if(err){
            console.log("Something went wrong",err, erro.message)
        }
        
    })
})