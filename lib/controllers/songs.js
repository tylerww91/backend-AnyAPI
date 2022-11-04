const { Router } = require('express');
const SongModel = require('../models/SongModel');

module.exports = Router().get('/', async (req, res) => {
  const songs = await SongModel.getAll();
  res.json(songs);
});
