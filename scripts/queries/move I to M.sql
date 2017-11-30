insert into M_Allocation_Local_Val (
	 Stylecolor         
	,Location           
	,Typology          
	,EventYear          
	,Allocation_Local_Val     
)
select 
	 Stylecolor         
	,Location           
	,Typology           
	,EventYear          
	,cast(Allocation_Local_Val as decimal(15,3))
from I_Allocation_Local_Val;

insert into M_Allocation_Qty (
	 Item         
	,Location           
	,Typology          
	,EventYear          
	,Allocation_Local_Val     
)
select 
	 Item         
	,Location           
	,Typology           
	,EventYear          
	,cast(Allocation_Local_Val as decimal(15,3))
from I_Allocation_Qty;

insert into M_Allocation_Val (
	 Stylecolor         
	,Location           
	,Typology          
	,EventYear          
	,Allocation_Local_Val     
)
select 
	 Stylecolor         
	,Location           
	,Typology           
	,EventYear          
	,cast(Allocation_Local_Val as decimal(15,3))
from I_Allocation_Val;


