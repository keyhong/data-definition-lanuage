--(T)버스차량
CREATE EXTERNAL TABLE IF NOT EXISTS DIL.DW_TRFC_BUS_VHCLE (
  vhcle_no                     STRING               COMMENT   '차량번호@pk' 
, bus_cmpny_nm                 STRING               COMMENT   '버스회사명' 
, bus_ty                       STRING               COMMENT   '버스유형' 
, bus_etc_ty                   STRING               COMMENT   '버스기타유형' 
, bus_route_no                 STRING               COMMENT   '버스노선번호' 
, trnsc_id                     STRING               COMMENT   '트랜잭션아이디' 
, trnsc_sttus_code             STRING               COMMENT   '트랜잭션상태코드' 
, trnsc_process_dttm           STRING               COMMENT   '트랜잭션처리날짜일자' 
, dhub_data_qlity_code         STRING               COMMENT   '2-3세부데이터품질코드'
, lod_dt                       STRING               COMMENT   '적재일시' 
)
COMMENT '버스차량'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\u0002'
STORED AS ORC
LOCATION '/lake/dw/DIL/DW_TRFC_BUS_VHCLE'
TBLPROPERTIES ('ORC.COMPRESS'='SNAPPY')
;

