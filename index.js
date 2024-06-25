import express from "express";
import "dotenv/config";
import cors from "cors";

import pg from "pg";
const { Pool } = pg;

const pool = new Pool({
  host: process.env.DB_HOST,
  port: process.env.DB_PORT,
  database: process.env.DB_DATABASE,
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
});

const port = process.env.PORT ?? 3001;

const app = express();
app.use(express.json());
app.use(cors());

app.get("/", async (req, res) => {
  const result = await pool.query("SELECT * from characters");
  res.json(result.rows);
});

app.listen(port, () => {
  console.log(`Listening on port: http://localhost:${port}.`);
});
