create view S_DATI as

SELECT 
	q.Location,
	q.Stylecolor,
	right(q.eventyear,2) as EVEN4F,
	d.CLIENT_ID AS CLID4F,
	rpad(d.dest_code,2,'0') AS DEST4F,
	s.Department AS DEPT4F,
	s.Style AS MDPR4F,
	s.Material AS CPAR4F,
	s.Color AS COL54F,
	s.Size_Range AS CTG14F,
	ltrim(to_char(q.SumOfAllocation_Qty,'00000')) AS QONC4F,
	ltrim(to_char(q.Expr1,'00000')) AS Expr1,
	ltrim(to_char(q.Expr2,'00000')) AS Expr2,
	ltrim(to_char(q.Expr3,'00000')) AS Expr3,
	ltrim(to_char(q.Expr4,'00000')) AS Expr4,
	ltrim(to_char(q.Expr5,'00000')) AS Expr5,
	ltrim(to_char(q.Expr6,'00000')) AS Expr6,
	ltrim(to_char(q.Expr7,'00000')) AS Expr7,
	ltrim(to_char(q.Expr8,'00000')) AS Expr8,
	ltrim(to_char(q.Expr9,'00000')) AS Expr9,
	ltrim(to_char(q.Expr10,'00000')) AS Expr10,
	ltrim(to_char(q.Expr11,'00000')) AS Expr11,
	ltrim(to_char(q.Expr12,'00000')) AS Expr12,
	ltrim(to_char(q.Expr13,'00000')) AS Expr13,
	ltrim(to_char(q.Expr14,'00000')) AS Expr14,
	ltrim(to_char(q.Expr15,'00000')) AS Expr15,
	ltrim(to_char(q.Expr16,'00000')) AS Expr16,
	ltrim(to_char(q.Expr17,'00000')) AS Expr17,
	ltrim(to_char(q.Expr18,'00000')) AS Expr18,
	ltrim(to_char(q.Expr19,'00000')) AS Expr19,
	ltrim(to_char(q.Expr20,'00000')) AS Expr20,
	ltrim(to_char(q.Expr21,'00000')) AS Expr21,
	ltrim(to_char(q.Expr22,'00000')) AS Expr22,
	ltrim(to_char(q.Expr23,'00000')) AS Expr23,
	ltrim(to_char(q.Expr24,'00000')) AS Expr24,
	ltrim(to_char(q.Expr25,'00000')) AS Expr25,
	ltrim(to_char(q.Expr26,'00000')) AS Expr26,
	ltrim(to_char(q.Expr27,'00000')) AS Expr27,
	ltrim(to_char(q.Expr28,'00000')) AS Expr28,
	ltrim(to_char(q.Expr29,'00000')) AS Expr29,
	ltrim(to_char(q.Expr30,'00000')) AS Expr30,
	ltrim(to_char(q.Expr31,'00000')) AS Expr31,
	ltrim(to_char(q.Expr32,'00000')) AS Expr32,
	ltrim(to_char(q.Expr33,'00000')) AS Expr33,
	ltrim(to_char(q.Expr34,'00000')) AS Expr34,
	ltrim(to_char(q.Expr35,'00000')) AS Expr35,
	ltrim(to_char(q.Expr36,'00000')) AS Expr36,
	ltrim(to_char(q.Expr37,'00000')) AS Expr37,
	ltrim(to_char(q.Expr38,'00000')) AS Expr38,
	ltrim(to_char(q.Expr39,'00000')) AS Expr39,
	ltrim(to_char(q.Expr40,'00000')) AS Expr40,
	ltrim(to_char(q.Expr41,'00000')) AS Expr41,
	ltrim(to_char(q.Expr42,'00000')) AS Expr42,
	ltrim(to_char(q.Expr43,'00000')) AS Expr43,
	ltrim(to_char(q.Expr44,'00000')) AS Expr44,
	ltrim(to_char(q.Expr45,'00000')) AS Expr45,
	ltrim(to_char(q.Expr46,'00000')) AS Expr46,
	ltrim(to_char(q.Expr47,'00000')) AS Expr47,
	ltrim(to_char(q.Expr48,'00000')) AS Expr48,
	ltrim(to_char(q.Expr49,'00000')) AS Expr49,
	ltrim(to_char(q.Expr50,'00000')) AS Expr50,
	ltrim(to_char(q.Expr51,'00000')) AS Expr51,
	ltrim(to_char(q.Expr52,'00000')) AS Expr52,
	repeat(' ',6) AS DOOR4F
	
FROM style_color s
INNER JOIN S_QTY_PIVOTTATA_SU_SIZE q ON q.Stylecolor = s.Stylecolor 
INNER JOIN DestCode d ON d.Location = q.Location

ORDER BY q.Location, q.Stylecolor;