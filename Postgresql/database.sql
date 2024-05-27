DROP TABLE public.customers;
CREATE TABLE public.customers (
	id SERIAL PRIMARY KEY,
	first_name varchar(50) NULL,
	last_name varchar(50) NULL,
	email varchar(50) NULL,
	gender varchar(50) NULL,
	created_at timestamp NOT NULL
);

DROP TABLE public.movies;
CREATE TABLE public.movies (
	id SERIAL PRIMARY KEY,
	movie varchar(128) NULL,
	created_at timestamp NOT NULL
);

DROP TABLE public.movie_profits;
CREATE TABLE public.movie_profits (
	id SERIAL PRIMARY KEY,
	movie_id int REFERENCES movies(id),
	profit numeric(9, 2) NULL,
	area varchar(50) NULL
);

DROP TABLE public.movie_purchases;
CREATE TABLE public.movie_purchases (
	id SERIAL PRIMARY KEY,
	movie_id int REFERENCES movies(id),
	customer_id int REFERENCES customers(id),
	created_at timestamp NOT NULL
);