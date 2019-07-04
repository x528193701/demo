const express = require("express");
const pool = require("../pool.js");
const query = require("./query");
var router = express.Router();
router.delete("/del/:rid",(req,res)=>{
    var rid=req.params.rid;
    query("delete from al_read where rid = ?",[rid]).then(result=>{
        if(result.affectedRows==1){
            res.send({code:1})
        }
    })
})


module.exports = router;