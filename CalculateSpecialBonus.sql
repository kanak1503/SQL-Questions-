SELECT employee_id,
CASE
WHEN employee_id % 2 = 1 AND name not like 'M%' THEN salary *1
ELSE 0
END AS bonus
FROM employees order by employee_id;
