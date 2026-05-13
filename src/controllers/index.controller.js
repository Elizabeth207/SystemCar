const pool = require('../database');

const IndexController = {
    async showDashboard(req, res) {
        try {
            // Obtener algunas estadísticas básicas para el dashboard
            const [
                vehiculos,
                alquileres,
                mantenimientos,
                clientes
            ] = await Promise.all([
                pool.promise().query('SELECT COUNT(*) as total FROM vehiculos'),
                pool.promise().query('SELECT COUNT(*) as total FROM alquileres WHERE estado = "activo"'),
                pool.promise().query('SELECT COUNT(*) as total FROM mantenimientos WHERE estado = "pendiente"'),
                pool.promise().query('SELECT COUNT(*) as total FROM clientes')
            ]);

            res.render('dashboard', {
                active: 'dashboard',
                stats: {
                    vehiculos: vehiculos[0][0].total,
                    alquileresActivos: alquileres[0][0].total,
                    mantenimientosPendientes: mantenimientos[0][0].total,
                    totalClientes: clientes[0][0].total
                }
            });
        } catch (err) {
            console.error('Error al cargar el dashboard:', err);
            res.render('dashboard', { error: 'Error al cargar las estadísticas' });
        }
    }
};

module.exports = IndexController;