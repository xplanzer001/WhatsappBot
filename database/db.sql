CREATE DATABASE IF NOT EXISTS toram_bot;
USE toram_bot;

CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    whatsapp_number VARCHAR(20) UNIQUE NOT NULL,
    username VARCHAR(50) NOT NULL,
    level INT DEFAULT 1,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS items (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    rarity ENUM('Common', 'Rare', 'Epic', 'Legendary') NOT NULL,
    effect TEXT,
    price INT DEFAULT 0
);

CREATE TABLE IF NOT EXISTS commands_log (
    id INT AUTO_INCREMENT PRIMARY KEY,
    whatsapp_number VARCHAR(20) NOT NULL,
    command TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (whatsapp_number) REFERENCES users(whatsapp_number) ON DELETE CASCADE
);