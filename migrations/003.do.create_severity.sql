DROP TABLE IF EXISTs severity;
CREATE TABLE severity (
  id INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  name VARCHAR NOT NULL
);

INSERT INTO severity(name)
VALUES
  ('Low'),
  ('Mild'),
  ('Medium'),
  ('High'),
  ('Extreme');