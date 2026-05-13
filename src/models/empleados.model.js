const pool = require('../database');

const EmpleadosModel = {
  getAll(cb) {
    pool.query('SELECT id, nombre, cargo, telefono, correo FROM empleados', (err, results) => cb(err, results));
  },

  findById(id, cb) {
    pool.query('SELECT id, nombre, cargo, telefono, correo FROM empleados WHERE id = ?', [id], (err, results) => cb(err, results[0]));
  },

  create({ nombre, cargo, telefono, correo }, cb) {
    pool.query('INSERT INTO empleados (nombre, cargo, telefono, correo) VALUES (?, ?, ?, ?)', [nombre, cargo, telefono, correo], (err, result) => cb(err, result));
  },

  update(id, { nombre, cargo, telefono, correo }, cb) {
    pool.query('UPDATE empleados SET nombre = ?, cargo = ?, telefono = ?, correo = ? WHERE id = ?', [nombre, cargo, telefono, correo, id], (err, result) => cb(err, result));
  },

  delete(id, cb) {
    pool.query('DELETE FROM empleados WHERE id = ?', [id], (err, result) => cb(err, result));
  }
};

module.exports = EmpleadosModel;
