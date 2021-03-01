
 WITH cte AS (
    SELECT 
        Name, 
        Calls, 
        Date, 
        ROW_NUMBER() OVER (
            PARTITION BY 
               Name, 
        Calls, 
        Date
            ORDER BY 
               Name, 
        Calls, 
        Date
        ) row_num
     FROM 
        [CallStats]
)
DELETE FROM cte
WHERE row_num > 1;
