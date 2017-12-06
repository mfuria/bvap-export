select i.department, sum(to_number(q.allocation_qty,'99999999')), count(*) from i_allocation_qty q join i_item i on i.item = q.item group by 1
select DEPT4F, sum(to_number(substring(qonc4f, 1,6),'999999')), sum(to_number(expr1,'99999')) from s_output o group by 1

delete from i_item
delete from i_location
delete from i_allocation_qty


select * from crosstab(

'select 
i.stylecolor,
q.location,
q.typology,
q.eventyear,
i.progr_size,
coalesce(sum(to_number(allocation_qty,''9'')),0) as allocation_qty
from i_allocation_qty q
join i_item i on i.item = q.item
where progr_size in (''01'',''10'')
group by 1, 2, 3, 4, 5
order by 1, 2, 3, 4, 5
',
'select distinct progr_size from i_item order by 1'
--$$VALUES ('01'::text), ('10')$$
) as ct(
	stylecolor varchar(100), 
	location varchar(100), 
	typology varchar(100), 
	eventyear varchar(100), 
	"01" numeric,
	"02" numeric,
	"03" numeric,
	"04" numeric,
	"05" numeric,
	"06" numeric,
	"07" numeric,
	"08" numeric,
	"09" numeric,
	"10" numeric,
	"11" numeric,
	"12" numeric,
	"13" numeric,
	"14" numeric,
	"15" numeric,
	"16" numeric,
	"17" numeric,
	"18" numeric,
	"19" numeric,
	"23" numeric,
	"28" numeric
)





select * from crosstab('

select stylecolor,
sum(to_number(allocation_qty,'9')) as allocation_qty
from i_allocation_qty q
join i_item i on i.item = q.item

'
)


SELECT 
	i.Stylecolor
	,q.Location
	,q.Typology
	,q.EventYear
    ,SUM(q.Allocation_Qty) AS Allocation_Qty
FROM M_Allocation_Qty q 
JOIN I_Item i
ON q.Item = q.Item
GROUP BY 
	i.Stylecolor
	,q.Location
	,q.Typology
	,q.EventYear;

















SELECT 
	MINI_TREE_location.Location,
	MINI_TREE_location.[Location Desc],
	MINI_TREE_location.Country,
	MINI_TREE_location.[Country Desc],
	MINI_TREE_location.Zone,
	MINI_Tree_Item.Stylecolor,
	MINI_Tree_Item.Style,
	MINI_Tree_Item.Material,
	MINI_Tree_Item.Color,
	MINI_Tree_Item.Department,
	[Allocation Qty STYCOL].[Allocation Qty],
	[I_Allocation Val].[Allocation Val],
	[I_Allocation Local Val].[Allocation Local Val]
FROM 



	(
		[Allocation Qty STYCOL] INNER JOIN 
		(
			[I_Allocation Val] INNER JOIN 
			(
				[I_Allocation Local Val] INNER JOIN MINI_Tree_Item 
				ON [I_Allocation Local Val].Stylecolor = MINI_Tree_Item.Stylecolor
			) 
		ON [I_Allocation Val].Stylecolor = MINI_Tree_Item.Stylecolor
	) 
	ON [Allocation Qty STYCOL].Stylecolor = MINI_Tree_Item.Stylecolor
) 
INNER JOIN MINI_TREE_location 
ON (
	[Allocation Qty STYCOL].Location = MINI_TREE_location.Location
) AND (
	[I_Allocation Val].Location = MINI_TREE_location.Location
) AND (
	[I_Allocation Local Val].Location = MINI_TREE_location.Location
);
