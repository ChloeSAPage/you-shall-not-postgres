import express from "express";
import "dotenv/config";

const app = express();

const port = process.env.PORT ?? 3001;

app.use(express.json());

app.get("/", (req, res) => {
  res.send({ hello: `It's me` });
});

app.listen(port, () => {
  console.log(`Listening on port: ${port}.`);
});
