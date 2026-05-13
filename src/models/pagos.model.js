const pool = require('../database');

const PagosModel = {
  getAll(cb) {
    const sql = `SELECT p.id, p.id_alquiler, p.fecha_pago, p.monto, p.metodo_pago, a.id_vehiculo, c.nombre AS cliente_nombre
                 FROM pagos p
                 LEFT JOIN alquileres a ON p.id_alquiler = a.id
                 LEFT JOIN clientes c ON a.id_cliente = c.id`;
    pool.query(sql, (err, results) => cb(err, results));
  },

  findById(id, cb) {
    pool.query('SELECT * FROM pagos WHERE id = ? LIMIT 1', [id], (err, results) => cb(err, results[0]));
  },

  create({ id_alquiler, fecha_pago, monto, metodo_pago }, cb) {
    pool.query('INSERT INTO pagos (id_alquiler, fecha_pago, monto, metodo_pago) VALUES (?, ?, ?, ?)', [id_alquiler, fecha_pago, monto, metodo_pago], (err, result) => cb(err, result));
  },

  update(id, data, cb) {
    const { id_alquiler, fecha_pago, monto, metodo_pago } = data;
    pool.query('UPDATE pagos SET id_alquiler = ?, fecha_pago = ?, monto = ?, metodo_pago = ? WHERE id = ?', [id_alquiler, fecha_pago, monto, metodo_pago, id], (err, result) => cb(err, result));
  },

  delete(id, cb) {
    pool.query('DELETE FROM pagos WHERE id = ?', [id], (err, result) => cb(err, result));
  }
};

module.exports = PagosModel;
