const Clientes = require('../models/clientes.model');

const ClientesController = {
  list(req, res) {
    Clientes.getAll((err, results) => {
      if (err) return res.render('clientes/list', { clientes: [], error: 'Error al cargar clientes' });
      res.render('clientes/list', { clientes: results });
    });
  },

  formCreate(req, res) {
    res.render('clientes/create');
  },

  view(req, res) {
    Clientes.findById(req.params.id, (err, cliente) => {
      if (err || !cliente) return res.status(404).send('No encontrado');
      res.render('clientes/view', { cliente });
    });
  },

  create(req, res) {
    const { nombre, dni, telefono, direccion, correo } = req.body;
    Clientes.create({ nombre, dni, telefono, direccion, correo }, (err) => {
      if (err) return res.redirect('/clientes?msg=Error al crear cliente&type=error');
      res.redirect('/clientes?msg=Cliente creado exitosamente&type=success');
    });
  },

  formEdit(req, res) {
    Clientes.findById(req.params.id, (err, cliente) => {
      if (err || !cliente) return res.status(404).send('No encontrado');
      res.render('clientes/edit', { cliente });
    });
  },

  update(req, res) {
    const { nombre, dni, telefono, direccion, correo } = req.body;
    Clientes.update(req.params.id, { nombre, dni, telefono, direccion, correo }, (err) => {
      if (err) return res.redirect('/clientes?msg=Error al actualizar cliente&type=error');
      res.redirect('/clientes?msg=Cliente actualizado exitosamente&type=success');
    });
  },

  delete(req, res) {
    Clientes.delete(req.params.id, (err) => {
      if (err) return res.redirect('/clientes?msg=Error al eliminar cliente&type=error');
      res.redirect('/clientes?msg=Cliente eliminado exitosamente&type=success');
    });
  }
};

module.exports = ClientesController;
