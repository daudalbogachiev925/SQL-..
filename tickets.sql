-- Тикеты по агентам
SELECT a.name, COUNT(*) AS n,
       AVG(julianday(t.closed) - julianday(t.opened)) * 24 AS avg_hours
FROM agents a JOIN tickets t ON a.id=t.agent_id
GROUP BY a.id ORDER BY n DESC;

-- Открытые тикеты
SELECT * FROM tickets WHERE closed IS NULL;

-- Тикеты по приоритету
SELECT priority, COUNT(*) FROM tickets GROUP BY priority;
