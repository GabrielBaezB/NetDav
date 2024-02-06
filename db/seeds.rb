Acc.create!([
  { nombre_de_cuentas: "Cuenta Demo", contrasena: "demo1234", perfiles: "5", facturacion: "Mensual" },
  { nombre_de_cuentas: "Usuario Básico", contrasena: "usuario123", perfiles: "5", facturacion: "Anual" },
  { nombre_de_cuentas: "Empresa", contrasena: "empresa123", perfiles: "5", facturacion: "Trimestral" },
])

Cliente.create!([
  { nombre: "Juan Pérez", datocorreo: "juan.perez@correo.com", telefono: "+56 9 12345678" },
  { nombre: "María González", datocorreo: "maria.gonzalez@correo.com", telefono: "+56 9 87654321" },
  { nombre: "Empresa SA", datocorreo: "empresa@correo.com", telefono: "+56 2 22334455" },
])

Servicio.create!([
  { nombre: "STAR+ PLUS", valor: 1 },
  { nombre: "CRUNCHYROLL", valor: 2 },
  { nombre: "NETFLIX", valor: 3 },
  { nombre: "HBO MAX", valor: 1 },
  { nombre: "PARAMOUNT", valor: 1.5 },
  { nombre: "APPLE TV", valor: 5 },
  { nombre: "PRIME VIDEO", valor: 1.5 },
  { nombre: "DISNEY", valor: 1 },
  { nombre: "MAGIS TV", valor: 3.5 },
  { nombre: "YOUTUBE PREMIUM", valor: 30000.0 },
  { nombre: "SPOTIFY", valor: 30000.0 },
  { nombre: "CANVA", valor: 30000.0 },
])


User.create!([
  { email: "admin@correo.com", password: "password123" },  # Use a secure password hashing method
  { email: "usuario@correo.com", password: "password123" },  # Use a secure password hashing method
])
