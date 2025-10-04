-- ================================================================
-- MIS581 — CRYPTO CAPSTONE (PostgreSQL, pgAdmin-friendly)
-- Schema, Tables, Indexes, Views, and Sanity Checks
-- ================================================================

-- 0) Setup schema & search path
CREATE SCHEMA IF NOT EXISTS crypto;
SET search_path = crypto, public;

-- 1) Drop objects so the script is reproducible
DROP VIEW  IF EXISTS vw_tier_profile         CASCADE;
DROP VIEW  IF EXISTS vw_category_performance CASCADE;
DROP VIEW  IF EXISTS vw_coin_metrics         CASCADE;

DROP TABLE IF EXISTS coin_summary    CASCADE;
DROP TABLE IF EXISTS coin_resilience CASCADE;

-- 2) Recreate tables (match your CSV headers)
CREATE TABLE coin_summary (
  coin          TEXT PRIMARY KEY,
  category      TEXT,
  tier          TEXT,
  mean_price    NUMERIC,
  median_price  NUMERIC,
  vol_daily     NUMERIC,
  roi_1y_med    NUMERIC,
  roi_3y_med    NUMERIC,
  roi_5y_med    NUMERIC,
  n_days        INTEGER
);

CREATE TABLE coin_resilience (
  coin           TEXT PRIMARY KEY,
  category       TEXT,
  tier           TEXT,
  max_drawdown   NUMERIC,
  recovery_days  NUMERIC
);

-- Helpful indexes
CREATE INDEX IF NOT EXISTS idx_summary_category ON coin_summary(category);
CREATE INDEX IF NOT EXISTS idx_summary_tier     ON coin_summary(tier);
CREATE INDEX IF NOT EXISTS idx_res_coin         ON coin_resilience(coin);

-- 3) (Load data now via pgAdmin GUI)
-- Right-click crypto.coin_summary  → Import/Export… → Import
--   File: .../Data/processed/coin_summary.csv   (CSV, Header ✓, comma)
-- Right-click crypto.coin_resilience → Import/Export… → Import
--   File: .../Data/processed/coin_resilience.csv (CSV, Header ✓, comma)

-- 4) Quick validation counts (run after importing)
-- SELECT COUNT(*) FROM crypto.coin_summary;
-- SELECT COUNT(*) FROM crypto.coin_resilience;

-- 5) Analysis views

-- 5a) Coin-level joined metrics
CREATE OR REPLACE VIEW vw_coin_metrics AS
SELECT
    s.coin,
    s.category,
    s.tier,
    s.roi_1y_med,
    s.roi_3y_med,
    s.roi_5y_med,
    s.vol_daily,
    s.n_days,
    r.max_drawdown,
    r.recovery_days
FROM coin_summary s
LEFT JOIN coin_resilience r
  USING (coin);

-- 5b) Category (narrative) performance
CREATE OR REPLACE VIEW vw_category_performance AS
SELECT
    category,
    COUNT(*)               AS n_coins,
    AVG(roi_1y_med)        AS avg_roi_1y,
    STDDEV_POP(roi_1y_med) AS std_roi_1y,
    AVG(vol_daily)         AS avg_vol,
    AVG(max_drawdown)      AS avg_drawdown,
    AVG(recovery_days)     AS avg_recovery
FROM vw_coin_metrics
GROUP BY category
ORDER BY avg_roi_1y DESC NULLS LAST;

-- 5c) Tier profile (Blue Chip / Major / Speculative)
CREATE OR REPLACE VIEW vw_tier_profile AS
SELECT
    tier,
    COUNT(*)               AS n_coins,
    AVG(roi_1y_med)        AS avg_roi_1y,
    STDDEV_POP(roi_1y_med) AS std_roi_1y,
    AVG(vol_daily)         AS avg_vol,
    AVG(max_drawdown)      AS avg_drawdown,
    AVG(recovery_days)     AS avg_recovery
FROM vw_coin_metrics
GROUP BY tier
ORDER BY avg_roi_1y DESC NULLS LAST;

-- 6) Sanity selects
-- (Run these to preview)
-- SELECT * FROM vw_coin_metrics            LIMIT 10;
-- SELECT * FROM vw_category_performance;
-- SELECT * FROM vw_tier_profile;

 -- Coin-level detail (joined table)
SELECT * 
FROM crypto.vw_coin_metrics
LIMIT 10;

-- Performance by narrative category
SELECT * 
FROM crypto.vw_category_performance;

-- Tier profile (Blue Chip / Major / Speculative)
SELECT * 
FROM crypto.vw_tier_profile;


 