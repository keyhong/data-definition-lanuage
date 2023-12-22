 --(T)도시철도노선상세
CREATE EXTERNAL TABLE IF NOT EXISTS DIL.DW_TRFC_CTYRLROAD_ROUTE_DETAIL (       
  ctyrlroad_route_no           STRING               COMMENT   '도시철도노선번호@pk' 
, ln_id                        STRING               COMMENT   '철도호선ID@pk' 
, wkday_se                     STRING               COMMENT   '평일구분@pk' 
, train_oprat_co               BIGINT               COMMENT   '열차운행횟수' 
, nh_caralc_intrvl             STRING               COMMENT   '첨두배차간격' 
, rh_caralc_intrvl             STRING               COMMENT   '비첨두배차간격' 
, nh_uppln_am_time             STRING               COMMENT   '첨두상행오전시간' 
, nh_godn_am_time              STRING               COMMENT   '첨두하행오전시간' 
, nh_uppln_pm_time             STRING               COMMENT   '첨두상행오후시간' 
, nh_godn_pm_time              STRING               COMMENT   '첨두하행오후시간' 
, trnsc_id                     STRING               COMMENT   '트랜잭션아이디' 
, trnsc_sttus_code             STRING               COMMENT   '트랜잭션상태코드' 
, trnsc_process_dttm           STRING               COMMENT   '트랜잭션처리날짜일자' 
, dhub_data_qlity_code         STRING               COMMENT   '2-3세부데이터품질코드'
, lod_dt                       STRING               COMMENT   '적재일시' 
)
COMMENT '도시철도노선상세'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\u0002'
STORED AS ORC
LOCATION '/lake/dw/DIL/DW_TRFC_CTYRLROAD_ROUTE_DETAIL'
TBLPROPERTIES ('ORC.COMPRESS'='SNAPPY')
;

