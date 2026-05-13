const express = require('express');
const router = express.Router();
const PagosController = require('../controllers/pagos.controller');

router.get('/', PagosController.list);
router.get('/add', PagosController.formCreate);
router.post('/add', PagosController.create);
router.get('/edit/:id', PagosController.formEdit);
router.post('/edit/:id', PagosController.update);
router.post('/delete/:id', PagosController.delete);

module.exports = router;
