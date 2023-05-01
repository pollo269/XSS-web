var express = require('express');
var router = express.Router();
const app = express(); //router
require('dotenv').config()
var SqlString = require('sqlstring');


const bodyParser = require('body-parser'); //catch form element
app.use(bodyParser.urlencoded({extended:false})); // 設定body-parser中介軟體

var mysql = require('mysql');
var dbConfig = {
    host: process.env.DB_HOST,
    user: process.env.DB_USER_NAME,
    password: process.env.DB_USER_PASSWORD,
    database: process.env.DB_NAME
};

/* GET aDmIn_IndeX page. */
router.get('/', function(req, res, next) {
    con = mysql.createConnection(dbConfig);
    var sql_comment = "SELECT * FROM msg";
    con.connect((err) => {
        console.log("---------------MySQL is connected!(aDmIn_IndeX)");
        con.query(sql_comment, (err,result) => {
            if(err){
                throw err;
            }else{
                res.render('aDmIn_IndeX', { title: 'Express', result: result });
            }
        });
    });
});

router.post('/', function(req, res, next) {
    con = mysql.createConnection(dbConfig);
    
    con.connect((err) => {
        var Username = 'YOU';
        var Usercomment = req.body.Usercomment;

//----------------replace---------------------------------------------
        Usercomment.replace('a','b');
//----------------replace---------------------------------------------

        var sql_insert_comment = "INSERT INTO msg (name, msg) VALUES (" + SqlString.escape(Username) + "," + SqlString.escape(Usercomment) + ")";
        var sql_comment = "SELECT * FROM msg";
        
        console.log("---------------MySQL is connected!(aDmIn_IndeX)");
        console.log("---------------Usercomment:"+Usercomment);
        
        con.query(sql_insert_comment, (err,result) => {
            if(err){
                throw err;
            }
        });

        con.query(sql_comment, (err,result) => {
            if(err){
                throw err;
            }else{
                res.render('aDmIn_IndeX', { title: 'Express', result: result });
            }
        });
    });
});


    module.exports = router;