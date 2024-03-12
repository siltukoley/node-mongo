const express = require('express');
const app = express();
const PORT = 3000;

const connectDB = require("./db");
connectDB();

app.use(express.json());
app.use("/api/auth", require("./routes/route"))

const server = app.listen(PORT, () => 
    console.log(`Server is running on port ${PORT}`)
)
process.on("unhandledRejection", err => {
    console.log(`An error occurred: ${err.message}`)
    server.close(() => process.exit(1))
  })