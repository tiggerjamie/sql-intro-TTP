-- How many lifetime hits does Barry Bonds have?

-- Expected result:
-- 2935

SELECT players.first_name, players.last_name, sum(stats.hits)
FROM stats INNER JOIN players on players.id = stats.player_id
WHERE players.first_name == "Barry" AND last_name == "Bonds"
GROUP BY players.id, players.last_name