const express = require('express');
const { Pool } = require('pg');
const cors = require('cors');
const path = require('path');
const app = express();
const port = 3001;

// กำหนดการเชื่อมต่อกับฐานข้อมูล PostgreSQL
const pool = new Pool({
    user: 'postgres',       // ชื่อผู้ใช้ฐานข้อมูล PostgreSQL
    host: 'localhost',      // ที่อยู่ของเซิร์ฟเวอร์ PostgreSQL
    database: 'mydatabase', // ชื่อฐานข้อมูลที่ต้องการเชื่อมต่อ
    password: '1234',       // รหัสผ่านผู้ใช้ฐานข้อมูล
    port: 5432,             // พอร์ตที่ใช้เชื่อมต่อ (ค่าเริ่มต้นของ PostgreSQL คือ 5432)
});

// ใช้ CORS เพื่ออนุญาตการเข้าถึง API จากแหล่งที่มาภายนอก
app.use(cors());
app.use(express.json());

// ให้บริการไฟล์สแตติกจากโฟลเดอร์ 'uploads'
app.use('/uploads', express.static(path.join(__dirname, 'uploads')));

// API สำหรับดึงข้อมูลจากตาราง CoffeeShop
app.get('/api/coffeeshop', async (req, res) => {
    try {
        const result = await pool.query(`
            SELECT 
                id, 
                ST_AsGeoJSON(geom) as geometry, 
                lat, 
                lng, 
                type, 
                facilities, 
                time,
                area,  
                service, 
                images 
            FROM "CoffeeShop"
        `);
        res.json(result.rows);
    } catch (err) {
        console.error('Database Query Error:', err);
        res.status(500).send('Server Error');
    }
});

// API สำหรับดึงข้อมูลจากตาราง EVCharger
app.get('/api/evcharger', async (req, res) => {
    try {
        const result = await pool.query(`
            SELECT 
                id, 
                ST_AsGeoJSON(geom) as geometry, 
                lat, 
                lng, 
                type, 
                time,
                area,  
                operationa as contact, 
                images, 
                note 
            FROM "EVcharger"
        `);
        res.json(result.rows);
    } catch (err) {
        console.error('Database Query Error:', err);
        res.status(500).send('Server Error');
    }
});

// API สำหรับดึงข้อมูลจากตาราง Restaurant1
app.get('/api/restaurant1', async (req, res) => {
    try {
        const result = await pool.query(`
            SELECT 
                id, 
                ST_AsGeoJSON(geom) as geometry, 
                lat, 
                lng, 
                type, 
                facilities, 
                time,
                area, 
                contact,  
                service, 
                images,
                note 
            FROM "Restaurant1"
        `);
        res.json(result.rows);
    } catch (err) {
        console.error('Database Query Error:', err);
        res.status(500).send('Server Error');
    }
});

// API สำหรับดึงข้อมูลจากตาราง Store1
app.get('/api/store1', async (req, res) => {
    try {
        const result = await pool.query(`
            SELECT 
                id, 
                ST_AsGeoJSON(geom) as geometry, 
                lat, 
                lng, 
                type, 
                facilities, 
                time,
                area, 
                contact,  
                service, 
                images,
                note 
            FROM "Store1"
        `);
        res.json(result.rows);
    } catch (err) {
        console.error('Database Query Error:', err);
        res.status(500).send('Server Error');
    }
});

// API สำหรับดึงข้อมูลจากตาราง data
app.get('/api/data', async (req, res) => {
    try {
        const result = await pool.query(`
            SELECT 
                id, 
                ST_AsGeoJSON(geom) as geometry, 
                lat, 
                lng, 
                type, 
                facilities, 
                time,
                area, 
                contact, 
                images, 
                note 
            FROM "data"
        `);
        res.json(result.rows);
    } catch (err) {
        console.error('Database Query Error:', err);
        res.status(500).send('Server Error');
    }
});


// API สำหรับดึงข้อมูลจากตาราง PhotocopyShop
app.get('/api/photocopyshop', async (req, res) => {
    try {
        const result = await pool.query(`
            SELECT 
                id, 
                ST_AsGeoJSON(geom) as geometry, 
                lat, 
                lng, 
                type, 
                facilities, 
                time,
                area,  
                contact,
                service, 
                images, 
                note 
            FROM "PhotocopyShop"
        `);
        res.json(result.rows);
    } catch (err) {
        console.error('Database Query Error:', err);
        res.status(500).send('Server Error');
    }
});

// API สำหรับดึงข้อมูลจากตาราง Activity
app.get('/api/activity', async (req, res) => {
    try {
        const result = await pool.query(`
            SELECT 
                id, 
                ST_AsGeoJSON(geom) as geometry, 
                lat, 
                lng, 
                type, 
                facilities, 
                time,
                area, 
                contact,
                images, 
                note 
            FROM "Activity"
        `);
        res.json(result.rows);
    } catch (err) {
        console.error('Database Query Error:', err);
        res.status(500).send('Server Error');
    }
});


// เริ่มต้นเซิร์ฟเวอร์และรับฟังการเชื่อมต่อที่พอร์ตที่กำหนด
app.listen(port, () => {
    console.log(`Server is running on port ${port}`);
});
