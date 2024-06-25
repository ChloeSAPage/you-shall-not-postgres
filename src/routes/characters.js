import express from "express";
import pool from "../db.js";
const router = express.Router();

router.get("/", async (req, res) => {
  const result = await pool.query("SELECT * from characters");
  res.json(result.rows);
});
router.post("/", async (req, res) => {
  const { name, race_id, height, combat_prof, aliases, occupation } = req.body;

  let result;
  try {
    result = await pool.query(
      "INSERT INTO characters (name, race_id, height, combat_prof, aliases, occupation) values ($1, $2, $3, $4, $5, $6) RETURNING *;",
      [name, race_id, height, combat_prof, aliases, occupation]
    );
    res.status(201).json(result.rows[0]);
  } catch (err) {
    console.log(`DB error occurred when creating character:\n${err}`);
    res.status(500).json({ error: "Not telling" });
    return;
  }
});

export default router;
