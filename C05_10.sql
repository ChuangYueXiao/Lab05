SELECT shohin_catalg, AVG(sell_price)
  FROM Shohin
 GROUP BY shohin_catalg
HAVING AVG(sell_price) > (SELECT AVG(sell_price)
                               FROM Shohin);


SELECT shohin_id, 
       shohin_name, 
       sell_price,
       (SELECT AVG(sell_price)
          FROM Shohin
         GROUP BY shohin_catalg) AS avg_price
  FROM Shohin;