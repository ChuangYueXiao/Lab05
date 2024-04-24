SELECT shohin_bunrui, cnt_shohin
  FROM (SELECT *
          FROM (SELECT shohin_catalg, COUNT(*) AS cnt_shohin
                  FROM Shohin
                 GROUP BY shohin_catalg) ShohinSum
         WHERE cnt_shohin = 4) ShohinSum2;