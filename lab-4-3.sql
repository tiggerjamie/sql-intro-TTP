-- Who hit the most home runs in 2019, and what team did they play for?

-- Expected result:
--
-- +---------------+------------+-----------+-----------+
-- | New York Mets | Pete       | Alonso    | 53        |
-- +---------------+------------+-----------+-----------+

SELECT name, first_name, last_name, home_runs
FROM stats INNER JOIN players on players.id = stats.player_id
INNER JOIN teams on stats.team_id = teams.id
WHERE year == 2019
GROUP BY first_name, last_name, home_runs
ORDER BY home_runs DESC
LIMIT 1;