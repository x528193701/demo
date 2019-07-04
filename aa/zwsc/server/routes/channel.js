const express = require("express");
const pool = require("../pool.js");
const query = require("./query");
var router = express.Router();
router.get("/man/:cid",(req,res)=>{
    var cid=req.params.cid;
    var obj={};
    query("select * from n_hotspot where p_type = ?",[cid]).then(result=>{  
        obj.hotspot=result;
        return query("select * from c_rest where p_type = ?",[cid])
    }).then(result=>{
        obj.rest=result;    
        return query("select * from c_recom where p_type = ?",[cid])
    }).then(result=>{
        obj.recom=result;
        res.send(obj)
    })
})
router.get("/putaway/:cid",(req,res)=>{
    var cid=req.params.cid;
    query("select * from putaway where p_type = ?",[cid]).then(result=>{
        res.send(result)
    })
})
module.exports = router;