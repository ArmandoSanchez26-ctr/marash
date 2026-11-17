-- EJECUTAR UNA SOLA VEZ en HeidiSQL, en la base marash.
-- Antes: exportar una copia de seguridad. No ejecutar marash.sql otra vez.
USE marash;
ALTER TABLE users ADD COLUMN email VARCHAR(160) NULL AFTER username;
UPDATE users SET email=CONCAT('usuario',id,'@marash.local') WHERE email IS NULL;
ALTER TABLE users MODIFY email VARCHAR(160) NOT NULL;
ALTER TABLE users ADD UNIQUE KEY uq_users_email (email);
ALTER TABLE users MODIFY role ENUM('admin','vendedor','cliente') NOT NULL DEFAULT 'cliente';
-- IMPORTANTE: asigna a tu administrador un correo REAL que controles,
-- cambiando el ejemplo de abajo antes de ejecutar esta línea por separado:
-- UPDATE users SET email='tu_correo@ejemplo.com' WHERE role='admin';
-- Los usuarios existentes pueden entrar con usuario<ID>@marash.local
-- hasta que les asignes su correo real.
