DROP TABLE IF EXISTS meals;
CREATE TABLE meals(
  id INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  user_id INT REFERENCES users(id) ON DELETE CASCADE,
  created timestamptz DEFAULT NOW()
);

DROP TABLE IF EXISTS food;
CREATE TABLE food(
  name varchar,
  ndbno varchar PRIMARY KEY 
);
DROP TABLE IF EXISTS plates;
CREATE TABLE plates(
  id INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  food varchar REFERENCES food(ndbno) ON DELETE CASCADE,
  meal INT REFERENCES meals(id) ON DELETE CASCADE

);
DROP TABLE IF EXISTS ingredients;
CREATE TABLE ingredients(
  id INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  name varchar,
  food varchar REFERENCES food(ndbno) ON DELETE CASCADE
);