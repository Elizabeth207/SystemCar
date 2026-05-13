const Vehiculos = require('../models/vehiculos.model');
const pool = require('../database');

const VehiculosController = {
  listarVehiculos(req, res) {
    Vehiculos.getAll((err, results) => {
      if (err) {
        console.error(err);
        return res.render('vehiculos/list', { vehiculos: [], error: 'Error al obtener vehículos' });
      }
      res.render('vehiculos/list', { vehiculos: results });
    });
  },

  formAgregar(req, res) {
    // cargar categorías para el select
    pool.query('SELECT id, nombre FROM categorias', (err, categorias) => {
      res.render('vehiculos/create', { categorias: categorias || [] });
    });
  },

  guardarVehiculo(req, res) {
    const data = req.body;
    Vehiculos.create(data, (err) => {
      if (err) {
        console.error(err);
        return res.redirect('/vehiculos?msg=Error al crear el vehículo&type=error');
      }
      res.redirect('/vehiculos?msg=Vehículo agregado exitosamente&type=success');
    });
  },

  formEditar(req, res) {
    Vehiculos.findById(req.params.id, (err, vehiculo) => {
      if (err || !vehiculo) return res.status(404).send('Vehículo no encontrado');
      pool.query('SELECT id, nombre FROM categorias', (errC, categorias) => {
        res.render('vehiculos/edit', { vehiculo, categorias: categorias || [] });
      });
    });
  },

  actualizarVehiculo(req, res) {
    Vehiculos.update(req.params.id, req.body, (err) => {
      if (err) {
        console.error(err);
        return res.redirect('/vehiculos?msg=Error al actualizar el vehículo&type=error');
      }
      res.redirect('/vehiculos?msg=Vehículo actualizado exitosamente&type=success');
    });
  },

  eliminarVehiculo(req, res) {
    Vehiculos.delete(req.params.id, (err) => {
      if (err) {
        console.error(err);
        return res.redirect('/vehiculos?msg=Error al eliminar el vehículo&type=error');
      }
      res.redirect('/vehiculos?msg=Vehículo eliminado exitosamente&type=success');
    });
  }
};

module.exports = VehiculosController;
