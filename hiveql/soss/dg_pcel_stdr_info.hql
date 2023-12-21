-- 대구PCELL기준정보 | DG_PCEL_STDR_INFO

CREATE EXTERNAL TABLE IF NOT EXISTS SOSS.DG_PCEL_STDR_INFO (
	grid_id STRING COMMENT '그리드ID@pk',
	row_no STRING COMMENT '행번호', 
	clm_no STRING COMMENT '열번호', 
	mtr_no STRING COMMENT '행렬번호', 
	admd_cd STRING COMMENT '행정동코드', 
	cnt_x_crd DECIMAL(32, 10) COMMENT '중심X좌표', 
	cnt_y_crd DECIMAL(32, 10) COMMENT '중심Y좌표', 
	min_x_crd DECIMAL(32, 10) COMMENT '최소X좌표', 
	min_y_crd DECIMAL(32, 10) COMMENT '최소Y좌표', 
	max_x_crd DECIMAL(32, 10) COMMENT '최대X좌표', 
	max_y_crd DECIMAL(32, 10) COMMENT '최대Y좌표', 
	cnt_lo DECIMAL(32, 10) COMMENT '중심경도', 
	cnt_la DECIMAL(32, 10) COMMENT '중심위도', 
	min_lo DECIMAL(32, 10) COMMENT '최소경도', 
	min_la DECIMAL(32, 10) COMMENT '최소위도', 
	max_lo DECIMAL(32, 10) COMMENT '최대경도', 
	max_la DECIMAL(32, 10) COMMENT '최대위도', 
	cctv_co BIGINT COMMENT 'CCTV수')
COMMENT '대구PCELL기준정보'
ROW FORMAT DELIMITED FIELDS
TERMINATED BY "\u0002"
STORED AS ORC
LOCATION 'maprfs:/DM/soss.db/DG_PCEL_STDR_INFO'
TBLPROPERTIES ('ORC.COMPRESS'='SNAPPY')
;