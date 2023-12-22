--(T)대중교통스테이션별이동현황
CREATE EXTERNAL TABLE IF NOT EXISTS ANLS.DM_F_TRFC_PBTR_STTN_MVMN_STTS (
  stdr_de                      STRING               COMMENT   '기준일자@pk' 
, pbtr_sttn_id                 STRING               COMMENT   '대중교통스테이션ID@pk' 
, pssg_ty_cd                   STRING               COMMENT   '탑승객유형코드@pk' 
, tmzn_ty_cd                   STRING               COMMENT   '시간대유형코드@pk' 
, pssg_ty_nm                   STRING               COMMENT   '탑승객유형명' 
, tmzn_ty_nm                   STRING               COMMENT   '시간대유형명' 
, gtin_co                      BIGINT               COMMENT   '승차건수' 
, gtof_co                      BIGINT               COMMENT   '하차건수' 
, trst_gtin_co                 BIGINT               COMMENT   '환승승차건수' 
, trst_aft_gtof_co             BIGINT               COMMENT   '환승후하차건수' 
, tot_co                       BIGINT               COMMENT   '총합건수' 
, lod_dt                       STRING               COMMENT   '적재일시' 
 )
COMMENT '대중교통스테이션별이동현황'
PARTITIONED BY (pt_stdr_de STRING COMMENT '파티션기준일자')
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\u0002'
STORED AS ORC
LOCATION  '/lake/mart/ANLS/DM_F_TRFC_PBTR_STTN_MVMN_STTS'
TBLPROPERTIES ('ORC.COMPRESS'='SNAPPY')
;