const express = require('express');
const router = express.Router()
const authenticationControllers = require("../controllers/authenticationControllers")
router.post('/register',authenticationControllers.registerUser)
router.post('/login',authenticationControllers.loginUser)
router.get('/logOut',authenticationControllers.logOut)
module.exports = router