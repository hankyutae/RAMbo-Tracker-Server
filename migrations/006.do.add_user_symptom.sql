DROP TABLE IF EXISTS user_symptom;

CREATE TABLE user_symptom(
  id INTEGER generated by default as identity PRIMARY KEY,
  type varchar NOT NULL,
  user_id INTEGER REFERENCES users(id),
  min_time INTERVAL default '30 minutes',
  max_time INTERVAL default '6 hours'
);