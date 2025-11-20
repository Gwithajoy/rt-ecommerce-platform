CREATE DATABASE IF NOT EXISTS analytics;
USE analytics;

CREATE TABLE IF NOT EXISTS dim_user (
  user_id     VARCHAR(64) PRIMARY KEY,
  join_dt     DATETIME,
  country     VARCHAR(32),
  device_pref VARCHAR(16)
);

CREATE TABLE IF NOT EXISTS dim_product (
  product_id VARCHAR(64) PRIMARY KEY,
  category   VARCHAR(64),
  price      DECIMAL(18,2),
  currency   VARCHAR(8)
);

CREATE TABLE IF NOT EXISTS fact_user_activity (
  window_start DATETIME,
  window_end   DATETIME,
  user_id      VARCHAR(64),
  product_id   VARCHAR(64),
  event_type   VARCHAR(32),
  event_count  INT,
  device       VARCHAR(16),
  country      VARCHAR(32),
  PRIMARY KEY (window_start, user_id, product_id, event_type)
);
