--(T)도로별소통상황
CREATE EXTERNAL TABLE IF NOT EXISTS ANLS.DM_F_TRFC_ROAD_CMC_SITU (
  stdr_de                      STRING               COMMENT   '기준일자@pk' 
, road_nm                      STRING               COMMENT   '도로명@pk' 
, frtr_co                      BIGINT               COMMENT   '원활건수' 
, hvtr_co                      BIGINT               COMMENT   '지체건수' 
, sgtr_co                      BIGINT               COMMENT   '정체건수' 
, avrg_driv_ve                 BIGINT               COMMENT   '평균주행속도' 
, lod_dt                       STRING               COMMENT   '적재일시' 
 )
COMMENT '도로별소통상황'
PARTITIONED BY (pt_stdr_de STRING COMMENT '파티션기준일자')
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\u0002'
STORED AS ORC
LOCATION '/lake/mart/ANLS/DM_F_TRFC_ROAD_CMC_SITU'
TBLPROPERTIES ('ORC.COMPRESS'='SNAPPY')
;