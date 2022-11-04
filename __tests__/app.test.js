const pool = require('../lib/utils/pool');
const setup = require('../data/setup');
const request = require('supertest');
const app = require('../lib/app');

const { books } = require('../lib/books-data.js');
const { songs } = require('../lib/songs-data.js');

describe('books songs routes', () => {
  beforeEach(() => {
    return setup(pool);
  });

  it('/books should return a list of books', async () => {
    const res = await request(app).get('/books');
    const expected = books.map((book) => {
      return {
        id: book.id,
        title: book.title,
        series: book.series,
        author: book.author,
        genre: book.genre,
        url: book.url,
        published: book.published,
      };
    });
    expect(res.body).toEqual(expected);
  });

  it('/books/:id should return book detail', async () => {
    const res = await request(app).get('/books/1');
    const nameOfTheWind = {
      id: '1',
      title: 'Name of the Wind',
      series: 'The King Killer Chronicles',
      author: 'Patrick Rothfuss',
      genre: 'fantasy',
      url: 'https://www.goodreads.com/book/show/186074.The_Name_of_the_Wind?from_search=true&from_srp=true&qid=Vne38oZcxp&rank=1',
      published: 2007,
    };
    expect(res.body).toEqual(nameOfTheWind);
  });

  it('/songs should return a list of songs', async () => {
    const res = await request(app).get('/songs');
    const expected = songs.map((song) => {
      return {
        id: song.id,
        title: song.title,
        artist: song.artist,
        album: song.album,
        genre: song.genre,
        year: song.year,
      };
    });
    expect(res.body).toEqual(expected);
  });

  it('/songs/:id should return song detail', async () => {
    const res = await request(app).get('/songs/1');
    const selfControl = {
      id: '1',
      title: 'Self Control',
      artist: 'Frank Ocean',
      album: 'Blonde',
      genre: 'R&B',
      year: 2016,
    };
    expect(res.body).toEqual(selfControl);
  });

  afterAll(() => {
    pool.end();
  });
});
