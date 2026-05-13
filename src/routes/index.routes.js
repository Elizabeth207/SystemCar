const express = require('express');
const router = express.Router();
const indexController = require('../controllers/index.controller');
const { isAuthenticated } = require('../utils/authMiddleware');

// Ruta principal - redirecciona según autenticación
router.get('/', (req, res) => {
  if (req.session && req.session.user) {
    return indexController.showDashboard(req, res);
  }
  res.redirect('/login');
});

// Ruta del dashboard - protegida
router.get('/dashboard', isAuthenticated, indexController.showDashboard);

module.exports = router;
