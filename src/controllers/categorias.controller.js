const Categorias = require('../models/categorias.model');

const CategoriasController = {
  list(req, res) {
    Categorias.getAll((err, results) => {
      if (err) return res.render('categorias/list', { categorias: [] , error: 'Error al cargar categorías' });
      res.render('categorias/list', { categorias: results });
    });
  },

  formCreate(req, res) {
    res.render('categorias/create');
  },

  create(req, res) {
    const { nombre, descripcion } = req.body;
    Categorias.create({ nombre, descripcion }, (err) => {
      if (err) return res.redirect('/categorias?msg=Error al crear categoría&type=error');
      res.redirect('/categorias?msg=Categoría creada exitosamente&type=success');
    });
  },

  formEdit(req, res) {
    Categorias.findById(req.params.id, (err, categoria) => {
      if (err || !categoria) return res.status(404).send('No encontrado');
      res.render('categorias/edit', { categoria });
    });
  },

  update(req, res) {
    const { nombre, descripcion } = req.body;
    Categorias.update(req.params.id, { nombre, descripcion }, (err) => {
      if (err) return res.redirect('/categorias?msg=Error al actualizar categoría&type=error');
      res.redirect('/categorias?msg=Categoría actualizada exitosamente&type=success');
    });
  },

  delete(req, res) {
    Categorias.delete(req.params.id, (err) => {
      if (err) return res.redirect('/categorias?msg=Error al eliminar categoría&type=error');
      res.redirect('/categorias?msg=Categoría eliminada exitosamente&type=success');
    });
  }
};

module.exports = CategoriasController;
