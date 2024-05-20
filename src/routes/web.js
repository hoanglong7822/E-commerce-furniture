const express = require('express');
const {getHomepage,cart,shop, addToCart, updateQuantity} = require("../controllers/homeController");
const router = express.Router()
router.get('/',getHomepage)
router.get('/shop.ejs',shop)
router.post('/addToCart',addToCart)
router.get('/cart.ejs',cart)
router.post('/updateQuantity',updateQuantity)
module.exports = router