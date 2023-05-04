var express = require('express');
var router = express.Router();
const app = express(); //router
var cookieParser = require('cookie-parser'); //cookie
require('dotenv').config()  //env
var SqlString = require('sqlstring'); //deal with sql injection


const bodyParser = require('body-parser'); //catch form element
app.use(bodyParser.urlencoded({extended:false})); // 設定body-parser中介軟體
app.use(cookieParser()); //cookie

var mysql = require('mysql');
var dbConfig = {
  host: process.env.DB_HOST,
  user: process.env.DB_USER_NAME,
  password: process.env.DB_USER_PASSWORD,
  database: process.env.DB_NAME
};

/* GET login page. */
router.get('/', function(req, res, next) {
  console.log('Go to login');
  res.render('login', { title: 'Express' });
});

router.post('/', function(req, res, next) {
  console.log(req.body.loginUsername);
  console.log(req.body.loginPassword);
  con = mysql.createConnection(dbConfig);

  con.connect((err) => {

    var loginUsername = req.body.loginUsername;
    var loginpwd = req.body.loginPassword;
    var sql_login = "SELECT COUNT(*) AS count FROM login WHERE name = "+SqlString.escape(loginUsername)+" AND pwd = "+SqlString.escape(loginpwd);

    console.log("---------------MySQL is connected!(login)");
    console.log("---------------LoginUsername:"+loginUsername);
    console.log("---------------LoginPassword:"+loginpwd);

    con.query(sql_login, (err,result) => {
      if(err){
        throw err;
      }else{
        if(result[0].count == 1){
          console.log('---------------Login success');
          res.cookie('username', loginUsername); //set cookie
          res.cookie('password', loginpwd); //set cookie
          if(loginUsername == 'A1D8M4I5N2' && loginpwd == 'qwertyuiop'){
            res.location('/aDmIn_IndeX'); //redirect page
            res.redirect('/aDmIn_IndeX');
          }else{
            res.location('/index'); //redirect page
            res.redirect('/index');
          }
        }else{
          console.log('---------------User is not exit');
          res.render('login', { User_is_not_exit: 'User is not exit or password is wrong' });
        }
      }
    });
  });
});

module.exports = router;
