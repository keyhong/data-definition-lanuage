--(T)도시철도역사
CREATE EXTERNAL TABLE IF NOT EXISTS DIL.DW_TRFC_CTYRLROAD_SCN (
  scn_no                       STRING               COMMENT   '역사번호@pk' 
, ctyrlroad_route_no           STRING               COMMENT   '도시철도노선번호' 
, scn_code                     STRING               COMMENT   '역사코드' 
, scn_nm                       STRING               COMMENT   '역사명' 
, eng_scn_nm                   STRING               COMMENT   '영문역사명' 
, chcrt_scn_nm                 STRING               COMMENT   '한문역사명' 
, trnsit_scn_se                STRING               COMMENT   '환승역사구분' 
, trnsit_route_no              STRING               COMMENT   '환승노선번호' 
, la                           DECIMAL(13, 10)      COMMENT   '위도' 
, lo                           DECIMAL(13, 10)      COMMENT   '경도' 
, oper_instt_nm                STRING               COMMENT   '운영기관명' 
, scn_rn_adres                 STRING               COMMENT   '역사도로명주소' 
, scn_telno                    STRING               COMMENT   '역사전화번호' 
, trnsc_id                     STRING               COMMENT   '트랜잭션아이디' 
, trnsc_sttus_code             STRING               COMMENT   '트랜잭션상태코드' 
, trnsc_process_dttm           STRING               COMMENT   '트랜잭션처리날짜일자' 
, dhub_data_qlity_code         STRING               COMMENT   '2-3세부데이터품질코드'
, lod_dt                       STRING               COMMENT   '적재일시' 
)
COMMENT '도시철도역사'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\u0002'
STORED AS ORC
LOCATION  '/lake/dw/DIL/DW_TRFC_CTYRLROAD_SCN'
TBLPROPERTIES ('ORC.COMPRESS'='SNAPPY')
;

