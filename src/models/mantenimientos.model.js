const pool = require('../database');

const MantenimientosModel = {
  getAll(cb) {
    const sql = `SELECT m.id, m.id_vehiculo, m.fecha, m.descripcion, m.costo, v.marca, v.modelo
                 FROM mantenimientos m
                 LEFT JOIN vehiculos v ON m.id_vehiculo = v.id
                 ORDER BY m.fecha DESC, m.id DESC`;
    pool.query(sql, (err, results) => {
      if (err) return cb(err, []);
      // Normalizar fechas '0000-00-00' o nulas a null para evitar errores en las vistas
      const normalized = (results || []).map(r => ({
        ...r,
        fecha: r && r.fecha && String(r.fecha) !== '0000-00-00' ? r.fecha : null
      }));
      cb(null, normalized);
    });
  },

  findById(id, cb) {
  const sql = `SELECT m.*, v.marca, v.modelo 
                 FROM mantenimientos m 
                 LEFT JOIN vehiculos v ON m.id_vehiculo = v.id 
                 WHERE m.id = ? LIMIT 1`;
    pool.query(sql, [id], (err, results) => {
      if (err) return cb(err, null);
      if (!results || results.length === 0) return cb(new Error('Mantenimiento no encontrado'), null);
      const row = results[0];
      const mantenimiento = {
        ...row,
        fecha: row.fecha && String(row.fecha) !== '0000-00-00' ? row.fecha : null
      };
      cb(null, mantenimiento);
    });
  },

  create({ id_vehiculo, fecha, descripcion, costo }, cb) {
    pool.query('INSERT INTO mantenimientos (id_vehiculo, fecha, descripcion, costo) VALUES (?, ?, ?, ?)', [id_vehiculo, fecha, descripcion, costo], (err, result) => cb(err, result));
  },

  update(id, data, cb) {
    const { id_vehiculo, fecha, descripcion, costo } = data;
    pool.query('UPDATE mantenimientos SET id_vehiculo = ?, fecha = ?, descripcion = ?, costo = ? WHERE id = ?', [id_vehiculo, fecha, descripcion, costo, id], (err, result) => cb(err, result));
  },

  delete(id, cb) {
    pool.query('DELETE FROM mantenimientos WHERE id = ?', [id], (err, result) => cb(err, result));
  }
};

module.exports = MantenimientosModel;
