-- enforce foreign key constraints
PRAGMA foreign_keys = ON;

DROP TABLE IF EXISTS pets;
DROP TABLE IF EXISTS types;

CREATE TABLE pets (
    id INTEGER,
    name TEXT,
    type INTEGER,
    PRIMARY KEY (id),
    FOREIGN KEY (type) REFERENCES types (id)
);

CREATE TABLE types (
    id INTEGER,
    name TEXT,
    class TEXT CHECK(class IN ('mammal', 'fish', 'bird', 'amphibian')),
    PRIMARY KEY (id)
);

INSERT INTO types (name, class) VALUES 
(
    'parakeet',
    'bird'
),
(
    'dog',
    'mammal'
),
(
    'salamander',
    'amphibian'
);

INSERT INTO pets (name, type) VALUES 
(
    'Robert',
    (SELECT id FROM types WHERE name='dog')
),
(
    'Jennifer',
    (SELECT id FROM types WHERE name='salamander')
),
(
    'Beaker',
    (SELECT id FROM types WHERE name='parakeet')
),
(
    'Cornelius',
    (SELECT id FROM types WHERE name='parakeet')
);
