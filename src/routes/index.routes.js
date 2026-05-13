const express = require('express');
const router = express.Router();
const indexController = require('../controllers/index.controller');
const { isAuthenticated } = require('../utils/authMiddleware');

// Ruta principal - dashboard
router.get('/', isAuthenticated, indexController.showDashboard);

module.exports = router;
