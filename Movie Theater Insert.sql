-- Add 2 Customers
INSERT INTO customer (first_name, last_name, address, billing_info)
VALUES
	('John', 'Doe', '123 Main St', '55554444333311'),
	('Justin', 'Beaver', '124 Main St', '55554444333312');
	

-- Create 2 Movies
INSERT INTO movie (movie_title, movie_description, movie_length, movie_genre)
VALUES
	('Ghost in The Dark', 'Man investiages something dark.', '1:30', 'Horror'),
	('John Wick', 'Man seeks revenge and goes on a rampage.', '2:00', 'action');


-- Create 2 Tickets
INSERT INTO ticket (price, customer_id, movie_id)
VALUES
	('12.99', (1), (1)),
	('16.99', (2), (1));

-- Create 2 Concession
INSERT INTO concession (concession_name, customer_id, price)
VALUES
	('Soda', (1), '1.99'),
	('Popcorn', (2), '4.99');