SELECT SUM(poster_qty) FROM orders;
SELECT SUM(standard_qty) FROM orders;
SELECT SUM(total_amt_usd) FROM orders;
SELECT standard_amt_usd + gloss_amt_usd AS total_standard_gloss
FROM orders;
SELECT SUM(standard_amt_usd)/SUM(standard_qty) AS standard_price_per_unit
FROM orders;
--SELECT SUM(standard_amt_usd/standard_qty) FROM orders;