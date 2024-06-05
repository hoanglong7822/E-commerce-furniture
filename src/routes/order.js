const express = require('express');
const router = express.Router()
const orderControllers = require("../controllers/orderControllers")
router.post('/getOrder',orderControllers.getOrder)
router.get('/thankyou.ejs',orderControllers.thankYou)
module.exports = router