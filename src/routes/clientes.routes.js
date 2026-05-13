const express = require('express');
const router = express.Router();
const ClientesController = require('../controllers/clientes.controller');

router.get('/', ClientesController.list);
router.get('/add', ClientesController.formCreate);
router.post('/add', ClientesController.create);
router.get('/view/:id', ClientesController.view);
router.get('/edit/:id', ClientesController.formEdit);
router.post('/edit/:id', ClientesController.update);
router.post('/delete/:id', ClientesController.delete);

module.exports = router;
