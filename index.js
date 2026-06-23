const express = require('express');
const app = express();

const port = process.env.PORT || 3000;

app.get('/', (req, res) => {
    res.send('Hello from 204');
});

app.get('/health', (req, res) =>
    res.json({ status: 'ok', time: new Date().toISOString() })
);

app.listen(port, () => {
    console.log(`Listening on port ${port}`);
});