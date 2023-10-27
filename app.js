// app.js
const express = require('express');
const app = express();
const bodyParser = require('body-parser');
const router = require('./routes/todos');
const errorHandler = require('./middlewares/errorHandler')

app.use(bodyParser.json());

app.use('/todos', router);
app.use(errorHandler)

module.exports = app;