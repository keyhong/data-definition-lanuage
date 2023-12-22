--(T)버스정류소
CREATE EXTERNAL TABLE IF NOT EXISTS DIL.DW_TRFC_BUS_STTN (
  sttn_id                      STRING               COMMENT   '정류소ID@pk' 
, mobile_id                    STRING               COMMENT   '모바일ID' 
, sttn_nm                      STRING               COMMENT   '정류소명' 
, sttn_eng_nm                  STRING               COMMENT   '정류소영문명' 
, city_do_adres                STRING               COMMENT   '시도주소' 
, gu_gun_adres                 STRING               COMMENT   '구군주소' 
, dong_adres                   STRING               COMMENT   '동주소' 
, crdnt_yaxs                   DECIMAL(32, 10)      COMMENT   '좌표Y축' 
, crdnt_xaxs                   DECIMAL(32, 10)      COMMENT   '좌표X축' 
, thrgh_route_co               BIGINT               COMMENT   '경유노선수' 
, seprat_route                 STRING               COMMENT   '분리노선' 
, trnsc_id                     STRING               COMMENT   '트랜잭션아이디' 
, trnsc_sttus_code             STRING               COMMENT   '트랜잭션상태코드' 
, trnsc_process_dttm           STRING               COMMENT   '트랜잭션처리날짜일자' 
, dhub_data_qlity_code         STRING               COMMENT   '2-3세부데이터품질코드'
, lod_dt                       STRING               COMMENT   '적재일시' 
)
COMMENT '버스정류소'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\u0002'
STORED AS ORC
LOCATION '/lake/dw/DIL/DW_TRFC_BUS_STTN'
TBLPROPERTIES ('ORC.COMPRESS'='SNAPPY')
;

