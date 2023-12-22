--(T)표준노드소통이력
CREATE EXTERNAL TABLE IF NOT EXISTS DIL.DW_TRFC_STD_NODE_MLRD_HIST (
  std_link_id                  STRING               COMMENT   '표준링크ID@pk' 
, start_std_node               STRING               COMMENT   '출발표준노드' 
, arvl_std_node                STRING               COMMENT   '도착표준노드' 
, kmve                         BIGINT               COMMENT   '킬로미터속도' 
, pasng_time                   DECIMAL(32, 3)       COMMENT   '통행시간' 
, gis_mdstnc                   DECIMAL(32, 6)       COMMENT   'GIS미터거리' 
, road_nm                      STRING               COMMENT   '도로명' 
, road_grad_code               STRING               COMMENT   '도로등급코드' 
, trnsport_grad                STRING               COMMENT   '교통등급' 
, regist_dt                    STRING               COMMENT   '등록일시@pk' 
, trnsc_id                     STRING               COMMENT   '트랜잭션아이디' 
, trnsc_sttus_code             STRING               COMMENT   '트랜잭션상태코드' 
, trnsc_process_dttm           STRING               COMMENT   '트랜잭션처리날짜일자' 
, dhub_data_qlity_code         STRING               COMMENT   '2-3세부데이터품질코드'
, lod_dt                       STRING               COMMENT   '적재일시' 
)
COMMENT '표준노드소통이력'
PARTITIONED BY (pt_regist_de STRING COMMENT '파티션등록일자')
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\u0002'
STORED AS ORC
LOCATION '/lake/dw/DIL/DW_TRFC_STD_NODE_MLRD_HIST'
TBLPROPERTIES ('ORC.COMPRESS'='SNAPPY')
;