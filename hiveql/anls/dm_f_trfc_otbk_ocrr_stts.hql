 --(T)돌발발생현황
CREATE EXTERNAL TABLE IF NOT EXISTS ANLS.DM_F_TRFC_OTBK_OCRR_STTS (
  stdr_de                      STRING               COMMENT   '기준일자@pk' 
, otbk_ty_cd                   STRING               COMMENT   '돌발유형코드@pk' 
, otbk_ty_nm                   STRING               COMMENT   '돌발유형명' 
, sgtr_co                      BIGINT               COMMENT   '정체건수' 
, mdtr_co                      BIGINT               COMMENT   '서행건수' 
, otbk_co                      BIGINT               COMMENT   '돌발건수' 
, otbk_cont_pd                 BIGINT               COMMENT   '돌발지속기간' 
, lod_dt                       STRING               COMMENT   '적재일시' 
)
COMMENT '돌발발생현황'
PARTITIONED BY (PT_STDR_DE STRING COMMENT '파티션기준일자')
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\u0002'
STORED AS ORC
LOCATION  '/lake/mart/ANLS/DM_F_TRFC_OTBK_OCRR_STTS'
TBLPROPERTIES ('ORC.COMPRESS'='SNAPPY')
;