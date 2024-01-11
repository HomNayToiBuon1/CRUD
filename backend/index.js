import express from "express"
import mysql from "mysql"
import cors from 'cors'

const app = express();



//doi pass va database de test 
const db = mysql.createConnection({
    host: 'localhost', 
    user: 'root',
    password: 'password',
    database: 'swp391_se1726_g4'
})

app.use(cors())
app.use(express.json())

app.get("/", (req, res)=>{
    res.json("oke")
})

app.get("/user", (req, res)=>{
    const q = "select * from user"
    db.query(q,(err, data) => {
        if(err) return res.json(err)

        return res.json(data)
    })
})

app.post("/user", (req, res)=>{
    const q = "insert into `user` (`FullName`, `Email`, `Password`) values (?)"
    //const value = ["Name1", "Email1", "Password1"]

    //khong du value khong add duoc vao database

    //"ER_NO_DEFAULT_FOR_FIELD" "Field 'Phone_Number' doesn't have a default value"

    const value = [
        req.body.FullName,
        req.body.Email,
        req.body.Password,
    ]

    db.query(q, [value], (err, data)=>{
        if(err) return res.json(err)
        return res.json("Created.")
    })
})

app.listen(8800, ()=>{console.log("sfdfs")})