SELECT a.name, MIN(o.occurred_at) FROM accounts a JOIN orders o ON a.id=o.account_id GROUP BY a.name order by MIN(o.occurred_at) LIMIT 1; 
////////////////////////////////////////
SELECT a.name, o.occurred_at
FROM accounts a
JOIN orders o
ON a.id = o.account_id
ORDER BY occurred_at
LIMIT 1;
///////////////////////////////////////////
SELECT a.name, SUM(total_amt_usd) FROM accounts a JOIN orders o ON a.id=o.account_id GROUP BY a.name;
///////////////////////////////////////////
SELECT a.name, SUM(total_amt_usd) total_sales
FROM orders o
JOIN accounts a
ON a.id = o.account_id
GROUP BY a.name;
/////////////////////////////////////////////////
SELECT a.name, w.channel, MAX(w.occurred_at)  FROM accounts a JOIN web_events w  ON a.id=w.account_id GROUP BY w.channel, a.name ORDER BY MAX(w.occurred_at) desc LIMIT 1;
////////////////////////////////////////////////
SELECT w.occurred_at, w.channel, a.name
FROM web_events w
JOIN accounts a
ON w.account_id = a.id 
ORDER BY w.occurred_at DESC
LIMIT 1;
///////////////////////////////////////////////////
SELECT channel, COUNT(channel) FROM web_events GROUP BY channel;
///////////////////////////////////////////////////
