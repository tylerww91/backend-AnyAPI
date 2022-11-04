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

  static async getAll() {
    const { rows } = await pool.query('SELECT * from songs');
    return rows.map((songRow) => new SongModel(songRow));
  }
};
