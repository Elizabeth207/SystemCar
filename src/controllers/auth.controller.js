const bcrypt = require('bcrypt');
const pool = require('../database');

const AuthController = {
    // Mostrar página de login
    showLogin(req, res) {
        res.render('auth/login', { 
            layout: 'auth',
            title: 'Iniciar Sesión',
            registered: req.query.registered
        });
    },

    // Procesar login
    async login(req, res) {
        const { email, password } = req.body;
        
        try {
            // Buscar usuario por email
            const [rows] = await pool.promise().query(
                'SELECT * FROM usuarios WHERE email = ?', 
                [email]
            );
            const user = rows[0];

            // Si no existe el usuario
            if (!user) {
                return res.render('auth/login', { 
                    layout: 'auth',
                    error: 'Usuario no encontrado'
                });
            }

            // Verificar contraseña
            const match = await bcrypt.compare(password, user.password);
            if (!match) {
                return res.render('auth/login', {
                    layout: 'auth',
                    error: 'Contraseña incorrecta'
                });
            }

            // Login exitoso - guardar en sesión
            delete user.password; // No guardar password en sesión
            req.session.user = user;
            res.redirect('/?msg=¡Bienvenido al sistema!&type=success');

        } catch (error) {
            console.error('Error en login:', error);
            res.render('auth/login', {
                layout: 'auth',
                error: 'Error al iniciar sesión'
            });
        }
    },

    // Mostrar página de registro
    showRegister(req, res) {
        res.render('auth/register', { 
            layout: 'auth',
            title: 'Registro'
        });
    },

    // Procesar registro
    async register(req, res) {
        const { nombre, email, password } = req.body;

        try {
            // Verificar si el email ya existe
            const [exists] = await pool.promise().query(
                'SELECT id FROM usuarios WHERE email = ?',
                [email]
            );
            
            if (exists.length > 0) {
                return res.render('auth/register', {
                    layout: 'auth',
                    error: 'El email ya está registrado'
                });
            }

            // Encriptar contraseña
            const hashedPassword = await bcrypt.hash(password, 10);

            // Insertar nuevo usuario
            await pool.promise().query(
                'INSERT INTO usuarios (nombre, email, password, rol) VALUES (?, ?, ?, "usuario")',
                [nombre, email, hashedPassword]
            );

            res.redirect('/login?msg=¡Cuenta creada exitosamente! Por favor inicia sesión&type=success');

        } catch (error) {
            console.error('Error en registro:', error);
            res.render('auth/register', {
                layout: 'auth',
                error: 'Error al crear la cuenta'
            });
        }
    },

    // Procesar logout
    logout(req, res) {
        req.session.destroy((err) => {
            if (err) console.error('Error al cerrar sesión:', err);
            res.redirect('/login');
        });
    }
};

module.exports = AuthController;
