const express = require('express');
const router = express.Router();
const AuthController = require('../controllers/auth.controller');
const { isNotAuthenticated } = require('../utils/authMiddleware');

// Login
router.get('/login', isNotAuthenticated, AuthController.showLogin);
router.post('/login', isNotAuthenticated, AuthController.login);

// Registro
router.get('/register', isNotAuthenticated, AuthController.showRegister);
router.post('/register', isNotAuthenticated, AuthController.register);

// Logout
router.post('/logout', AuthController.logout);

module.exports = router;
