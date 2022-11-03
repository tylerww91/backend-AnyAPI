const pool = require('../utils/pool');

module.exports = class BookModel {
  constructor(row) {
    this.id = row.id;
    this.title = row.title;
    this.series = row.series;
    this.author = row.author;
    this.genre = row.genre;
    this.url = row.url;
    this.published = row.published;
  }

  static async getAll() {
    const { rows } = await pool.query('SELECT * from books');
    return rows.map((bookRow) => new BookModel(bookRow));
  }
};
