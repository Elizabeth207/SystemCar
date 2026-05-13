const express = require('express');
const router = express.Router();
const MantenimientosController = require('../controllers/mantenimientos.controller');

router.get('/', MantenimientosController.list);
router.get('/add', MantenimientosController.formCreate);
router.post('/add', MantenimientosController.create);
router.get('/edit/:id', MantenimientosController.formEdit);
router.post('/edit/:id', MantenimientosController.update);
router.post('/delete/:id', MantenimientosController.delete);

module.exports = router;
