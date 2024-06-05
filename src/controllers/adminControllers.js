const db = require("../models/index.js");
const { checkOut } = require("./homeController.js");
const index = async function(req,res)
{
   res.render("admin/admin.ejs")
}
const err = async function(req,res)
{
   res.render("admin/err.ejs")
}
const products = async function(req,res)
{
   try {
      const data = await db.Product.findAll();
      const categories = await db.Categories.findAll();
      res.render("admin/tables.ejs",{data,categories,mes:{err:  req.flash('error')},add:{success:  req.flash('success')},delete:  req.flash('delete')})
      }
   catch (error) {
      console.log("Lỗi",error);
      }
}
const specialProducts = async function(req,res)
{
   try {
      const data = await db.Product.findAll({
         where: {
           category_id: 1,
         }})
      res.render("admin/tables.ejs",{data})
      }
   catch (error) {
      console.log("Lỗi",error);
      }
}
const editProducts = async function(req,res)
{
   res.render("admin/admin.ejs")
}
const buttons = async function(req,res)
{
   res.render("admin/buttons.ejs")
}
const categories = async function(req,res)
{
   try {
      const data = await db.Categories.findAll();
      res.render("admin/categories.ejs",{data})
      }
   catch (error) {
      console.log("Lỗi",error);
      }
}
//start controller user
const user = async function(req,res)
{
   try {
      const data = await db.User.findAll();
      res.render("admin/user.ejs",{data,mes:{error:  req.flash('error')}})
      }
   catch (error) {
      console.log("Lỗi",error);
      }
}
const deleteUser = async function(req,res)
{
   const userId= req.params.id
   try {
      await db.User.destroy({
         where: {
           user_id: userId,
         },
       });
      req.flash('delete','Đã xóa sản phẩm')
      return res.redirect('/admin/user.ejs')
    } catch (error) {
      console.error('Error deleting product:', error);
      res.render('err.ejs')
    }
}
const addProduct = async function(req,res)
{
   const product={
      category_id: req.body.name,
      product_name: req.body.categories,
      product_description: req.body.note,
      product_price: req.body.price,
      product_quantity: req.body.quantity,
      product_image: req.body.image
   }
   try {
      await db.Product.create(product);
      req.flash('success','Đã thêm sản phẩm')
      return res.redirect('/admin/tables.ejs')
    } catch (error) {
      console.error('Error adding product:', error);
    }
}
const deleteProduct = async function(req,res)
{
   const productId= req.params.id
   console.log(productId)
   try {
      await db.Product.destroy({
         where: {
           product_id: productId,
         },
       });
      req.flash('delete','Đã xóa sản phẩm')
      return res.redirect('/admin/tables.ejs')
    } catch (error) {
      console.error('Error deleting product:', error);
    }
}
// start controller order
const orderUser = async function(req,res)
{
   try {
      const data = await db.Order.findAll({
         where: {
           user_id: 1,
         },
       });
      res.render("admin/order-user.ejs",{data})
      }
   catch (error) {
      console.log("Lỗi",error);
      }
}
const order = async function(req,res)
{
   try {
      const data = await db.Order.findAll({
         where: {
           user_id: 0,
         },
       });
      res.render("admin/order.ejs",{data})
      }
   catch (error) {
      console.log("Lỗi",error);
      }
}
const detailOrder = async function(req,res)
{
   const order_id = req.params.id
   const data = await db.OrderDetail.findAll({
      where: {
         order_id: order_id,
      },
    });
   console.log(data)
   res.render('admin/detail-order.ejs',{data})
}
const status = async function(req,res)
{
   const order_id = req.params.id
   const order = await db.Order.findByPk(order_id)
   console.log(order)
   order.oder_status = '1' ;
   await order.save();
   res.redirect('../order.ejs')
}
// end controller order
module.exports = {
    index,err,products,buttons, categories, editProducts,order,specialProducts,user,addProduct, deleteProduct,orderUser,status,detailOrder,deleteUser
}