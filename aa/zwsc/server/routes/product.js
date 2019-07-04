const express = require("express");
const pool = require("../pool.js");
const query = require("./query");
var router = express.Router();
router.get("/carousel", (req, res) => {
    query("select * from carousel_Img").then(result => {
        res.send(result)
    })
})
router.get("/content", (req, res) => {
    var obj = {};
    query("select * from n_genre").then(result => {
        // 男频
        obj.ngenre = result;
        return query("select * from w_genre")
    }).then(result => {
        // 女频
        obj.wgenre = result;
        return query("select * from publish")
    }).then(result => {
        // 出版
        obj.publish = result;
        res.send(obj)
    })
})
router.get("/recommend",(req,res)=>{
    query("select * from p_recommend").then(result=>{
        res.send(result)
    })
})
router.get("/hotspot",(req,res)=>{
    var obj={};
    query("select * from hotspot").then(result=>{
        obj.hotspot=result;
        return query("select * from bookrack")
    }).then(result=>{
        obj.bookrack=result;
        res.send(obj)
    })
})
module.exports = router;