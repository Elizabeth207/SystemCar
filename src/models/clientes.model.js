const pool = require('../database');

const ClientesModel = {
  getAll(cb) {
    pool.query('SELECT id, nombre, dni, telefono, direccion, correo FROM clientes', (err, results) => cb(err, results));
  },

  findById(id, cb) {
    pool.query('SELECT id, nombre, dni, telefono, direccion, correo FROM clientes WHERE id = ?', [id], (err, results) => cb(err, results[0]));
  },

  create({ nombre, dni, telefono, direccion, correo }, cb) {
    pool.query('INSERT INTO clientes (nombre, dni, telefono, direccion, correo) VALUES (?, ?, ?, ?, ?)', [nombre, dni, telefono, direccion, correo], (err, result) => cb(err, result));
  },

  update(id, { nombre, dni, telefono, direccion, correo }, cb) {
    pool.query('UPDATE clientes SET nombre = ?, dni = ?, telefono = ?, direccion = ?, correo = ? WHERE id = ?', [nombre, dni, telefono, direccion, correo, id], (err, result) => cb(err, result));
  },

  delete(id, cb) {
    pool.query('DELETE FROM clientes WHERE id = ?', [id], (err, result) => cb(err, result));
  }
};

module.exports = ClientesModel;
