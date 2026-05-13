const pool = require('../database');

const AlquileresModel = {
  getAll(cb) {
    const sql = `SELECT a.id, a.id_vehiculo, a.id_cliente, a.id_empleado, a.fecha_inicio, a.fecha_fin, a.total, a.estado,
                 v.marca, v.modelo, c.nombre AS cliente_nombre, e.nombre AS empleado_nombre
                 FROM alquileres a
                 LEFT JOIN vehiculos v ON a.id_vehiculo = v.id
                 LEFT JOIN clientes c ON a.id_cliente = c.id
                 LEFT JOIN empleados e ON a.id_empleado = e.id`;
    pool.query(sql, (err, results) => cb(err, results));
  },

  findById(id, cb) {
    const sql = 'SELECT * FROM alquileres WHERE id = ? LIMIT 1';
    pool.query(sql, [id], (err, results) => cb(err, results[0]));
  },

  create({ id_vehiculo, id_cliente, id_empleado, fecha_inicio, fecha_fin, total, estado }, cb) {
    const sql = 'INSERT INTO alquileres (id_vehiculo, id_cliente, id_empleado, fecha_inicio, fecha_fin, total, estado) VALUES (?, ?, ?, ?, ?, ?, ?)';
    pool.query(sql, [id_vehiculo, id_cliente, id_empleado, fecha_inicio, fecha_fin, total, estado], (err, result) => cb(err, result));
  },

  update(id, data, cb) {
    const { id_vehiculo, id_cliente, id_empleado, fecha_inicio, fecha_fin, total, estado } = data;
    const sql = 'UPDATE alquileres SET id_vehiculo = ?, id_cliente = ?, id_empleado = ?, fecha_inicio = ?, fecha_fin = ?, total = ?, estado = ? WHERE id = ?';
    pool.query(sql, [id_vehiculo, id_cliente, id_empleado, fecha_inicio, fecha_fin, total, estado, id], (err, result) => cb(err, result));
  },

  delete(id, cb) {
    pool.query('DELETE FROM alquileres WHERE id = ?', [id], (err, result) => cb(err, result));
  }
};

module.exports = AlquileresModel;
