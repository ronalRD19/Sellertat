
const express = require('express');
const path = require('path');
const exphbs = require('express-handlebars');
const methodOverride = require('method-override');
const session = require('express-session');

//Inicializaciones

const app = express();

//Configuración

app.set('port', process.env.PORT || 3000);
app.set('views', path.join(__dirname, 'views'));
app.engine('.hbs', exphbs.engine({
    defaultLayout: 'main',
    layoutsDir: path.join(app.get('views'), 'layouts'),
    partialsDir: path.join(app.get('views'), 'partials'),
    extname: '.hbs'
}));
app.set('view engine', '.hbs');

//Middleware
app.use(express.urlencoded({extended: false}));
app.use(methodOverride('_method'));
app.use(session({
    secret: 'mysecretapp',
    resave: true,
    saveUninitialized: true

}));
//VariblesGlobales

//Rutas
app.use(require('./routes/index'));
app.use(require('./routes/notes'));
app.use(require('./routes/users'));

//ArchivosEstaticos

// Server is listenning
app.listen(app.get('port'), () => {
    console.log('El servidor esta en el puerto', app.get('port'));
});

import app from "./app.js";
import { createAdminUser } from "./libs/createUser.js";
import "./database.js";

const PORT = process.env.PORT || 8080;

async function main() {
  await createAdminUser();
  app.listen(PORT, () => {
    console.log(`Server on port ${PORT}`);
  });

  console.log("Environment:", process.env.NODE_ENV);
}

main();

