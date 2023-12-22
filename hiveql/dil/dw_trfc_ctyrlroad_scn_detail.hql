--(T)도시철도역사상세
CREATE EXTERNAL TABLE IF NOT EXISTS DIL.DW_TRFC_CTYRLROAD_SCN_DETAIL (
  scn_no                       STRING               COMMENT   '역사번호@pk' 
, ctyrlroad_route_no           STRING               COMMENT   '도시철도노선번호' 
, scn_code                     STRING               COMMENT   '역사코드@pk' 
, scn_sn                       BIGINT               COMMENT   '역사순번' 
, scn_intrvl_mdstnc            DECIMAL(32, 9)       COMMENT   '역사간격미터거리' 
, scn_intrvl_time              STRING               COMMENT   '역사간격시간' 
, trnsc_id                     STRING               COMMENT   '트랜잭션아이디' 
, trnsc_sttus_code             STRING               COMMENT   '트랜잭션상태코드' 
, trnsc_process_dttm           STRING               COMMENT   '트랜잭션처리날짜일자' 
, dhub_data_qlity_code         STRING               COMMENT   '2-3세부데이터품질코드'
, lod_dt                       STRING               COMMENT   '적재일시' 
)
COMMENT '도시철도역사상세'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\u0002'
STORED AS ORC
LOCATION '/lake/dw/DIL/DW_TRFC_CTYRLROAD_SCN_DETAIL'
TBLPROPERTIES ('ORC.COMPRESS'='SNAPPY')
;