USE hippo_seth;


CREATE TABLE roles (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       name VARCHAR(100) NOT NULL,
                       PRIMARY KEY (id)
);

CREATE TABLE users (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       name VARCHAR(100) NOT NULL,
                       email VARCHAR(100) NOT NULL,
                       role_id INT UNSIGNED DEFAULT NULL,
                       PRIMARY KEY (id),
                       FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
                  ('bob', 'bob@example.com', 1),
                  ('joe', 'joe@example.com', 2),
                  ('sally', 'sally@example.com', 3),
                  ('adam', 'adam@example.com', 3),
                  ('jane', 'jane@example.com', null),
                  ('mike', 'mike@example.com', null);

# insert 4 new users into the database. One should have NULL role. The other 3 should be authors.
INSERT INTO users (name, email, role_id) VALUES
                  ('Captain Planet', 'GoGreen@thecapn.com', 2),
                  ('Spongebob', 'SuperSoakin@bikinibottom.com', 2),
                  ('Beevis', 'Butthead@doamerica.com', 2),
                  ('SuperTrooper', 'litteringAND@hopeyouboyslikemexico.com', null);

# use innerjoin, left, and right joins to combine the results from the users and roles tables as we did in the lesson.
SELECT users.name AS user_name, roles.name AS role_name
FROM users
JOIN roles ON users.role_id = roles.id;

# left join will output all users, even with NULL roles
SELECT users.name AS user_name, roles.name AS role_name
FROM users
LEFT JOIN roles ON users.role_id = roles.id;

# right join will output all roles, and user_name. Those which are unfilled as NULL
SELECT users.name AS user_name, roles.name AS role_name
FROM users
RIGHT JOIN roles ON users.role_id = roles.id;

# Use COUNT and the appropriate join type to get a list of roles along with the number of users that have a given role. Hint: You will also need to use GROUP BY in the query.
SELECT COUNT(roles.name) AS number_of_users, roles.name
FROM users
JOIN roles on users.role_id = role_id
GROUP BY roles.name;