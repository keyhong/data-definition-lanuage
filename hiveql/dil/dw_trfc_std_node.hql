--(T)표준노드
CREATE EXTERNAL TABLE IF NOT EXISTS DIL.DW_TRFC_STD_NODE (
  std_node_id                  STRING               COMMENT   '표준노드ID@pk' 
, std_node_nm                  STRING               COMMENT   '표준노드명' 
, std_node_ty                  STRING               COMMENT   '표준노드유형' 
, rtat_lmtt_yn                 STRING               COMMENT   '회전제한가부' 
, crdnt_xaxs                   DECIMAL(32, 10)      COMMENT   '좌표X축' 
, crdnt_yaxs                   DECIMAL(32, 10)      COMMENT   '좌표Y축' 
, gis_no                       BIGINT               COMMENT   'GIS번호' 
, node_eng_nm                  STRING               COMMENT   '노드영문명' 
, administzone_nm              STRING               COMMENT   '행정구역명' 
, std_node_sttus_code          STRING               COMMENT   '표준노드상태코드' 
, applc_begin_de               STRING               COMMENT   '적용시작일자' 
, applc_end_de                 STRING               COMMENT   '적용종료일자' 
, trnsc_id                     STRING               COMMENT   '트랜잭션아이디' 
, trnsc_sttus_code             STRING               COMMENT   '트랜잭션상태코드' 
, trnsc_process_dttm           STRING               COMMENT   '트랜잭션처리날짜일자' 
, dhub_data_qlity_code         STRING               COMMENT   '2-3세부데이터품질코드'
, lod_dt                       STRING               COMMENT   '적재일시' 
)
COMMENT '표준노드'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\u0002'
STORED AS ORC
LOCATION  '/lake/dw/DIL/DW_TRFC_STD_NODE'
TBLPROPERTIES ('ORC.COMPRESS'='SNAPPY')
;