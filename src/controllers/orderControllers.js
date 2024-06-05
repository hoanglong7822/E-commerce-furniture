const db = require("../models/index.js");
// render index
const getOrder = async function(req,res)
{
    const cart = req.session.cart
    let user_id =''
    if(req.session.user){
       user_id = req.session.user.user_id
       console.log("Hiển thị user_id",user_id)
    }
    db.Order.create({
        order_fname: req.body.c_fname,
        order_lname:req.body.c_lname,
        order_phonenumber:req.body.c_phone,
        order_email:req.body.c_email_address,
        order_address:req.body.c_address,
        order_notes:req.body.c_order_notes,
        user_id:user_id,
        order_notes:req.body.c_order_notes,
        order_total:req.body.c_total,
        oder_status:'0',
        order_date: new Date(),
      })
      .then(order => {
        for (const productId in cart) {
            const product = {
                "order_id": order.order_id,
              "product_id":cart[productId].id,
              "product_name": cart[productId].name,
              "orderdetail_quantity":cart[productId].quantity,
              "product_price": cart[productId].price,
            }
            db.OrderDetail.create(product)
            .then(() => {
              console.log(`Product with ID ${product.id} created successfully!`);
            })
            .catch((err) => {
              console.error('Error creating product:', err);
            });
}
req.session.cart = null;
res.redirect("thankyou.ejs")
      })
      .catch(err => {
        console.error('Error creating order:', err);
      });
}
const thankYou = function(req,res)
{
   res.render('thankyou.ejs'); 
}

module.exports = {getOrder,thankYou}