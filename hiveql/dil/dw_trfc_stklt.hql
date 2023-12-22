--(T)노상주차장
CREATE EXTERNAL TABLE IF NOT EXISTS DIL.DW_TRFC_STKLT (
  stklt_sn                     BIGINT               COMMENT   '노상주차장순번@pk' 
, adres_code                   STRING               COMMENT   '주소코드' 
, adres                        STRING               COMMENT   '주소' 
, adres_lnm                    STRING               COMMENT   '주소지번' 
, prkplce_nm                   STRING               COMMENT   '주차장명' 
, telno                        STRING               COMMENT   '전화번호' 
, regist_de                    STRING               COMMENT   '등록일자' 
, parkng_ar                    DECIMAL(32, 6)       COMMENT   '주차면적' 
, prkspc_co                    BIGINT               COMMENT   '주차면수' 
, owner_mby                    STRING               COMMENT   '소유주주체' 
, mtlty                        STRING               COMMENT   '상호' 
, oper_mby                     STRING               COMMENT   '운영주체' 
, parkng_knd                   STRING               COMMENT   '주차종류' 
, parkng_chrge_ty              STRING               COMMENT   '주차요금유형' 
, chrge_pymnt_ty               STRING               COMMENT   '요금지불유형' 
, trnsc_id                     STRING               COMMENT   '트랜잭션아이디' 
, trnsc_sttus_code             STRING               COMMENT   '트랜잭션상태코드' 
, trnsc_process_dttm           STRING               COMMENT   '트랜잭션처리날짜일자' 
, dhub_data_qlity_code         STRING               COMMENT   '2-3세부데이터품질코드' 
, lod_dt                       STRING               COMMENT   '적재일시' 
)
COMMENT '노상주차장'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\u0002'
STORED AS ORC
LOCATION '/lake/dw/DIL/DW_TRFC_STKLT'
TBLPROPERTIES ('ORC.COMPRESS'='SNAPPY')
;