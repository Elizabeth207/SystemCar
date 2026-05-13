const express = require('express');
const router = express.Router();
const VehiculosController = require('../controllers/vehiculos.controller');

router.get('/', VehiculosController.listarVehiculos);
router.get('/add', VehiculosController.formAgregar);
router.post('/add', VehiculosController.guardarVehiculo);
router.get('/edit/:id', VehiculosController.formEditar);
router.post('/edit/:id', VehiculosController.actualizarVehiculo);
router.post('/delete/:id', VehiculosController.eliminarVehiculo);

module.exports = router;
