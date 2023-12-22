--(T)지역별이동량현황
CREATE EXTERNAL TABLE IF NOT EXISTS ANLS.DM_F_TRFC_BYRG_MVMN_STTS (
  stdr_de                      STRING               COMMENT   '기준일자@pk' 
, lgld_cd                      STRING               COMMENT   '법정동코드@pk' 
, tmzn_ty_cd                   STRING               COMMENT   '시간대유형코드@pk' 
, tmzn_ty_nm                   STRING               COMMENT   '시간대유형명' 
, sd_nm                        STRING               COMMENT   '시도명' 
, sgg_nm                       STRING               COMMENT   '시군구명' 
, emd_nm                       STRING               COMMENT   '읍면동명' 
, taxi_gtin_co                 BIGINT               COMMENT   '택시승차건수' 
, taxi_gtof_co                 BIGINT               COMMENT   '택시하차건수' 
, pbtr_gtin_co                 BIGINT               COMMENT   '대중교통승차건수' 
, pbtr_gtof_co                 BIGINT               COMMENT   '대중교통하차건수' 
, gtin_tot_co                  BIGINT               COMMENT   '승차총합건수' 
, gtof_tot_co                  BIGINT               COMMENT   '하차총합건수' 
, lod_dt                       STRING               COMMENT   '적재일시' 
 )
COMMENT '지역별이동량현황'
PARTITIONED BY (pt_stdr_de STRING COMMENT '파티션기준일자')
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\u0002'
STORED AS ORC
LOCATION '/lake/mart/ANLS/DM_F_TRFC_BYRG_MVMN_STTS'
TBLPROPERTIES ('ORC.COMPRESS'='SNAPPY')
;
