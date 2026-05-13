const pool = require('../database');

const VehiculosModel = {
  getAll(cb) {
    pool.query('SELECT id, id_categoria, marca, modelo, anio, tipo, precio_dia, estado FROM vehiculos', (err, results) => cb(err, results));
  },

  findById(id, cb) {
    pool.query('SELECT id, id_categoria, marca, modelo, anio, tipo, precio_dia, estado FROM vehiculos WHERE id = ? LIMIT 1', [id], (err, results) => cb(err, results[0]));
  },

  create(data, cb) {
    const { id_categoria, marca, modelo, anio, tipo, precio_dia, estado } = data;
    pool.query('INSERT INTO vehiculos (id_categoria, marca, modelo, anio, tipo, precio_dia, estado) VALUES (?, ?, ?, ?, ?, ?, ?)', [id_categoria, marca, modelo, anio, tipo, precio_dia, estado], (err, result) => cb(err, result));
  },

  update(id, data, cb) {
    const { id_categoria, marca, modelo, anio, tipo, precio_dia, estado } = data;
    pool.query('UPDATE vehiculos SET id_categoria = ?, marca = ?, modelo = ?, anio = ?, tipo = ?, precio_dia = ?, estado = ? WHERE id = ?', [id_categoria, marca, modelo, anio, tipo, precio_dia, estado, id], (err, result) => cb(err, result));
  },

  delete(id, cb) {
    pool.query('DELETE FROM vehiculos WHERE id = ?', [id], (err, result) => cb(err, result));
  }
};

module.exports = VehiculosModel;
