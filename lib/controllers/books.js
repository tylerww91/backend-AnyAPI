const { Router } = require('express');
const BookModel = require('../models/BookModel');

module.exports = Router().get('/', async (req, res) => {
  const books = await BookModel.getAll();
  res.json(books);
});
