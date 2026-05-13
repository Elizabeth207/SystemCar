const Empleados = require('../models/empleados.model');

const EmpleadosController = {
  list(req, res) {
    Empleados.getAll((err, results) => {
      if (err) return res.render('empleados/list', { empleados: [], error: 'Error al cargar empleados' });
      res.render('empleados/list', { empleados: results });
    });
  },

  formCreate(req, res) {
    res.render('empleados/create');
  },

  create(req, res) {
    const { nombre, cargo, telefono, correo } = req.body;
    Empleados.create({ nombre, cargo, telefono, correo }, (err) => {
      if (err) return res.redirect('/empleados?msg=Error al crear empleado&type=error');
      res.redirect('/empleados?msg=Empleado creado exitosamente&type=success');
    });
  },

  formEdit(req, res) {
    Empleados.findById(req.params.id, (err, empleado) => {
      if (err || !empleado) return res.status(404).send('No encontrado');
      res.render('empleados/edit', { empleado });
    });
  },

  update(req, res) {
    const { nombre, cargo, telefono, correo } = req.body;
    Empleados.update(req.params.id, { nombre, cargo, telefono, correo }, (err) => {
      if (err) return res.redirect('/empleados?msg=Error al actualizar empleado&type=error');
      res.redirect('/empleados?msg=Empleado actualizado exitosamente&type=success');
    });
  },

  delete(req, res) {
    Empleados.delete(req.params.id, (err) => {
      if (err) return res.redirect('/empleados?msg=Error al eliminar empleado&type=error');
      res.redirect('/empleados?msg=Empleado eliminado exitosamente&type=success');
    });
  }
};

module.exports = EmpleadosController;
