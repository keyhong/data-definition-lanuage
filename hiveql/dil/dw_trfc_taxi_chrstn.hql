--(T)택시충전소
CREATE EXTERNAL TABLE IF NOT EXISTS DIL.DW_TRFC_TAXI_CHRSTN (
  chrstn_sn                    BIGINT               COMMENT   '충전소순번@pk' 
, chrstn_nm                    STRING               COMMENT   '충전소명' 
, nrmspd_chrgr_co              BIGINT               COMMENT   '완속충전기수' 
, fstspd_chrgr_co              BIGINT               COMMENT   '급속충전기수' 
, la                           DECIMAL(12, 10)      COMMENT   '위도' 
, lo                           DECIMAL(13, 10)      COMMENT   '경도' 
, trnsc_id                     STRING               COMMENT   '트랜잭션아이디' 
, trnsc_sttus_code             STRING               COMMENT   '트랜잭션상태코드' 
, trnsc_process_dttm           STRING               COMMENT   '트랜잭션처리날짜일자' 
, dhub_data_qlity_code         STRING               COMMENT   '2-3세부데이터품질코드'
, lod_dt                       STRING               COMMENT   '적재일시' 
)
COMMENT '택시충전소'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\u0002'
STORED AS ORC
LOCATION '/lake/dw/DIL/DW_TRFC_TAXI_CHRSTN'
TBLPROPERTIES ('ORC.COMPRESS'='SNAPPY')
;