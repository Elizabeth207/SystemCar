const Mantenimientos = require('../models/mantenimientos.model');
const pool = require('../database');

const MantenimientosController = {
  list(req, res) {
    Mantenimientos.getAll((err, results) => {
      if (err) return res.render('mantenimientos/list', { mantenimientos: [], error: 'Error al cargar mantenimientos' });
      res.render('mantenimientos/list', { mantenimientos: results });
    });
  },

  formCreate(req, res) {
    pool.query('SELECT id, marca, modelo FROM vehiculos', (err, vehiculos) => {
      res.render('mantenimientos/create', { vehiculos: vehiculos || [] });
    });
  },

  create(req, res) {
    const { id_vehiculo, fecha, descripcion, costo } = req.body;
    Mantenimientos.create({ id_vehiculo, fecha, descripcion, costo }, (err) => {
      if (err) return res.redirect('/mantenimientos?msg=Error al crear mantenimiento&type=error');
      res.redirect('/mantenimientos?msg=Mantenimiento creado exitosamente&type=success');
    });
  },

  formEdit(req, res) {
    Mantenimientos.findById(req.params.id, (err, mant) => {
      if (err || !mant) {
        // Log error server-side and redirect back to list with an error message for the UI
        console.error('Error al obtener mantenimiento:', err && err.message ? err.message : 'no encontrado');
        const msg = encodeURIComponent('Mantenimiento no encontrado');
        return res.redirect(`/mantenimientos?msg=${msg}&type=error`);
      }
      pool.query('SELECT id, marca, modelo FROM vehiculos', (errV, vehiculos) => {
        res.render('mantenimientos/edit', { mantenimiento: mant, vehiculos: vehiculos || [] });
      });
    });
  },

  update(req, res) {
    Mantenimientos.update(req.params.id, req.body, (err) => {
      if (err) return res.redirect('/mantenimientos?msg=Error al actualizar mantenimiento&type=error');
      res.redirect('/mantenimientos?msg=Mantenimiento actualizado exitosamente&type=success');
    });
  },

  delete(req, res) {
    Mantenimientos.delete(req.params.id, (err) => {
      if (err) return res.redirect('/mantenimientos?msg=Error al eliminar mantenimiento&type=error');
      res.redirect('/mantenimientos?msg=Mantenimiento eliminado exitosamente&type=success');
    });
  }
};

module.exports = MantenimientosController;
