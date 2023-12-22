--(T)버스정류소도착이력
CREATE EXTERNAL TABLE IF NOT EXISTS DIL.DW_TRFC_BUS_STTN_ARVL_HIST (        
  sttn_id                      STRING               COMMENT   '정류소ID@pk' 
, sttn_nm                      STRING               COMMENT   '정류소명' 
, bus_route_id                 STRING               COMMENT   '버스노선ID' 
, bus_route_no                 STRING               COMMENT   '버스노선번호' 
, bus_route_ty                 STRING               COMMENT   '버스노선유형' 
, remndr_sttn_co               BIGINT               COMMENT   '잔여정류소수' 
, vhcle_ty                     STRING               COMMENT   '차량유형' 
, arvl_expect_time             STRING               COMMENT   '도착예상시간' 
, trnsc_id                     STRING               COMMENT   '트랜잭션아이디' 
, trnsc_sttus_code             STRING               COMMENT   '트랜잭션상태코드' 
, trnsc_process_dttm           STRING               COMMENT   '트랜잭션처리날짜일자' 
, dhub_data_qlity_code         STRING               COMMENT   '2-3세부데이터품질코드'
, lod_dt                       STRING               COMMENT   '적재일시' 
)
COMMENT '버스정류소도착이력'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\u0002'
STORED AS ORC
LOCATION '/lake/dw/DIL/DW_TRFC_BUS_STTN_ARVL_HIST'
TBLPROPERTIES ('ORC.COMPRESS'='SNAPPY')
;

