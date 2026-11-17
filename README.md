# MARASH — Proyecto universitario de gestión de tienda de ropa

## Cómo ejecutar el proyecto
1. Copia la carpeta `marash` a `C:\xampp\htdocs\marash`.
2. Enciende Apache en XAMPP y verifica que tu servicio de MySQL/MariaDB esté activo (puede ser un servicio de Windows independiente de XAMPP).
3. Abre HeidiSQL y comprueba que la base de datos `marash` exista.
4. Crea `backend/config/local.php` a partir de `local.example.php` y configura **tus propias credenciales locales**. Este archivo no se comparte ni se sube a GitHub.
5. Visita `http://localhost/marash/` e inicia sesión con el administrador ya creado en tu instalación.

**Importante:** Si ya tienes productos y ventas, **NO vuelvas a importar** `database/marash.sql`. Antes de reemplazar la carpeta, guarda una copia de seguridad de los archivos y de la base de datos. Esta versión no incluye `install.php` ni crea automáticamente un administrador nuevo.

## Módulos
- Login con contraseña cifrada mediante `password_hash`/`password_verify` y sesiones PHP.
- Dashboard con indicadores reales, fotografías de moda y últimas ventas.
- Productos: crear, editar, eliminar (admin), imagen por URL, tallas y colores descriptivos.
- Clientes y proveedores: altas, cambios y bajas (admin).
- Inventario: existencias, ajustes y trazabilidad de movimientos.
- Ventas: múltiples productos, control transaccional de stock y medios de pago.
- Reportes: rango de fechas, márgenes, categorías, métodos de pago y exportación CSV.

## Estructura oficial
`frontend/css`, `frontend/js`, `frontend/img`, `backend/config`, `backend/controllers`, `backend/models`, `backend/routes`, `views/auth`, `views/dashboard`, `views/productos`, `views/clientes`, `views/ventas`, `views/inventario`, `views/reportes`, `index.php`, `README.md`, `.gitignore`.
Se añaden `views/proveedores`, `views/configuracion`, `database` y `export.php`.

## Notas y límites
- **Requiere MariaDB funcionando**: a diferencia de la versión anterior, ya no guarda los datos en localStorage.
- La cantidad de stock se administra **por producto**, no por combinación de talla/color. Tallas y colores son campos descriptivos. Para inventario por variante/sucursal hacen falta tablas adicionales.
- Las imágenes demostrativas se cargan desde Unsplash y necesitan Internet. Puedes reemplazarlas por imágenes propias en `frontend/img` y usar sus rutas relativas en productos.
- No se incluyen PDF de facturas, devoluciones, auditoría avanzada, recuperación de contraseñas ni administración completa de múltiples sucursales.
- Aplicación para uso local / desarrollo. Para publicar en Internet: HTTPS, configuración de servidor, credenciales restringidas, gestión de usuarios, copias de seguridad y revisión de seguridad.
- No subas contraseñas de base de datos a GitHub.
