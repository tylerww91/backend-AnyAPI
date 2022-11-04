const pool = require('../utils/pool');

module.exports = class SongModel {
  constructor(row) {
    this.id = row.id;
    this.title = row.title;
    this.artist = row.artist;
    this.album = row.album;
    this.genre = row.genre;
    this.year = row.year;
  }
};
