const bcrypt = require('bcrypt');
const db = require('../models/index')
const jwt = require('jsonwebtoken')
const authController = {
    registerUser: async(req,res) =>{
        try {
            const salt = await bcrypt.genSalt(10);
            const hashed = await bcrypt.hash(req.body.passWord,salt)
            const User = new db.User({
                user_email: req.body.email,
                user_password: hashed ,
              })
              
              User.save()
             res.redirect('/')
    
        } catch (error) {
            res.status(500).json(error)
        }},
    ////login user
    loginUser: async(req,res)=>{
        try {
            if(!req.body.email || !req.body.passWord){
                req.flash('err', 'Tài khoản hoặc mật khẩu không tồn tại');
                return res.redirect('/login.ejs')
            }
            const user = await db.User.findOne({
                where: {
                    user_email: req.body.email
                }
              });
            if(!user){
                req.flash('err', 'Tài khoản không tồn tại');
                return res.redirect('/login.ejs')
            }
            const validPassword = await bcrypt.compare(req.body.passWord,user.user_password)
            if(!validPassword){
                req.flash('err', 'Sai mật khẩu');
                return res.redirect('/login.ejs')
            }
            let token = jwt.sign({id:user.user_id,admin:user.user_role},"secret" ,{expiresIn: '2000s'});
             req.session.user = user;
             req.session.login = true;
             req.flash('success', 'Đăng nhập thành công!');
             console.log('Đăng nhập thành công')
             res.redirect('/')
        } catch (error) {
            res.status(404).json({mes: error})
        }
    },
    logOut: async(req,res) => {
        req.session.destroy();
        res.redirect('/'); 
    },
    loginPage: async(req,res) => {
        res.render('login.ejs');
    }
}
module.exports = authController