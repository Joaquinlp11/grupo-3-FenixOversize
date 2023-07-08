const express = require('express');
const path = require('path');
const app = express();

const publicPath = path.join (__dirname, './public');

const mainRoutes = require('./routes/mainRoutes')
const usersRoutes = require('./routes/usersRoutes')
const productsRoutes = require('./routes/productsRoutes')

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



/* Routers */
app.use(mainRoutes)
app.use ( usersRoutes);
app.use(productsRoutes);


app.use(express.static("public"))

app.listen(3000, () => {
    console.log('servidor funcionando http://localhost:3000/');
});