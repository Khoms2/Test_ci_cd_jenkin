// Import Express
const express = require('express');
const app = express();
const port = 3000;

// Route mặc định
app.get('/', (req, res) => {
  res.send('Hello World!');
});

// Lắng nghe cổng
app.listen(port, () => {
  console.log(`Server running at http://localhost:${port}`);
});
