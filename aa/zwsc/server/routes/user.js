const express = require("express");
const pool = require("../pool.js");
const query = require("./query");
var router = express.Router();
var sid={uid:1};
router.post("/reg",(req,res)=>{
    var uname=req.body.uname;
    var upwd=req.body.upwd;
    query("select * from user where uname=?",[uname]).then(result=>{
        if(!result.length){
            pool.query("insert into user values(NULL,?,?)",[uname,upwd],(err,result)=>{if(err)throw err;
                if(result.affectedRows==1){
                    res.send("{code:1,msg:'添加成功'}")
                }
            })
        }else{
            res.send("{code:-1,msg:'用户已存在'}")
         }
    }) 
})
router.get("/login/:uname&:upwd",(req,res)=>{
    var uname=req.params.uname;
    var upwd=req.params.upwd;
    query("select * from user where uname = ? and upwd = ?",[uname,upwd]).then(result=>{
        if(result.length>0){
            res.send({code:1,msg:"登录成功"})
            req.session.uid=result[0].uid;//配置session
            sid.uid=result[0].uid;
        }else{
            res.send({code:-1,msg:"登录失败"})
        }
    })
})

router.get("/loginout",(req,res)=>{
    // sid.uid=undefined;
    delete sid['uid']
    if(sid.uid==undefined){
        res.send({code:1})
    }
})
// 书架
router.get("/read",(req,res)=>{
    req.session.uid=sid.uid;
    var cid=req.session.uid;
    query("select * from al_read where fid = ?",[cid]).then(result=>{
        res.send(result)
    })
})
//收藏
router.get("/collect",(req,res)=>{
    req.session.uid=sid.uid;
    var cid=req.session.uid;
    query("select * from collect where fid = ?",[cid]).then(result=>{
        res.send(result)
    })
})
// 推荐
router.get("/recommend",(req,res)=>{
    req.session.uid=sid.uid;
    var cid=req.session.uid;
    query("select * from b_recommend where fid = ?",[cid]).then(result=>{
        res.send(result)
    })
})
module.exports = router;