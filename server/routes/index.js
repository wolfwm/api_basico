var express = require('express')
var router = express.Router()
const mongoose = require('mongoose')
const User = mongoose.model('User')

/* GET home page. */
router.get('/', function (req, res, next) {
  res.render('index', {
    title: 'Express'
  })
})



/* POST create user. */
router.post('/', async function (req, res, next) {
  try {
    let novoUser = new User(req.body)
    await novoUser.save()
    res.json({
      result: true
    })
  } catch (err) {
    res.json({
      result: false
    })
  }
});

module.exports = router