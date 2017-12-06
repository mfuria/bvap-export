create view S_QTY_PIVOTTATA_SU_SIZE as 
with q as (

select 
 Item
,Location
,Typology
,EventYear
,to_number(Allocation_Qty,'9') as Allocation_Qty
from I_Allocation_Qty

)
SELECT 
i.Stylecolor
,i.PROGR_SIZE
,q.Location
,q.Typology
,q.EventYear
,Sum(q.Allocation_Qty) AS SumOfAllocation_Qty
,Sum(m."C01" * q.Allocation_Qty) AS Expr1
,Sum(m."C02" * q.Allocation_Qty) AS Expr2
,Sum(m."C03" * q.Allocation_Qty) AS Expr3
,Sum(m."C04" * q.Allocation_Qty) AS Expr4
,Sum(m."C05" * q.Allocation_Qty) AS Expr5
,Sum(m."C06" * q.Allocation_Qty) AS Expr6
,Sum(m."C07" * q.Allocation_Qty) AS Expr7
,Sum(m."C08" * q.Allocation_Qty) AS Expr8
,Sum(m."C09" * q.Allocation_Qty) AS Expr9
,Sum(m."C10" * q.Allocation_Qty) AS Expr10
,Sum(m."C11" * q.Allocation_Qty) AS Expr11
,Sum(m."C12" * q.Allocation_Qty) AS Expr12
,Sum(m."C13" * q.Allocation_Qty) AS Expr13
,Sum(m."C14" * q.Allocation_Qty) AS Expr14
,Sum(m."C15" * q.Allocation_Qty) AS Expr15
,Sum(m."C16" * q.Allocation_Qty) AS Expr16
,Sum(m."C17" * q.Allocation_Qty) AS Expr17
,Sum(m."C18" * q.Allocation_Qty) AS Expr18
,Sum(m."C19" * q.Allocation_Qty) AS Expr19
,Sum(m."C20" * q.Allocation_Qty) AS Expr20
,Sum(m."C21" * q.Allocation_Qty) AS Expr21
,Sum(m."C22" * q.Allocation_Qty) AS Expr22
,Sum(m."C23" * q.Allocation_Qty) AS Expr23
,Sum(m."C24" * q.Allocation_Qty) AS Expr24
,Sum(m."C25" * q.Allocation_Qty) AS Expr25
,Sum(m."C26" * q.Allocation_Qty) AS Expr26
,Sum(m."C27" * q.Allocation_Qty) AS Expr27
,Sum(m."C28" * q.Allocation_Qty) AS Expr28
,Sum(m."C29" * q.Allocation_Qty) AS Expr29
,Sum(m."C30" * q.Allocation_Qty) AS Expr30
,Sum(m."C31" * q.Allocation_Qty) AS Expr31
,Sum(m."C32" * q.Allocation_Qty) AS Expr32
,Sum(m."C33" * q.Allocation_Qty) AS Expr33
,Sum(m."C34" * q.Allocation_Qty) AS Expr34
,Sum(m."C35" * q.Allocation_Qty) AS Expr35
,Sum(m."C36" * q.Allocation_Qty) AS Expr36
,Sum(m."C37" * q.Allocation_Qty) AS Expr37
,Sum(m."C38" * q.Allocation_Qty) AS Expr38
,Sum(m."C39" * q.Allocation_Qty) AS Expr39
,Sum(m."C40" * q.Allocation_Qty) AS Expr40
,Sum(m."C41" * q.Allocation_Qty) AS Expr41
,Sum(m."C42" * q.Allocation_Qty) AS Expr42
,Sum(m."C43" * q.Allocation_Qty) AS Expr43
,Sum(m."C44" * q.Allocation_Qty) AS Expr44
,Sum(m."C45" * q.Allocation_Qty) AS Expr45
,Sum(m."C46" * q.Allocation_Qty) AS Expr46
,Sum(m."C47" * q.Allocation_Qty) AS Expr47
,Sum(m."C48" * q.Allocation_Qty) AS Expr48
,Sum(m."C49" * q.Allocation_Qty) AS Expr49
,Sum(m."C50" * q.Allocation_Qty) AS Expr50
,Sum(m."C51" * q.Allocation_Qty) AS Expr51
,Sum(m."C52" * q.Allocation_Qty) AS Expr52
FROM q 
INNER JOIN I_Item i ON q.Item = i.Item 
INNER JOIN "MATRICE_TAGLIE" m ON m."PROGR_SIZE" = i.PROGR_SIZE
GROUP BY 1,2,3,4,5;
