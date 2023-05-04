var express = require('express');
var router = express.Router();
var SqlString = require('sqlstring');


var mysql = require('mysql');
var dbConfig = {
  host: process.env.DB_HOST,
  user: process.env.DB_USER_NAME,
  password: process.env.DB_USER_PASSWORD,
  database: process.env.DB_NAME
};


/* GET register page. */
router.get('/', function(req, res, next) {
    console.log('Go to register');
    res.render('register', { title: 'Express' });
  });

router.post('/', function(req, res, next) {    
  con = mysql.createConnection(dbConfig);
  con.connect((err) => {
    if(err){
      throw err;
    }else{
      var registerUsername = req.body.registerUsername;
      var registerpwd = req.body.registerPassword;
      var sql_register = "INSERT INTO login (name, pwd) VALUES ("+SqlString.escape(registerUsername)+", "+SqlString.escape(registerpwd)+")";
      var sql_search_user = "SELECT COUNT(*) AS count FROM login WHERE name = "+SqlString.escape(registerUsername);
  
      console.log("---------------MySQL is connected!(register)");
      console.log("---------------RegisterUsername:"+registerUsername);
      console.log("---------------RegisterPassword:"+registerpwd);
  
      con.query(sql_search_user, (err,result) => {
        if(err){
          throw err;
        }else{
          if(result[0].count == 0){
            con.query(sql_register, (err,result) => {
              if(err){
                throw err;
              }else{
                console.log('---------------Register success');
                res.location('/login');
                res.redirect('/login');
              }
            });
          }else{
            console.log('---------------User is exit');
            res.render('register', { User_is_exist: 'User is exist' });
          }
        }
      });
    }
  });
});

  module.exports = router;