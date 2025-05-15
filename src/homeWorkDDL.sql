-- 1
create table country
(
    id   serial primary key,
    name varchar(30)
);
-- 2
create table central_cities
(
    id         serial primary key,
    name       varchar(30),
    country_id integer references country (id)
);
alter table central_cities
    rename to cities;

insert into country (name)
values ('Germany'),
       ('Kyrgyzstan'),
       ('Japan'),
       ('Spanish'),
       ('USA'),
       ('Portugal');

insert into central_cities (name, country_id)
values ('Lissabon', 6),
       ('Tokyo', 3),
       ('Vashington', 5),
       ('Madrid', 4),
       ('Bishkek', 2),
       ('Berlin', 1);

-- 4
create table toyota
(
    name   varchar,
    colour varchar,
    type   varchar
);

insert into toyota (name, colour, type)
VALUES ('Supra', 'Black', 'Cabriolet'),
       ('Mark2', 'White', 'Sedan'),
       ('Camry', 'Red', 'Sedan');

