-- 3. Stop & search by ethnicity and outcome
SELECT 
    sns."Self-defined ethnicity" ,
    sns."Outcome" ,
    COUNT(*) AS searches,
    ROUND(100.0 * COUNT(*) / SUM(COUNT(*)) OVER 
        (PARTITION BY sns."Self-defined ethnicity" ), 1) AS outcome_pct
FROM "Stop_n_Search" sns 
GROUP BY sns."Self-defined ethnicity" , sns."Outcome";