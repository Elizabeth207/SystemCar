const express = require('express');
const router = express.Router();
const AlquileresController = require('../controllers/alquileres.controller');

router.get('/', AlquileresController.list);
router.get('/add', AlquileresController.formCreate);
router.post('/add', AlquileresController.create);
router.get('/edit/:id', AlquileresController.formEdit);
router.post('/edit/:id', AlquileresController.update);
router.post('/delete/:id', AlquileresController.delete);

module.exports = router;
