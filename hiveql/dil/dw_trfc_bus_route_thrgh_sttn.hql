--(T)버스노선경유정류소
CREATE EXTERNAL TABLE IF NOT EXISTS DIL.DW_TRFC_BUS_ROUTE_THRGH_STTN (
  bus_route_id                 STRING               COMMENT   '버스노선ID@pk' 
, sttn_id                      STRING               COMMENT   '정류소ID@pk' 
, sttn_nm                      STRING               COMMENT   '정류소명' 
, sttn_no                      BIGINT               COMMENT   '정류소번호' 
, sttn_sn                      BIGINT               COMMENT   '정류소순번' 
, crdnt_yaxs                   DECIMAL(32, 10)      COMMENT   '좌표Y축' 
, crdnt_xaxs                   DECIMAL(32, 10)      COMMENT   '좌표X축' 
, uppln_godn_ty                STRING               COMMENT   '상행하행유형' 
, stre_dt                      STRING               COMMENT   '저장일시' 
, trnsc_id                     STRING               COMMENT   '트랜잭션아이디' 
, trnsc_sttus_code             STRING               COMMENT   '트랜잭션상태코드' 
, trnsc_process_dttm           STRING               COMMENT   '트랜잭션처리날짜일자' 
, dhub_data_qlity_code         STRING               COMMENT   '2-3세부데이터품질코드'
, lod_dt                       STRING               COMMENT   '적재일시' 
)
COMMENT '버스노선경유정류소'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\u0002'
STORED AS ORC
LOCATION '/lake/dw/DIL/DW_TRFC_BUS_ROUTE_THRGH_STTN'
TBLPROPERTIES ('ORC.COMPRESS'='SNAPPY')
;

