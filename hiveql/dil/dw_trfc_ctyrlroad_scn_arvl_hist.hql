--(T)도시철도역사도착예상이력
CREATE EXTERNAL TABLE IF NOT EXISTS DIL.DW_TRFC_CTYRLROAD_SCN_ARVL_HIST (        
  scn_no                       STRING               COMMENT   '역사번호' 
, scn_nm                       STRING               COMMENT   '역사명' 
, ln_id                        STRING               COMMENT   '철도호선ID' 
, ptrain_no                    STRING               COMMENT   '객차번호' 
, remndr_scn_co                BIGINT               COMMENT   '잔여역사수' 
, arvl_expect_time             STRING               COMMENT   '도착예상시간' 
, start_time                   STRING               COMMENT   '출발시간' 
, trnsc_id                     STRING               COMMENT   '트랜잭션아이디' 
, trnsc_sttus_code             STRING               COMMENT   '트랜잭션상태코드' 
, trnsc_process_dttm           STRING               COMMENT   '트랜잭션처리날짜일자' 
, dhub_data_qlity_code         STRING               COMMENT   '2-3세부데이터품질코드'
, lod_dt                       STRING               COMMENT   '적재일시' 
)
COMMENT '도시철도역사도착예상이력'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\u0002'
STORED AS ORC
LOCATION '/lake/dw/DIL/DW_TRFC_CTYRLROAD_SCN_ARVL_HIST'
TBLPROPERTIES ('ORC.COMPRESS'='SNAPPY')
;

