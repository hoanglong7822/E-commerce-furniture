const express = require('express');
const app = express();
const port = 3030;
const configViewEngine = require('./config/viewEngine')
const webRoutes = require('./routes/web')
const session = require('express-session');
// config template engine
configViewEngine(app)
//
app.use(express.json());
app.use(express.urlencoded({extended: true}))
app.use(session({
  secret: 'your-secret-key',
  resave: false,
  saveUninitialized: true,
}));
app.use('/',webRoutes)
app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})