--(T)도시철도배차
CREATE EXTERNAL TABLE IF NOT EXISTS DIL.DW_TRFC_CTYRLROAD_CARALC (        
  ln_id                        STRING               COMMENT   '철도호선ID@pk' 
, scn_no                       STRING               COMMENT   '역사번호@pk' 
, ptrain_no                    STRING               COMMENT   '객차번호@pk' 
, wkday_se                     STRING               COMMENT   '평일구분@pk' 
, caralc_oper_se               STRING               COMMENT   '배차운영구분@pk' 
, arvl_time                    STRING               COMMENT   '도착시간' 
, start_time                   STRING               COMMENT   '출발시간' 
, trnsc_id                     STRING               COMMENT   '트랜잭션아이디' 
, trnsc_sttus_code             STRING               COMMENT   '트랜잭션상태코드' 
, trnsc_process_dttm           STRING               COMMENT   '트랜잭션처리날짜일자' 
, dhub_data_qlity_code         STRING               COMMENT   '2-3세부데이터품질코드'
, lod_dt                       STRING               COMMENT   '적재일시' 
)
COMMENT '도시철도배차'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\u0002'
STORED AS ORC
LOCATION '/lake/dw/DIL/DW_TRFC_CTYRLROAD_CARALC'
TBLPROPERTIES ('ORC.COMPRESS'='SNAPPY')
;

