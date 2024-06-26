INSERT INTO worker (name, birthday, level, salary) VALUES
                                                       ('Ed Alter', '1957-08-30', 'Middle', 2700),
                                                       ('Sara Brown', '1998-11-02', 'Junior', 1280),
                                                       ('Greg Doe', '2002-01-25', 'Trainee', 800),
                                                       ('Edgar Poel', '1989-04-04', 'Senior', 5820),
                                                       ('Viktoria Traum', '1987-05-12', 'Middle', 3100),
                                                       ('Gretta Vogel', '1999-10-14', 'Middle', 2500),
                                                       ('Stephan Kreik', '1999-01-22', 'Junior', 1580),
                                                       ('Kris Walterberg', '2004-11-05', 'Trainee', 800),
                                                       ('Tom Vital', '1987-11-14', 'Senior', 5520),
                                                       ('Ann Krum', '1998-07-22', 'Middle', 3150);


INSERT INTO client (name) VALUES
    ('Adam Ruffal'),
    ('Kristana Pfifer'),
    ('Ben Bugg'),
    ('Lidia Spondar'),
    ('Alex Kosh');


INSERT INTO project (client_id, start_date, finish_date) VALUES
    (1, '2023-01-05', '2026-12-28'),
    (2, '2024-03-21', '2024-04-25'),
    (1, '2024-02-02', '2025-03-03'),
    (3, '2019-09-18', '2028-01-10'),
    (4, '2021-07-17', '2025-09-05'),
    (5, '2019-08-17', '2021-11-21'),
    (3, '2024-01-18', '2028-09-24'),
    (3, '2020-10-08', '2024-11-10'),
    (1, '2023-04-28', '2024-09-25'),
    (5, '2019-11-07', '2027-01-01');


INSERT INTO project_worker (project_id, worker_id) VALUES
    (1, 2),
    (1, 10),
    (1, 8),
    (2, 7),
    (3, 3),
    (3, 5),
    (3, 6),
    (3, 7),
    (3, 9),
    (4, 1),
    (4, 4),
    (4, 8),
    (5, 1),
    (6, 2),
    (6, 10),
    (6, 9),
    (7, 3),
    (7, 4),
    (7, 8),
    (8, 1),
    (8, 10),
    (8, 8),
    (9, 4),
    (9, 5),
    (10, 1),
    (10, 5),
    (10, 7),
    (10,10);