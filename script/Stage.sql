create table GHCN
 (
  idGhcn varchar2(300) primary key,
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
 /
create table PRECIPTATION
(
  idPrecip varchar2(300) primary key,
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
)
/

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
)
/

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
  Latitude numeric,
  Longitude numeric,
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
  Country_Code VARCHAR2(300),
  State_Code VARCHAR2(300),
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
)
/ 

create table GHCN_V4_STATION
(
  IDSTATION VARCHAR2(300) primary key,
  LATITUDE VARCHAR2(50),
  LONGITUDE VARCHAR2(50),
  ELEVATION VARCHAR2(50),
  STATION_NAME VARCHAR2(300)
)
/

create table PRCP_V2_STATION
(
  IDSTATION VARCHAR2(300) primary key,
  STATION_NAME VARCHAR2(300),
  LATITUDE VARCHAR2(50),
  LONGITUDE VARCHAR2(50),
  ELEVATION VARCHAR2(50)
)
/

create table PRCP_V2_COUNTRY
(
  IDCOUNTRY VARCHAR2(20) primary key,
  COUNTRY_NAME VARCHAR2(1000)
)
/

create table GHCN_V4_COUNTRY
(
  IDCOUNTRY VARCHAR2(20) primary key,
  COUNTRY_NAME VARCHAR2(1000)
)
/

