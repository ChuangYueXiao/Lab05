CREATE VIEW ShohinSumJim (shohin_catalg, cnt_shohin)
AS
SELECT shohin_catalg, cnt_shohin
  FROM ShohinSum
 WHERE shohin_catalg = '辦公用品';