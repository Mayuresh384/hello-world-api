const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
  res.send('Hello, elred!');
});

app.listen(port, () => {
  console.log(`Hello World API is running on port ${port}`);
});

