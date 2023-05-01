var express = require('express');
var router = express.Router();
var SqlString = require('sqlstring');


/* GET welcome page. */
router.get('/', function(req, res, next) {
  res.render('welcome', { title: 'welcome' });
});

module.exports = router;
