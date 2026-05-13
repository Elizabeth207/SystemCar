const pool = require('../database');

const CategoriasModel = {
  getAll(cb) {
    pool.query('SELECT id, nombre, descripcion FROM categorias', (err, results) => cb(err, results));
  },

  findById(id, cb) {
    pool.query('SELECT id, nombre, descripcion FROM categorias WHERE id = ?', [id], (err, results) => cb(err, results[0]));
  },

  create({ nombre, descripcion }, cb) {
    pool.query('INSERT INTO categorias (nombre, descripcion) VALUES (?, ?)', [nombre, descripcion], (err, result) => cb(err, result));
  },

  update(id, { nombre, descripcion }, cb) {
    pool.query('UPDATE categorias SET nombre = ?, descripcion = ? WHERE id = ?', [nombre, descripcion, id], (err, result) => cb(err, result));
  },

  delete(id, cb) {
    pool.query('DELETE FROM categorias WHERE id = ?', [id], (err, result) => cb(err, result));
  }
};

module.exports = CategoriasModel;
