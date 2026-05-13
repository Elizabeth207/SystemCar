const express = require('express');
const router = express.Router();
const CategoriasController = require('../controllers/categorias.controller');

router.get('/', CategoriasController.list);
router.get('/add', CategoriasController.formCreate);
router.post('/add', CategoriasController.create);
router.get('/edit/:id', CategoriasController.formEdit);
router.post('/edit/:id', CategoriasController.update);
router.post('/delete/:id', CategoriasController.delete);

module.exports = router;
