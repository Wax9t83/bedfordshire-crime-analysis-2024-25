-- 1. Monthly crime trend by type
SELECT 
    strftime('%Y-%m', c."Month" ) AS month,
    c."Crime type" ,
    COUNT(*) AS total_crimes
FROM "Crimes" c 
GROUP BY month, c."Crime type" 
ORDER BY month;