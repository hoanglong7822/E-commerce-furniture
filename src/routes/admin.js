const express = require('express');
const router = express.Router()
const adminController = require("../controllers/adminControllers")
const verifyAdmin= require("../middleware/verifyEdit.js")
router.get('/',adminController.index)
router.get('/err.ejs',adminController.err)
router.get('/tables.ejs',adminController.products)
router.get('/buttons.ejs',adminController.buttons)
router.get('/categories.ejs',adminController.categories)
router.get('/editProduct',verifyAdmin,adminController.editProducts)
router.get('/specialproducts.ejs',adminController.specialProducts)
router.get('/user.ejs',adminController.user)
router.get('/deleteProduct/:id',verifyAdmin,adminController.deleteProduct)
router.post('/addProduct',verifyAdmin,adminController.addProduct)
//routes user
router.get('/user.ejs',adminController.user)
router.get('/deleteUser/:action/:id',verifyAdmin,adminController.deleteUser)
//end routes user
// start routes order
router.get('/order.ejs',adminController.order)
router.get('/order-user.ejs',adminController.orderUser)
router.get('/status/:id',adminController.status)
router.get('/detail-order.ejs/:id',adminController.detailOrder)
// end routes order
module.exports = router