const express = require('express');
const router = express.Router();
const EmpleadosController = require('../controllers/empleados.controller');

router.get('/', EmpleadosController.list);
router.get('/add', EmpleadosController.formCreate);
router.post('/add', EmpleadosController.create);
router.get('/edit/:id', EmpleadosController.formEdit);
router.post('/edit/:id', EmpleadosController.update);
router.post('/delete/:id', EmpleadosController.delete);

module.exports = router;
