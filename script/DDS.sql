--create user AdminDDS IDENTIFIED BY admindds;
--/
--grant connect to AdminDDS;
--/
--grant dba to AdminDDS WITH admin option;
--/

-------------CREATE GHCN_V4
create table GHCN_V4_COUNTRY
(
  id_country VARCHAR2(2) primary key,
  COUNTRY_NAME VARCHAR2(1000)
);

create table GHCN_V4_STATION
(
  id_country varchar2(2),
  id_station varchar2(9),
  LATITUDE VARCHAR2(50),
  LONGITUDE VARCHAR2(50),
  ELEVATION VARCHAR2(50),
  STATION_NAME VARCHAR2(300),
  primary key (id_country, id_station)
);

create table GHCN_V4 (
  id_ghcn_v4 numeric GENERATED ALWAYS as identity(START WITH 1 INCREMENT BY 1) PRIMARY KEY,
  id_country varchar2(2),
  WMO_station_number varchar2(9),
  year_id numeric,
  ELEMENT_GHCN VARCHAR2(4),
  Jan numeric,
  Flag01 varchar2(50),
    Feb numeric,
  Flag02 varchar2(50),
    Mar numeric,
  Flag03 varchar2(50),
    Apr numeric,
  Flag04 varchar2(50),
    May numeric,
  Flag05 varchar2(50),
    June numeric,
  Flag06 varchar2(50),
    July numeric,
  Flag07 varchar(50),
    Aug numeric,
  Flag08 varchar2(50),
    Sep numeric,
  Flag09 varchar2(50),
    Oct numeric,
  Flag10 varchar2(50),
    Nov numeric,
  Flag11 varchar2(50),
    Dece numeric,
  Flag12 varchar2(50)
);

------------------------CREATE YEAR
create table YEAR_GHCN
(
  id_Year numeric GENERATED ALWAYS as identity(START WITH 1 INCREMENT BY 1) PRIMARY KEY,
  Year_Name varchar (4)
);

alter table GHCN_V4_STATION add constraint Fk_Ghcn_Country foreign key (id_country) references GHCN_V4_COUNTRY(id_country);
alter table GHCN_V4 add constraint Fk_GHCN_Year foreign key (id_Year) references YEAR_GHCN(id_Year); 
alter table GHCN_V4 add constraint Fk_GHCN_Station foreign key (id_country, WMO_station_number) references GHCN_V4_STATION(id_country, id_station); 



-------------CREATE PRECIP_V2
create table PRCP_V2_COUNTRY
(
  id_country VARCHAR2(3) primary key,
  COUNTRY_NAME VARCHAR2(1000)
);

create table PRCP_V2_STATION
(
  id_country varchar2(3),
  WMO_station_number varchar2(5),
  modifier varchar2(3),
  STATION_NAME VARCHAR2(300),
  LATITUDE VARCHAR2(50),
  LONGITUDE VARCHAR2(50),
  ELEVATION VARCHAR2(50),
  primary key (id_country, WMO_station_number, modifier)
);

 create table PRECIP_V2
(
  id_precip_v2 numeric GENERATED ALWAYS as identity(START WITH 1 INCREMENT BY 1) PRIMARY KEY,
  id_country varchar2(5),
  WMO_station_number varchar2(5),
  modifier varchar2(3),
  duplicate_flag varchar2(1),
  year_PRECIP varchar2(4),
  Jan numeric,
  Feb numeric,
  Mar numeric,
  Apr numeric,
  May numeric,
  June numeric,
  July numeric,
  Aug numeric,
  Sep numeric,
  Oct numeric,
  Nov numeric,
  Dece numeric
);

------------------------CREATE YEAR
create table YEAR_PRECIP
(
  id_Year numeric GENERATED ALWAYS as identity(START WITH 1 INCREMENT BY 1) PRIMARY KEY,
  Year_Name varchar (4)
);

alter table PRCP_V2_STATION add constraint Fk_Precip_Country foreign key (id_country) references PRCP_V2_COUNTRY(id_country); 
alter table PRECIP_V2 add constraint Fk_PRECIP_Station foreign key (id_country, WMO_station_number, modifier) references PRCP_V2_STATION(id_country, WMO_station_number, modifier); 
alter table PRECIP_V2 add constraint Fk_PRECIP_YEAR foreign key (id_Year) references YEAR_PRECIP(id_Year); 

--------------------CREATE FOREST_TYPE
create table FOREST_TYPE (
  IdType numeric GENERATED ALWAYS as identity(START WITH 1 INCREMENT BY 1) PRIMARY KEY,
  Elevation numeric,
  Aspect numeric,
  Slope numeric,
  HOR_DIST_TO_HYDROLOGY numeric,
  VER_DIST30_HYDROLOGY numeric,
  HOR_DIST30_ROADWAYS numeric,
  HILLSHADE_9AM numeric,
  HILLSHADE_NOON numeric,
  HILLSHADE_3PM numeric,
  HOR_DIST_TO_FIRE_POINTS numeric,
  WILDERNESS_AREAl VARCHAR2(3),
  WILDERNESS_AREA2 VARCHAR2(3),
  WILDERNESS_AREA3 VARCHAR2(3),
  WILDERNESS_AREA4 VARCHAR2(3),
  SOIL_TYPE1 VARCHAR2(3),
  SOIL_TYPE2 VARCHAR2(3),
  SOIL_TYPE3 VARCHAR2(3),
  SOIL_TYPE4 VARCHAR2(3),
  SOIL_TYPE5 VARCHAR2(3),
  SOIL_TYPE6 VARCHAR2(3),
  SOIL_TYPE7 VARCHAR2(3),
  SOIL_TYPE8 VARCHAR2(3),
  SOIL_TYPE9 VARCHAR2(3),
  SOIL_TYPE10 VARCHAR2(3),
  SOIL_TYPE11 VARCHAR2(3),
  SOIL_TYPE12 VARCHAR2(3),
  SOIL_TYPEl3 VARCHAR2(3),
  SOIL_TYPE14 VARCHAR2(3),
  SOIL_TYPEl5 VARCHAR2(3),
  SOIL_TYPE16 VARCHAR2(3),
  SOIL_TYPE17 vARCHAR2(3),
  SOIL_TYPE18 VARCHAR2(3),
  SOIL_TYPE19 vARCHAR2(3),
  SOIL_TYPE20 VARCHAR2(3),
  SOIL_TYPE21 VARCHAR2(3),
  SOIL_TYPE22 VARCHAR2(3),
  SOIL_TYPE23 VARCHAR2(3),
  SOIL_TYPE24 VARCHAR2(3),
  SOIL_TYPE25 VARCHAR2(3),
  SOIL_TYPE26 VARCHAR2(3),
  SOIL_TYPE27 VARCHAR2(3),
  SOIL_TYPE28 VARCHAR2(3),
  SOIL_TYPE29 VARCHAR2(3),
  SOIL_TYPE30 VARCHAR2(3),
  SOIL_TYPE31 VARCHAR2(3),
  SOIL_TYPE32 VARCHAR2(3),
  SOIL_TYPE33 VARCHAR2(3),
  SOIL_TYPE34 VARCHAR2(3),
  SOIL_TYPE35 vARCHAR2(3),
  SOIL_TYPE36 VARCHAR2(3),
  SOIL_TYPE37 VARCHAR2(3),
  SOIL_TYPE38 VARCHAR2(3),
  SOIL_TYPE39 VARCHAR2(3),
  SOIL_TYPE40 VARCHAR2(3),
  COVER_TYPE VARCHAR2(3)
);

create table WATER_QUALITY 
(
  Id_Water_Quality numeric GENERATED ALWAYS as identity(START WITH 1 INCREMENT BY 1) PRIMARY KEY,
  Org_Id VARCHAR2(300),
  Org_Formal_Name VARCHAR2(300),
  Moni_Loc_Id VARCHAR2(300),
  Moni_Loc_Name VARCHAR2(300),
  Moni_Loc_Type_Name VARCHAR2(300),
  Moni_Loc_Des VARCHAR2(300),
  HUC_Eight_Digit_Code VARCHAR2(50),
  Dra_Area_Value numeric,
  Dra_Area_Code VARCHAR2(50),
  Con_Dra_Area_Value numeric,
  Con_Dra_Area_Code VARCHAR2(50),
  id_locate numeric,
  Source_Map_Scale numeric,
  Hor_Acc_Value numeric,
  Hor_Acc_Code VARCHAR2(50),
  Hor_Co_Me_Name VARCHAR2(300),
  Hor_Co_Re_Sys_Dat_Name VARCHAR2(300),
  Ver_Value numeric,
  Ver_Code VARCHAR2(300),
  Ver_Acc_Value numeric,
  Ver_Acc_Code VARCHAR2(300),
  Ver_Co_Me_Name VARCHAR2(300),
  Ver_Co_Re_Sys_Dat_Name VARCHAR2(300),
  County_Code VARCHAR2(300),
  Aquifer_Name VARCHAR2(300),
  Formation_Type VARCHAR2(300),
  Aquifer_Type_Name VARCHAR2(300),
  Construction_Date VARCHAR2(300),
  Well_Depth_Value numeric,
  Well_Depth_Code VARCHAR2(300),
  Well_Hole_Depth_Value numeric,
  Well_Hole_Depth_Code VARCHAR2(300),
  Provider_Name VARCHAR2(300)
);

create table COUNTRY_WATER_QUALITY
(
  id_Country numeric GENERATED ALWAYS as identity(START WITH 1 INCREMENT BY 1) PRIMARY KEY,
  Country_Code VARCHAR2(5),
  State_Code numeric
);

create table LOCATE_WATER_QUALITY
(
  id_locate numeric GENERATED ALWAYS as identity(START WITH 1 INCREMENT BY 1) PRIMARY KEY,
  id_Country numeric,
  Latitude numeric,
  Longitude numeric
);

alter table WATER_QUALITY add constraint Fk_WQ_LOCATE foreign key (id_locate) references LOCATE_WATER_QUALITY(id_locate); 
alter table LOCATE_WATER_QUALITY add constraint Fk_LOCATE_COUNTRY foreign key (id_Country) references COUNTRY_WATER_QUALITY(id_Country); 

------------------------FACT TABLE
create table FACT_RESULT
(
  id_ghcn_v4 numeric,
  id_precip_v2 numeric,
  Id_Water_Quality numeric,
  IdType numeric,
  primary key (id_ghcn_v4,id_precip_v2,Id_Water_Quality,IdType)
);
------------------------

alter table FACT_RESULT add constraint Fk_Fact_Ghcn foreign key (id_ghcn_v4) references GHCN_V4(id_ghcn_v4);
alter table FACT_RESULT add constraint Fk_Fact_Precip foreign key (id_precip_v2) references PRECIP_V2(id_precip_v2);
alter table FACT_RESULT add constraint Fk_Fact_WQ foreign key (Id_Water_Quality) references WATER_QUALITY(Id_Water_Quality);
alter table FACT_RESULT add constraint Fk_Fact_CV foreign key (IdType) references FOREST_TYPE(IdType);

