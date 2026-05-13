const Pagos = require('../models/pagos.model');
const Alquileres = require('../models/alquileres.model');
const pool = require('../database');

const PagosController = {
  list(req, res) {
    Pagos.getAll((err, results) => {
      if (err) return res.render('pagos/list', { pagos: [], error: 'Error al cargar pagos' });
      res.render('pagos/list', { pagos: results });
    });
  },

  formCreate(req, res) {
    // cargar alquileres con datos asociados (vehículo y cliente) para mostrar etiquetas legibles
    Alquileres.getAll((err, alquileres) => {
      res.render('pagos/create', { alquileres: alquileres || [] });
    });
  },

  create(req, res) {
    const { id_alquiler, fecha_pago, monto, metodo_pago } = req.body;
    Pagos.create({ id_alquiler, fecha_pago, monto, metodo_pago }, (err) => {
      if (err) return res.redirect('/pagos?msg=Error al registrar pago&type=error');
      res.redirect('/pagos?msg=Pago registrado exitosamente&type=success');
    });
  },

  formEdit(req, res) {
    Pagos.findById(req.params.id, (err, pago) => {
      if (err || !pago) return res.status(404).send('No encontrado');
      Alquileres.getAll((errA, alquileres) => {
        res.render('pagos/edit', { pago, alquileres: alquileres || [] });
      });
    });
  },

  update(req, res) {
    Pagos.update(req.params.id, req.body, (err) => {
      if (err) return res.redirect('/pagos?msg=Error al actualizar pago&type=error');
      res.redirect('/pagos?msg=Pago actualizado exitosamente&type=success');
    });
  },

  delete(req, res) {
    Pagos.delete(req.params.id, (err) => {
      if (err) return res.redirect('/pagos?msg=Error al eliminar pago&type=error');
      res.redirect('/pagos?msg=Pago eliminado exitosamente&type=success');
    });
  }
};

module.exports = PagosController;
