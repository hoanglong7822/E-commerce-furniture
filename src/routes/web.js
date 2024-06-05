const express = require('express');
const {getHomepage,cart,shop, addToCart, updateQuantity,checkOut,deleteProductInCart, thankYou, checkoutCart, about,services,blogs,contact,login,register,detailProducts,test, detailProductsAddToCart
} = require("../controllers/homeController");
const router = express.Router()
router.get('/',getHomepage)
router.get('/shop.ejs',shop)
router.post('/addToCart',addToCart)
router.get('/cart.ejs',cart)
router.post('/updateQuantity',updateQuantity)
router.get('/deleteProductInCart/:id',deleteProductInCart)
router.get('/checkout.ejs',checkOut)
router.get('/thankyou.ejs',thankYou)
router.get('/checkoutCart',checkoutCart)
router.get('/about.ejs',about)
router.get('/services.ejs',services)
router.get('/blog.ejs',blogs)
router.get('/contact.ejs',contact)
router.get('/login.ejs',login)
router.get('/register.ejs',register)
router.get('/detail-products.ejs/:id',detailProducts)
router.post('/detail-products.ejs/addToCart',detailProductsAddToCart)
router.get('/test.ejs/:id',test)
module.exports = router