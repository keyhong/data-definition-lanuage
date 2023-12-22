--(T)버스노선
CREATE EXTERNAL TABLE IF NOT EXISTS DIL.DW_TRFC_BUS_ROUTE (
  bus_route_id                 STRING               COMMENT   '버스노선ID@pk' 
, bus_route_no                 STRING               COMMENT   '버스노선번호@pk' 
, bus_route_ty                 STRING               COMMENT   '버스노선유형' 
, seprat_route                 STRING               COMMENT   '분리노선' 
, cdpnt_nm                     STRING               COMMENT   '기점명' 
, tmnl_nm                      STRING               COMMENT   '종점명' 
, fircar_time                  STRING               COMMENT   '첫차시간' 
, ltcar_time                   STRING               COMMENT   '막차시간' 
, stre_dt                      STRING               COMMENT   '저장일시' 
, trnsc_id                     STRING               COMMENT   '트랜잭션아이디' 
, trnsc_sttus_code             STRING               COMMENT   '트랜잭션상태코드' 
, trnsc_process_dttm           STRING               COMMENT   '트랜잭션처리날짜일자' 
, dhub_data_qlity_code         STRING               COMMENT   '2-3세부데이터품질코드'
, lod_dt                       STRING               COMMENT   '적재일시' 
)
COMMENT '버스노선'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\u0002'
STORED AS ORC
LOCATION '/lake/dw/DIL/DW_TRFC_BUS_ROUTE'
TBLPROPERTIES ('ORC.COMPRESS'='SNAPPY')
;

