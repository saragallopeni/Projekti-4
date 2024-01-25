const express = require('express');
const app = express();
const cors = require('cors');
const createRouter = require('./create');
const getRouter = require('./event');
const getDetajet = require('./detajeteventit');
const regRouter = require('./rregjistrimi');
const delRouter = require('./delete');


app.get('/favicon.ico', (req, res) => res.status(204));


app.use(express.json());
app.use(cors());

app.use('/krijo', createRouter);
app.use('/event', getRouter);
app.use('/detajeteventit', getDetajet);
app.use('/app', regRouter);
app.use('/delete', delRouter);

const PORT = 3000;
app.listen(PORT, () => {
  console.log(`Serveri duke u ekzekutuar në portin : ${PORT}`);
});
