const mysql = require('mysql2');
require('dotenv').config(); // Load konfigurasi dari .env

const connection = mysql.createConnection({
  host: 'localhost',
  user: process.env.DB_USER,      // Ambil dari .env
  password: process.env.DB_PASS,  // Ambil dari .env
  database: 'toram_bot'
});

connection.connect(err => {
  if (err) {
    console.error('❌ Koneksi ke MySQL gagal:', err);
  } else {
    console.log('✅ Terhubung ke MySQL!');
  }
});

module.exports = connection;
