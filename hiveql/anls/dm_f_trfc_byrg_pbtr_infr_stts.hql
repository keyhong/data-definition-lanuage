--(T)지역별대중교통인프라현황
CREATE EXTERNAL TABLE IF NOT EXISTS ANLS.DM_F_TRFC_BYRG_PBTR_INFR_STTS (        
  stdr_de                      STRING               COMMENT   '기준일자@pk' 
, lgld_cd                      STRING               COMMENT   '법정동코드@pk' 
, sd_nm                        STRING               COMMENT   '시도명' 
, sgg_nm                       STRING               COMMENT   '시군구명' 
, emd_nm                       STRING               COMMENT   '읍면동명' 
, bus_sttn_co                  BIGINT               COMMENT   '버스정류소개수' 
, sbw_sttn_co                  BIGINT               COMMENT   '지하철역개수' 
, bus_stvr_rut_co              BIGINT               COMMENT   '버스경유노선개수' 
, sbw_stvr_rut_co              BIGINT               COMMENT   '지하철경유노선개수' 
, lod_dt                       STRING               COMMENT   '적재일시' 
 )
COMMENT '지역별대중교통인프라현황'
PARTITIONED BY (pt_stdr_de STRING COMMENT '파티션기준일자')
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\u0002'
STORED AS ORC
LOCATION '/lake/mart/ANLS/DM_F_TRFC_BYRG_PBTR_INFR_STTS'
TBLPROPERTIES ('ORC.COMPRESS'='SNAPPY')
;