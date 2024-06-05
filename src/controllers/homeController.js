const db = require("../models/index.js");
// render index
const flash = require('connect-flash');
const getHomepage = async function(req,res)
{
    try {
    const data = await db.Product.findAll({
      where: {
        category_id: 1,
      },
    })
      res.locals.user = req.session.user;
      res.render('index.ejs',{ data,
         messages: {
           success: req.flash('success'),
           error: req.flash('err'),
           add: req.flash('add')
         } });
    }
    catch (error) {
    console.log("Lỗi",error);
    }
}
//render shop
const shop = async function(req,res)
{
   const data = await db.Product.findAll();
   const user = req.session.user
   res.locals.user = user

   res.render("shop.ejs",{data,mes:req.flash('add')})
}
 const addToCart = function(req,res)
 {
  console.log(req.body)
    var page= req.body.page;
    var productId = req.body.productId;
    var productName = req.body.productName;
    var productImage = req.body.productImage;
    var productPrice = req.body.productPrice;
    let cart = req.session.cart || {};
    cart[productId] = {
        id: productId,
        name: productName,
        price: productPrice,
        image: productImage,
        quantity: 1
      };
     req.session.cart = cart;
     console.log(page)
     req.flash('add','Đã thêm ' + productName +' vào giỏ hàng')
     if(page ==='shop')
      {
         res.redirect("shop.ejs")
      }
      else{
        res.redirect('/');
      }
 }
 const cart = function(req,res)
 {
   const user = req.session.user
   res.locals.user = user
    const cart = req.session.cart
    console.log(req.flash('err'))
    res.render('cart.ejs', { cart }); 
 }
 const updateQuantity =async function(req,res)
 {
    const updates = req.body;
    const cart = req.session.cart || {};
    ///chuyển từ [] sang dạng {{}}
    const products = Object.fromEntries(updates.productId.map((productId, index) => [productId, { productId, quantity: updates.quantity[index] }]));
    console.log(products)
    for (const productId in cart) {
      const newQuantity = products[productId].quantity;
      cart[productId].quantity = newQuantity;
    }
    req.session.cart = cart;
    res.redirect('/cart.ejs');
 }
 const deleteProductInCart = (req,res)=>{
   const productId = req.params.id
   const cart = req.session.cart || {};
   delete cart[productId]
   console.log(cart)
   res.redirect('../cart.ejs')
}
 const checkoutCart = function(req,res)
 {
   console.log("Da thanh toan xong")
   req.session.cart = cart;

   res.redirect('/thankyou.ejs',{cart});
 }
 const checkOut = function(req,res)
 {
   const user = req.session.user
   res.locals.user = user
   const cart = req.session.cart
   res.render('checkout.ejs', { cart }); 
 }
 const thankYou = function(req,res)
 {
   const user = req.session.user
   res.locals.user = user
    res.render('thankyou.ejs'); 
 }
 const about = function(req,res)
 {
   const user = req.session.user
   res.locals.user = user
    res.render('about.ejs'); 
 }
 const services = function(req,res)
 {
   const user = req.session.user
   res.locals.user = user
    res.render('services.ejs'); 
 }
 const blogs = function(req,res)
 {
   const user = req.session.user
   res.locals.user = user
    res.render('blog.ejs'); 
 }
 const contact = function(req,res)
 {
   const user = req.session.user
   res.locals.user = user
    res.render('contact.ejs'); 
 }
 const login = function(req,res)
 {
    res.render('login.ejs',{mes:req.flash('err')}); 
 }
 const register = function(req,res)
 {
    res.render('register.ejs'); 
 }
 const detailProducts = async function(req,res)
 {
   const user = req.session.user
   res.locals.user = user
   const productId= req.params.id
   const data = await db.Product.findByPk(productId);
   console.log("Hiển thị id ",data)
    res.render('detail-products.ejs',{data}); 
 }
 const test = async function(req,res)
 {
   const user = req.session.user
   res.locals.user = user
   const productId= req.params.id
   const data = await db.Product.findByPk(productId);
   console.log(data)
    res.render('test.ejs',{data}); 
 }
 const detailProductsAddToCart = function(req,res)
 {
   var productId = req.body.productId;
   var productName = req.body.productName;
   var productImage = req.body.productImage;
   var productPrice = req.body.productPrice;
   var productQuantity = req.body.productQuantity;
   let cart = req.session.cart || {};
   cart[productId] = {
       id: productId,
       name: productName,
       price: productPrice,
       image: productImage,
       quantity: productQuantity
     };
    req.session.cart = cart;
    res.redirect('../cart.ejs');
 }
module.exports = {
    getHomepage, shop, addToCart,cart, updateQuantity,deleteProductInCart,checkOut, thankYou, checkoutCart, about, services, blogs,contact, login,register,detailProducts,test,detailProductsAddToCart
}


