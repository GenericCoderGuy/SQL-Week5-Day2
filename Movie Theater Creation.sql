CREATE TABLE customer (
	customer_id serial PRIMARY KEY,
	first_name varchar(255) NOT NULL,
	last_name varchar(255) NOT NULL,
	address varchar(255) NOT NULL,
	billing_info varchar(255) NOT NULL
);
-- Standard customer info


CREATE TABLE movie (
	movie_id serial PRIMARY KEY,
	movie_title varchar(255) NOT NULL, 
	movie_description varchar(1050) NOT NULL,
	movie_length integer NOT NULL,
	movie_genre varchar(255) NOT NULL
);
-- Standard movie info

CREATE TABLE ticket (
	ticket_id serial PRIMARY KEY,
	price money NOT NULL,
	customer_id serial REFERENCES customer(customer_id),
	movie_id serial REFERENCES movie(movie_id)
);
-- recording which customers watched which movies for how much


CREATE TABLE concession (
	concession_id serial PRIMARY KEY, 
	concession_name varchar(255) NOT NULL,
	customer_id serial REFERENCES customer(customer_id),
	price money
)
-- snacks and purchase info
