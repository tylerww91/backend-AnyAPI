const { Router } = require('express');
const SongModel = require('../models/SongModel');

module.exports = Router()
  .get('/', async (req, res) => {
    const songs = await SongModel.getAll();
    res.json(songs);
  })

  .get('/:id', async (req, res) => {
    const song = await SongModel.getById(req.params.id);
    res.json(song);
  });
