const express = require("express");
const exphbs = require("express-handlebars");
const path = require("path");
require('dotenv').config();
const session = require('express-session');
const vehiculosRoutes = require("./routes/vehiculos.routes");
const indexRoutes = require("./routes/index.routes");
const authRoutes = require("./routes/auth.routes");
const app = express();
const categoriasRoutes = require("./routes/categorias.routes");
const clientesRoutes = require("./routes/clientes.routes");
const empleadosRoutes = require("./routes/empleados.routes");
const alquileresRoutes = require("./routes/alquileres.routes");
const pagosRoutes = require("./routes/pagos.routes");
const mantenimientosRoutes = require("./routes/mantenimientos.routes");
const PORT = process.env.PORT || 4000;

// Configuración del motor de plantillas
const hbsHelpers = require('./utils/hbsHelpers');

app.engine('.hbs', exphbs.engine({
  extname: '.hbs',
  defaultLayout: 'main',
  layoutsDir: path.join(__dirname, 'views', 'layouts'),
  partialsDir: path.join(__dirname, 'views', 'partials'),
  helpers: hbsHelpers
}));
app.set('view engine', '.hbs');
app.set('views', path.join(__dirname, 'views'));

// Middleware
app.use(express.urlencoded({ extended: false }));
app.use(express.json());

// Session
app.use(session({
  secret: process.env.SESSION_SECRET,
  resave: false,
  saveUninitialized: false,
  cookie: { maxAge: 1000 * 60 * 60 * 4 }
}));

// Hacer user disponible en todas las vistas
app.use((req, res, next) => {
  res.locals.user = req.session ? req.session.user : null;
  next();
});

// Servir archivos estáticos desde /public (CSS, imágenes, JS)
app.use(express.static(path.join(__dirname, '..', 'public')));

// Rutas
app.use('/', indexRoutes);
app.use('/', authRoutes);
app.use('/vehiculos', vehiculosRoutes);
app.use('/categorias', categoriasRoutes);
app.use('/clientes', clientesRoutes);
app.use('/empleados', empleadosRoutes);
app.use('/alquileres', alquileresRoutes);
app.use('/pagos', pagosRoutes);
app.use('/mantenimientos', mantenimientosRoutes);

// Iniciar servidor
app.listen(PORT, () => {
  console.log(`Servidor corriendo en puerto ${PORT}`);
});