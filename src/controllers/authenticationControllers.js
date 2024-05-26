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
             res.json(User)
        } catch (error) {
            res.status(500).json(error)
        }},
    ////login user
    loginUser: async(req,res)=>{
        try {
            if(!req.body.email || !req.body.passWord){
                return   res.status(404).json("Wrong username or password")
            }
            const user = await db.User.findOne({
                where: {
                    user_email: req.body.email
                }
              });
            if(!user){
                return res.status(404).json("Wrong username")
            }
            const validPassword = await bcrypt.compare(req.body.passWord,user.user_password)
            if(!validPassword){
                return res.status(404).json("Wrong password")
            }
            let token = jwt.sign({id:user.user_id,admin:user.user_role},"secret" ,{expiresIn: '2000s'});
            //  res.status(200).json({user,token})
             req.session.user = user.user_email;
             console.log(req.session.user)
             req.session.login = true;
             console.log("k tồn tại gì đó")
            res.redirect('/')
        } catch (error) {
            res.status(404).json({mes: error})
        }
    }
}
module.exports = authController