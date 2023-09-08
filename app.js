const express = require('express');
const path = require('path');
const methodOverride = require('method-override');
const fs = require('fs')
const publicPath = path.join (__dirname, './public');
 const expressSession = require('express-session');


const mainRoutes = require('./routes/mainRoutes');
const usersRoutes = require('./routes/usersRoutes');
const productsRoutes = require('./routes/productsRoutes');
const brandsRoutes = require('./routes/brandsRoutes')

const app = express();
app.set('view engine' , 'ejs');

app.set ('views' , [ 
    path.join(__dirname,'./views/main'),
    path.join(__dirname, './views/users'),
    path.join(__dirname, './views/products'),
]);

/* Middlewares */
app.use ( express.static ( publicPath));
app.use ( express.urlencoded({ extended: true }));
app.use ( express.json());

app.use(expressSession({
    secret: 'este es mi secreto monito123',
    resave: false,
    saveUninitialized: true
}));

/* Routers */
app.use(mainRoutes);
app.use(usersRoutes);
app.use('/products',productsRoutes);
app.use(brandsRoutes);

app.use(express.static("public"));
app.use(methodOverride('_method'));

app.listen(3000, () => {
    console.log('servidor funcionando http://localhost:3000/');
});