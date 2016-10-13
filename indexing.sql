\c bryanchoe;

CREATE USER indexed_cars_user;

DROP DATABASE IF EXISTS indexed_cars;

\c indexed_cars_user;

CREATE DATABASE indexed_cars OWNER indexed_cars_user;

\i scripts/car_models.sql

\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql

CREATE INDEX make_titles
  ON car_models (make_title);

 CREATE INDEX model_titles
  ON car_models (model_title);