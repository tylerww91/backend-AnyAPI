-- Use this file to define your SQL tables
-- The SQL in this file will be executed when you run `npm run setup-db`
DROP TABLE IF EXISTS books;

CREATE TABLE books (
    id BIGINT GENERATED ALWAYS AS IDENTITY,
    title VARCHAR NOT NULL,
    series VARCHAR NOT NULL,
    author VARCHAR NOT NULL,
    genre VARCHAR NOT NULL,
    url VARCHAR NOT NULL,
    published INT NOT NULL
);

INSERT INTO books (title, series, author, genre, url, published)
VALUES
('Name of the Wind', 'The King Killer Chronicles', 'Patrick Rothfuss', 'fantasy', 'https://www.goodreads.com/book/show/186074.The_Name_of_the_Wind?from_search=true&from_srp=true&qid=Vne38oZcxp&rank=1', 2007),
('Red Rising', 'Red Rising Saga', 'Pierce Brown', 'sci-fi', 'https://www.goodreads.com/book/show/15839976-red-rising?from_search=true&from_srp=true&qid=H72TskJAtb&rank=1', 2014),
('The Way of Kings', 'The Stormlight Archive', 'Brandon Sanderson', 'fantasy', 'https://www.goodreads.com/book/show/7235533-the-way-of-kings?from_search=true&from_srp=true&qid=I8oKKPcQgK&rank=1', 2010),
('The Blade Itself', 'The First Law', 'Joe Abercrombie', 'fantasy', 'https://www.goodreads.com/book/show/944073.The_Blade_Itself?from_search=true&from_srp=true&qid=5Xt40WzeNG&rank=1', 2007),
('The Lies of Locke Lamora', 'The Gentlemen Bastards', 'Scott Lynch', 'fantasy', 'https://www.goodreads.com/book/show/29588376-the-lies-of-locke-lamora', 2006),
('The Shadow of the Gods', 'The Bloodsworn Saga', 'John Gwynne', 'fantasy', 'https://www.goodreads.com/book/show/52694527-the-shadow-of-the-gods?from_search=true&from_srp=true&qid=yhjIq6mOuU&rank=1', 2021),
('Leviathan Wakes', 'The Expanse', 'James S.A. Corey', 'sci-fi', 'https://www.goodreads.com/book/show/8855321-leviathan-wakes?ac=1&from_search=true&qid=SRiyJKqH01&rank=1', 2011),
('The Rage of Dragons', 'The Burning', 'Evan Winter', 'fantasy', 'https://www.goodreads.com/book/show/41952489-the-rage-of-dragons?ac=1&from_search=true&qid=yhEq3yWbNy&rank=1', 2019),
('Theft of Swords', 'The Riyria Revelations', 'Michael J. Sullivan', 'fantasy', 'https://www.goodreads.com/book/show/10790290-theft-of-swords?ac=1&from_search=true&qid=4dzAXsD0ak&rank=1', 2011);

DROP TABLE IF EXISTS songs;

CREATE TABLE songs (
    id BIGINT GENERATED ALWAYS AS IDENTITY,
    title VARCHAR NOT NULL,
    artist VARCHAR NOT NULL,
    album VARCHAR NOT NULL,
    genre VARCHAR NOT NULL,
    year INT NOT NULL
);

INSERT INTO songs (title, artist, album, genre, year)
VALUES
('Self Control', 'Frank Ocean', 'Blonde', 'R&B', 2016),
('Shadow Man', 'Noname', 'Telephone', 'Hip-Hop/Rap', 2016),
('Above the Clouds', 'Gang Starr', 'Moment of Truth', 'Hip-Hop/Rap', 1998),
('Doo Wop (That Thing)', 'Lauryn Hill', 'The Miseducation of Lauryn Hill', 'R&B/Soul', 1998),
('Navajo', 'Masego', 'Single', 'R&B/Soul', 2017),
('Praise The Lord (da Shine)', 'A$AP Rocky', 'Testing', 'Hip-Hop/Rap', 2018),
('Nothing Can Change This Love', 'Sam Cooke', 'The Best of Sam Cooke', 'R&B/Soul', 1960),
('Go Gina', 'SZA', 'CTRL', 'R&B/Soul', 2017),
('The Waters', 'Anderson .Paak', 'Malibu', 'R&B/Soul', 2016);