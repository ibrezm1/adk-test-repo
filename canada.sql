CREATE OR REPLACE TABLE
  `canada.canada_population_history` (
    Province_ID STRING NOT NULL,
    Census_Year DATE NOT NULL,
    Population_Count INT64 NOT NULL
  )
OPTIONS(
  description = 'Historical population data for Canadian Provinces and Territories, used for BQML forecasting.'
);

INSERT INTO `canada.canada_population_history` (Province_ID, Census_Year, Population_Count)
VALUES
  -- 2021 Census Data
  ('Newfoundland', DATE '2021-05-14', 510550),
  ('Prince Edw', DATE '2021-05-14', 154331),
  ('Nova Scot', DATE '2021-05-14', 969383),
  ('New Brun', DATE '2021-05-14', 775610),
  ('Quebec', DATE '2021-05-14', 8501833),
  ('Ontario', DATE '2021-05-14', 14223942),
  ('Manitoba', DATE '2021-05-14', 1342153),
  ('Saskatche', DATE '2021-05-14', 1132505),
  ('Alberta', DATE '2021-05-14', 4262635),
  ('British Col', DATE '2021-05-14', 5000879),
  ('Yukon', DATE '2021-05-14', 40232),
  ('Northwest', DATE '2021-05-14', 41070),
  ('Nunavut', DATE '2021-05-14', 36858),

  -- 2016 Census Data
  ('Newfoundland', DATE '2016-05-10', 519716),
  ('Prince Edw', DATE '2016-05-10', 142907),
  ('Nova Scot', DATE '2016-05-10', 923598),
  ('New Brun', DATE '2016-05-10', 747101),
  ('Quebec', DATE '2016-05-10', 8164361),
  ('Ontario', DATE '2016-05-10', 13448494),
  ('Manitoba', DATE '2016-05-10', 1278365),
  ('Saskatche', DATE '2016-05-10', 1098352),
  ('Alberta', DATE '2016-05-10', 4067175),
  ('British Col', DATE '2016-05-10', 4648055),
  ('Yukon', DATE '2016-05-10', 35874),
  ('Northwest', DATE '2016-05-10', 41786),
  ('Nunavut', DATE '2016-05-10', 35944);



  ------

  CREATE OR REPLACE MODEL
  `canada.population_forecaster`
OPTIONS(
  model_type = 'ARIMA_PLUS',
  time_series_timestamp_col = 'Census_Year', -- The date column
  time_series_data_col = 'Population_Count', -- The column to be forecasted
  time_series_id_col = 'Province_ID',        -- The column identifying each separate series
  horizon = 5,                               -- Forecast 5 steps (years) ahead
  auto_arima_max_order = 5                   -- Optional: tunes the model for better accuracy
)
AS
SELECT
  Province_ID,
  Census_Year,
  Population_Count
FROM
  `canada.canada_population_history`
ORDER BY
  Province_ID,
  Census_Year;

--------------------

SELECT
  Province_ID,
  forecast_timestamp,
  forecast_value,
  prediction_interval_lower_bound,
  prediction_interval_upper_bound
FROM
  ML.FORECAST(
    MODEL `canada.population_forecaster`,
    STRUCT(5 AS horizon) -- Retrieve the 5-step forecast
)
ORDER BY
  Province_ID,
  forecast_timestamp;