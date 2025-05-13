CREATE TABLE jobs (
                      id SERIAL PRIMARY KEY,
                      profession VARCHAR NOT NULL
);

CREATE TABLE employee (
                          id SERIAL PRIMARY KEY,
                          first_name VARCHAR NOT NULL,
                          last_name VARCHAR NOT NULL,
                          email VARCHAR UNIQUE NOT NULL,
                          date_of_birth DATE NOT NULL,
                          job_id INTEGER REFERENCES jobs(id)
);
INSERT INTO jobs (profession)
VALUES ('programmer'),
       ('doctor'),
       ('police'),
       ('lower'),
       ('barber'),
       ('designer'),
       ('engineer');

INSERT INTO employee (first_name, last_name, email, date_of_birth, job_id)
VALUES ('Adyl', 'Adylov', 'adyl@gmail.com', '1995-6-21', 7),
       ('Jyrgal', 'Jyrgalov', 'j1@gmail.com', '1991-11-3', 1),
       ('Karylgach', 'Jusupova', 'karr@gmail.com', '2002-3-21', 5),
       ('Duishon', 'Duishonov', 'ddl@gmail.com', '1998-5-17', 3);
