const verifyAdmin = (req, res, next) => {
    const user = req.session.user
    const deleteUser = req.params.action
    console.log('Hiển thị user ', deleteUser)
    if (user.user_role === 'manager') {
      next(); // Cho phép truy cập tiếp theo
    } else {
      if(deleteUser === 'delete'){
        req.flash('error', 'Bạn không có quyền');
        res.redirect('/admin/user.ejs');
      }else{
        req.flash('error', 'Bạn không có quyền');
        res.redirect('/admin/tables.ejs');
      }
      }
  };
  module.exports = verifyAdmin