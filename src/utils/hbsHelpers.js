module.exports = {
  ifEquals: function(a, b, options) {
    return (a == b) ? options.fn(this) : options.inverse(this);
  },
  eq: function(a, b) {
    return a == b;
  },
  json: function(context) {
    return JSON.stringify(context);
  },
  formatCurrency: function(value) {
    // Formatea a moneda en soles peruanos
    try {
      if (value == null || value === '') return 'S/ 0.00';
      const n = Number(value);
      if (isNaN(n)) return value;
      return new Intl.NumberFormat('es-PE', { style: 'currency', currency: 'PEN' }).format(n);
    } catch (e) {
      return 'S/ ' + Number(value || 0).toFixed(2);
    }
  },
  formatDate: function(dateValue, format) {
    // Formatos soportados:
    // 'DD-MM-YYYY' (por defecto), 'DD-MM-YY', 'MM-YYYY', 'MM-DD-YYYY', 'YYYY-MM-DD'
    if (!dateValue) return '';
    const d = new Date(dateValue);
    if (isNaN(d)) return dateValue;
    const pad = (n) => n.toString().padStart(2,'0');
    const dd = pad(d.getDate());
    const mm = pad(d.getMonth() + 1);
    const yyyy = d.getFullYear();
    const yy = String(yyyy).slice(-2);

    if (!format || format === 'DD-MM-YYYY') return `${dd}-${mm}-${yyyy}`;
    if (format === 'DD-MM-YY') return `${dd}-${mm}-${yy}`;
    if (format === 'MM-YYYY') return `${mm}-${yyyy}`;
    if (format === 'MM-DD-YYYY') return `${mm}-${dd}-${yyyy}`;
    if (format === 'YYYY-MM-DD') return `${yyyy}-${mm}-${dd}`;
    if (format === 'MMM DD, YYYY') return d.toLocaleDateString('es-ES', { month: 'short', day: '2-digit', year: 'numeric'});
    // fallback a DD-MM-YYYY
    return `${dd}-${mm}-${yyyy}`;
  },
  
  toLowerCase: function(str) {
    return str ? str.toLowerCase() : '';
  }
    ,
    // Helper para iconos según el tipo de campo
    getFieldIcon: function(fieldName) {
      const icons = {
        nombre: '<i class="fas fa-user"></i>',
        dni: '<i class="fas fa-id-card"></i>',
        telefono: '<i class="fas fa-phone"></i>',
        email: '<i class="fas fa-envelope"></i>',
        direccion: '<i class="fas fa-home"></i>',
        fecha: '<i class="fas fa-calendar"></i>',
  // Icon for monetary values (use a neutral money icon; currency symbol is handled by formatCurrency)
  precio: '<i class="fas fa-money-bill-wave"></i>',
        estado: '<i class="fas fa-toggle-on"></i>',
        placa: '<i class="fas fa-car"></i>',
        modelo: '<i class="fas fa-car-side"></i>',
        marca: '<i class="fas fa-trademark"></i>',
        categoria: '<i class="fas fa-tags"></i>',
        descripcion: '<i class="fas fa-align-left"></i>',
        acciones: '<i class="fas fa-cogs"></i>',
        id: '<i class="fas fa-hashtag"></i>',
        alquiler: '<i class="fas fa-handshake"></i>',
        metodo: '<i class="fas fa-credit-card"></i>',
        cargo: '<i class="fas fa-briefcase"></i>'
      };
      return icons[(fieldName || '').toLowerCase()] || '<i class="fas fa-info-circle"></i>';
    },
    // Helper para determinar el color según el género
    getGenderColor: function(nombre) {
      const nombreLower = nombre.toLowerCase();
      // Lista de terminaciones comunes para nombres femeninos
      const femeninoTerms = ['a', 'ia', 'na', 'ina', 'ela'];
      // Verificar si termina en alguna terminación femenina
      const esFemenino = femeninoTerms.some(term => nombreLower.endsWith(term));
      return esFemenino ? 'text-pink-500' : 'text-blue-500';
    }
};
