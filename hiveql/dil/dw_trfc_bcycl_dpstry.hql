--(T)자전거보관소
CREATE EXTERNAL TABLE IF NOT EXISTS DIL.DW_TRFC_BCYCL_DPSTRY (
  gu_nm                        STRING               COMMENT   '구명@pk' 
, manage_no                    STRING               COMMENT   '관리번호@pk' 
, adres                        STRING               COMMENT   '주소' 
, adres_detail                 STRING               COMMENT   '주소상세' 
, bcycl_cstdy_ty               STRING               COMMENT   '자전거보관유형' 
, cstdy_co                     BIGINT               COMMENT   '보관수' 
, cstdy_mxmm_co                BIGINT               COMMENT   '보관최대수' 
, shade_yn                     STRING               COMMENT   '차양막가부' 
, air_injctr_yn                STRING               COMMENT   '공기주입기가부' 
, air_injctr_ty                STRING               COMMENT   '공기주입기유형' 
, repair_yn                    STRING               COMMENT   '수리대가부' 
, la                           DECIMAL(13, 10)      COMMENT   '위도' 
, lo                           DECIMAL(13, 10)      COMMENT   '경도' 
, trnsc_id                     STRING               COMMENT   '트랜잭션아이디' 
, trnsc_sttus_code             STRING               COMMENT   '트랜잭션상태코드' 
, trnsc_process_dttm           STRING               COMMENT   '트랜잭션처리날짜일자' 
, dhub_data_qlity_code         STRING               COMMENT   '2-3세부데이터품질코드'
, lod_dt                       STRING               COMMENT   '적재일시' 
)
COMMENT '자전거보관소'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\u0002'
STORED AS ORC
LOCATION '/lake/dw/DIL/DW_TRFC_BCYCL_DPSTRY'
TBLPROPERTIES ('ORC.COMPRESS'='SNAPPY')
;

