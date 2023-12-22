--(T)도시철도노선
CREATE EXTERNAL TABLE IF NOT EXISTS DIL.DW_TRFC_CTYRLROAD_ROUTE (
  ctyrlroad_route_no           STRING               COMMENT   '도시철도노선번호@pk' 
, ln_id                        STRING               COMMENT   '철도호선ID@pk' 
, ln_nm                        STRING               COMMENT   '철도호선명' 
, cdpnt_nm                     STRING               COMMENT   '기점명' 
, tmnl_nm                      STRING               COMMENT   '종점명' 
, sttn_list                    STRING               COMMENT   '정거장목록' 
, sttn_co                      BIGINT               COMMENT   '정거장수' 
, ln_mlt                       DECIMAL(32, 6)       COMMENT   '철도호선미터길이' 
, optrfc_de                    STRING               COMMENT   '개통일자' 
, oper_instt_nm                STRING               COMMENT   '운영기관명' 
, oper_instt_telno             STRING               COMMENT   '운영기관전화번호' 
, trnsc_id                     STRING               COMMENT   '트랜잭션아이디' 
, trnsc_sttus_code             STRING               COMMENT   '트랜잭션상태코드' 
, trnsc_process_dttm           STRING               COMMENT   '트랜잭션처리날짜일자' 
, dhub_data_qlity_code         STRING               COMMENT   '2-3세부데이터품질코드'
, lod_dt                       STRING               COMMENT   '적재일시' 
)
COMMENT '도시철도노선'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\u0002'
STORED AS ORC
LOCATION '/lake/dw/DIL/DW_TRFC_CTYRLROAD_ROUTE'
TBLPROPERTIES ('ORC.COMPRESS'='SNAPPY')
;

