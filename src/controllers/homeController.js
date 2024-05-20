const db = require("../models/index.js")
// render index
const getHomepage = async function(req,res)
{
    try {
    const data = await db.Product.findAll();
    return res.render('index.ejs',{ data });
    } catch (error) {
    console.log(error);
    }
}
//render shop
const shop = async function(req,res)
{
    res.render('shop.ejs');
}
 const addToCart = function(req,res)
 {
    var productId = req.body.productId;
    var productName = req.body.productName;
    var productImage = req.body.productImage;
    var productPrice = req.body.productPrice;
    console.log(productId)
    let cart = req.session.cart || {};
    cart[productId] = {
        id: productId,
        name: productName,
        price: productPrice,
        image: productImage,
        quantity: 1
      };
     req.session.cart = cart;
     console.log(req.session.cart)
     res.redirect('/');
 }
 const cart = function(req,res)
 {
    const cart = req.session.cart
    res.render('cart.ejs', { cart }); 
 }
 const updateQuantity = function(req,res)
 {
    const updates = req.body;
    const cart = req.session.cart || {};
    console.log(updates)
    const products = Object.fromEntries(updates.productId.map((productId, index) => [productId, { productId, quantity: updates.quantity[index] }]));
    for (const productId in cart) {
      const newQuantity = products[productId].quantity;
      console.log("số lượng cần update là: ", updates.quantity[productId])
      cart[productId].quantity = newQuantity;
    }
    req.session.cart = cart;
    console.log("Số lượng sản phẩm sau khi cập nhật", cart)
    res.redirect('/cart.ejs');
 }
module.exports = {
    getHomepage, shop, addToCart,cart, updateQuantity
}


