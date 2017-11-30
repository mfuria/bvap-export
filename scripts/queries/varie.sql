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
