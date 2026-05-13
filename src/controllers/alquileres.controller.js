const Alquileres = require('../models/alquileres.model');
const pool = require('../database');

const AlquileresController = {
  list(req, res) {
    Alquileres.getAll((err, results) => {
      if (err) return res.render('alquileres/list', { alquileres: [], error: 'Error al cargar alquileres' });
      res.render('alquileres/list', { alquileres: results });
    });
  },

  formCreate(req, res) {
    // cargar vehículos, clientes y empleados para los selects
    pool.query('SELECT id, marca, modelo FROM vehiculos', (errV, vehiculos) => {
      pool.query('SELECT id, nombre FROM clientes', (errC, clientes) => {
        pool.query('SELECT id, nombre FROM empleados', (errE, empleados) => {
          res.render('alquileres/create', { vehiculos: vehiculos || [], clientes: clientes || [], empleados: empleados || [] });
        });
      });
    });
  },

  create(req, res) {
    const { id_vehiculo, id_cliente, id_empleado, fecha_inicio, fecha_fin, total, estado } = req.body;
    Alquileres.create({ id_vehiculo, id_cliente, id_empleado, fecha_inicio, fecha_fin, total, estado }, (err) => {
      if (err) return res.redirect('/alquileres?msg=Error al crear alquiler&type=error');
      res.redirect('/alquileres?msg=Alquiler creado exitosamente&type=success');
    });
  },

  formEdit(req, res) {
    Alquileres.findById(req.params.id, (err, alquiler) => {
      if (err || !alquiler) return res.status(404).send('No encontrado');
      pool.query('SELECT id, marca, modelo FROM vehiculos', (errV, vehiculos) => {
        pool.query('SELECT id, nombre FROM clientes', (errC, clientes) => {
          pool.query('SELECT id, nombre FROM empleados', (errE, empleados) => {
            res.render('alquileres/edit', { alquiler, vehiculos: vehiculos || [], clientes: clientes || [], empleados: empleados || [] });
          });
        });
      });
    });
  },

  update(req, res) {
    Alquileres.update(req.params.id, req.body, (err) => {
      if (err) return res.redirect('/alquileres?msg=Error al actualizar alquiler&type=error');
      res.redirect('/alquileres?msg=Alquiler actualizado exitosamente&type=success');
    });
  },

  delete(req, res) {
    Alquileres.delete(req.params.id, (err) => {
      if (err) return res.redirect('/alquileres?msg=Error al eliminar alquiler&type=error');
      res.redirect('/alquileres?msg=Alquiler eliminado exitosamente&type=success');
    });
  }
};

module.exports = AlquileresController;
