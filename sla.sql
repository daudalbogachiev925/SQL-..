-- SLA: критические должны закрываться за 4 часа
SELECT id, subject,
  ROUND((julianday(closed)-julianday(opened))*24, 1) AS hours,
  CASE WHEN (julianday(closed)-julianday(opened))*24 <= 4
       THEN 'в SLA' ELSE 'нарушено' END AS sla
FROM tickets WHERE priority='critical';

-- Просроченные открытые (> 24ч)
SELECT id, subject FROM tickets
WHERE closed IS NULL
  AND (julianday('now') - julianday(opened))*24 > 24;
