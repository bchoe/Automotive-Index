/*\c bryanchoe;

CREATE USER indexed_cars_user;*/

/*DROP DATABASE IF EXISTS indexed_cars;*/

/*CREATE DATABASE indexed_cars WITH OWNER indexed_cars_user;*/

/*\c indexed_cars indexed_cars_user;

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
\i scripts/car_model_data.sql*/



CREATE INDEX make_titles
  ON car_models (make_title);

CREATE INDEX model_titles
  ON car_models (model_title);

SELECT DISTINCT make_title FROM car_models
WHERE make_code = 'LAM';

SELECT DISTINCT model_title FROM car_models
WHERE make_code = 'NISSAN' AND model_code = 'GT-R';

SELECT make_code, model_code, model_title FROM car_models
WHERE make_code = 'LAM';

SELECT * FROM car_models
WHERE year BETWEEN '2010' AND '2015';

SELECT * FROM car_models
WHERE year = '2010';

--Timing
--Lamborghini 61.905ms
--GT-R 58.962ms
--Lamborghini all 57.789
--2010 to 2015 177.794ms
--2010 85.947ms

