create table I_Allocation_Local_Val (
	 Stylecolor         VARCHAR(50)
	,Location           vARCHAR(50)
	,Typology           vaRCHAR(50)
	,EventYear          varCHAR(50)
	,Allocation_Local_Val     varcHAR(50)
);

CREATE TABLE I_Allocation_Qty (
	 Item                VARCHAR(50)
	,Location           vARCHAR(50)
	,Typology           vaRCHAR(50)
	,EventYear          varCHAR(50)
	,Allocation_Qty     varcHAR(50)
);

create table I_Allocation_Val (
	 Stylecolor         VARCHAR(50)
	,Location           vARCHAR(50)
	,Typology           vaRCHAR(50)
	,EventYear          varCHAR(50)
	,Allocation_Val     varcHAR(50)
);

/*
create table I_ana_evento (
)

create table I_ana_typology (
)
*/

create table I_Regional_Bulk_Local (
	 Stylecolor                VARCHAR(50)
	,Regional_Bulk             vARCHAR(50)
	,Typology                  vaRCHAR(50)
	,EventYear                 varCHAR(50)
	,Regional_Bulk_Local_Val   varcHAR(50)
);

create table I_Regional_Bulk_Val (
	 Stylecolor                VARCHAR(50)
	,Regional_Bulk             vARCHAR(50)
	,Typology                  vaRCHAR(50)
	,EventYear                 varCHAR(50)
	,Regional_Bulk_Val         varcHAR(50)
);

create table I_Regional_Bulk (
	 Stylecolor                VARCHAR(50)
	,Regional_Bulk             vARCHAR(50)
	,Typology                  vaRCHAR(50)
	,EventYear                 varCHAR(50)
	,Regional_Bulk_Qty         varcHAR(50)
);

/*
create table I_Tree_Item (
)

create table I_Tree Key_location (
)
*/







CREATE TABLE I_Item (     
	 Item	                           VARCHAR(100) 
	,Item_Desc	                       VARCHAR(100)
	,Color	                           VARCHAR(100)
	,Color_Desc                        VARCHAR(100)
	,Progr_Size	                       VARCHAR(100)
	,Progr_Size_Desc	               VARCHAR(100)
	,Range_Position	                   VARCHAR(100)
	,Range_Position_Desc	           VARCHAR(100)
	,Department	                       VARCHAR(100)
	,Department_Desc	               VARCHAR(100)
	,Planning_Attribute	               VARCHAR(100)
	,Planning_Attribute_Desc	       VARCHAR(100)
	,Material	                       VARCHAR(100)
	,Material_Desc	                   VARCHAR(100)
	,Stylecolor	                       VARCHAR(100)
	,Stylecolor_Desc	               VARCHAR(100)
	,Size_Range	                       VARCHAR(100)
	,Size_Range_Desc	               VARCHAR(100)
	,Style	                           VARCHAR(100)
	,Style_Desc	                       VARCHAR(100)
	,Size	                           VARCHAR(100)
	,Size_Desc	                       VARCHAR(100)
	,All_items	                       VARCHAR(100)
	,All_items_Desc	                   VARCHAR(100)
	,Class	                           VARCHAR(100)
	,Class_Desc	                       VARCHAR(100)
	,Iconic_material	               VARCHAR(100)
	,Iconic_material_Desc	           VARCHAR(100)
	,Secondary_Attribute_1	           VARCHAR(100)
	,Secondary_Attribute_1_Desc	       VARCHAR(100)
	,Subclass	                       VARCHAR(100)
	,Subclass_Desc	                   VARCHAR(100)
	,SubDepartment	                   VARCHAR(100)
	,SubDepartment_Desc	               VARCHAR(100)
	,Fitting	                       VARCHAR(100)
	,Fitting_Desc                      VARCHAR(100)
	,StyleMaterial	                   VARCHAR(100)
	,StyleMaterial_Desc	               VARCHAR(100)
	,Macro_Color	                   VARCHAR(100)
	,Macro_Color_Desc	               VARCHAR(100)
	,Galvanic	                       VARCHAR(100)
	,Galvanic_Desc	                   VARCHAR(100)
	,Fashion_Class	                   VARCHAR(100)
	,Fashion_Class_Desc	               VARCHAR(100)
	,Gender	                           VARCHAR(100)
	,Gender_Desc	                   VARCHAR(100)
	,Shape	                           VARCHAR(100)
	,Shape_Desc	                       VARCHAR(100)
	,Price_Range	                   VARCHAR(100)
	,Price_Range_Desc	               VARCHAR(100)
	,Use_Occasion	                   VARCHAR(100)
	,Use_Occasion_Desc	               VARCHAR(100)
	,Height	                           VARCHAR(100)
	,Height_Desc	                   VARCHAR(100)
	,Function	                       VARCHAR(100)
	,Function_Desc	                   VARCHAR(100)
	,Core_Material	                   VARCHAR(100)
	,Core_Material_Desc	               VARCHAR(100)
	,Color_Mood	                       VARCHAR(100)
	,Color_Mood_Desc	               VARCHAR(100)
	,Name	                           VARCHAR(100)
	,Name_Desc	                       VARCHAR(100)
	,Material_Class	                   VARCHAR(100)
	,Material_Class_Desc	           VARCHAR(100)
	,Product_Size	                   VARCHAR(100)
	,Product_Size_Desc	               VARCHAR(100)
	,Limited_Class	                   VARCHAR(100)
	,Limited_Class_Desc	               VARCHAR(100)
	,Heel_Height	                   VARCHAR(100)
	,Heel_Height_Desc	               VARCHAR(100)
	,Bottle_Size	                   VARCHAR(100)
	,Bottle_Size_Desc	               VARCHAR(100)
	,Key_RP_Attributes	               VARCHAR(100)
	,Key_RP_Attributes_Desc	           VARCHAR(100)
	,Size_progression	               VARCHAR(100)
	,Size_position_13                  VARCHAR(100) 
);


create table I_LOCATION (
	 Key_location                VARCHAR(100)
	,Key_location_Desc           VARCHAR(100)
	,Location                    VARCHAR(100)
	,Location_Desc               VARCHAR(100)
	,MP_Channel                  VARCHAR(100)
	,MP_Channel_Desc             VARCHAR(100)
	,Area                        VARCHAR(100)
	,Area_Desc                   VARCHAR(100)
	,Macro_Area                  VARCHAR(100)
	,Macro_Area_Desc             VARCHAR(100)
	,Country                     VARCHAR(100)
	,Country_Desc                VARCHAR(100)
	,MP_Channel_detail           VARCHAR(100)
	,MP_Channel_detail_Desc      VARCHAR(100)
	,Regional_Bulk               VARCHAR(100)
	,Regional_Bulk_Desc          VARCHAR(100)
	,KeyListino                  VARCHAR(100)
	,KeyListino_Desc             VARCHAR(100)
	,Store_Currency              VARCHAR(100)
	,Store_Currency_Desc         VARCHAR(100)
	,Client                      VARCHAR(100)
	,Client_Desc                 VARCHAR(100)
	,Region                      VARCHAR(100)
	,Region_Desc                 VARCHAR(100)
	,Zone                        VARCHAR(100)
	,Zone_Desc                   VARCHAR(100)
);

create table DestCode (
	 Location            VARCHAR(50)
	,Location_Desc       VARCHAR(50)
	,Country             VARCHAR(50)
	,Country_Desc        VARCHAR(50)
	,CLIENT_ID           VARCHAR(50)
	,DEST_CODE           VARCHAR(50)
);



-- da fare la tabella delle locations



