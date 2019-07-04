const express=require("express");
const session=require("express-session")
const bodyParser=require('body-parser');
const cors=require("cors")
const product=require("./routes/product.js")
const user=require("./routes/user")
const channel=require("./routes/channel")
const bookrack=require("./routes/bookrack")
var server=express();
server.use(cors({
    origin:["http://localhost:8080","http://127.0.0.1:8080"],
    credentials:true
}))
server.use(session({
    secret: '随机字符串',
    cookie: { maxAge: 60 * 1000 * 30 }, //过期时间ms
    resave: false,
    saveUninitialized: true
})); //将服务器的session，放在req.session中
server.use(express.static("public"));
server.use(bodyParser.urlencoded({
    extended:false
}));
server.listen(3000);
server.use("/product",product)
server.use("/user",user)
server.use("/channel",channel)
server.use("/bookrack",bookrack)
