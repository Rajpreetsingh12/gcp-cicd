const express = require('express');
const app = express();
const PORT = process.env.PORT || 8080;
app.get('/', (req, res) => {
res.send('Hello, World! This is  gcp demo app by rajee.');
});
app.listen(PORT, () => {
console.log(`Server is running on port ${PORT}`);
});
