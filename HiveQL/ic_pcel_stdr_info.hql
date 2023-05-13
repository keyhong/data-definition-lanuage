-- 대구PCELL기준정보 | Hive | DG_PCEL_STDR_INFO

CREATE EXTERNAL TABLE SOSS.DG_PCEL_STDR_INFO (
	grid_id STRING COMMENT '그리드ID@pk',
	row_no STRING COMMENT '행번호', # 제거(행렬번호를 분리하여 app에서 처리)
	clm_no STRING COMMENT '열번호', # 제거(행렬번호를 분리하여 app에서 처리)
	mtr_no STRING COMMENT '행렬번호',
	admd_cd STRING COMMENT '행정동코드',
	cnt_x_crd DECIMAL(32, 10) COMMENT '중심X좌표', # 컬럼명 변경 (cnt_x_crd -> utmk_cnt_lo / 중싱경도(UTM-K))
	cnt_y_crd DECIMAL(32, 10) COMMENT '중심Y좌표', # 컬럼명 변경 (cnt_x_crd -> utmk_cnt_la / 중싱위도(UTM-K))
	min_x_crd DECIMAL(32, 10) COMMENT '최소X좌표', # 제거(app에서 미사용) 
	min_y_crd DECIMAL(32, 10) COMMENT '최소Y좌표', # 제거(app에서 미사용)
	max_x_crd DECIMAL(32, 10) COMMENT '최대X좌표', # 제거(app에서 미사용)
	max_y_crd DECIMAL(32, 10) COMMENT '최대Y좌표', # 제거(app에서 미사용)
	cnt_lo DECIMAL(32, 10) COMMENT '중심경도', # 컬럼명 변경 (cnt_lo -> cnt_lo / 중싱경도)
	cnt_la DECIMAL(32, 10) COMMENT '중심위도', # 컬럼명 변경 (cnt_la -> cnt_lo / 중싱위도)
	min_lo DECIMAL(32, 10) COMMENT '최소경도', # 제거(app에서 미사용)
	min_la DECIMAL(32, 10) COMMENT '최소위도', # 제거(app에서 미사용)
	max_lo DECIMAL(32, 10) COMMENT '최대경도', # 제거(app에서 미사용)
	max_la DECIMAL(32, 10) COMMENT '최대위도', # 제거(app에서 미사용)
	cctv_co BIGINT COMMENT 'CCTV수' # 제 3 정규형 위반?
)
COMMENT '대구PCELL기준정보'
ROW FORMAT DELIMITED FIELDS TERMINATED BY "\u0002"
STORED AS ORC
LOCATION 'maprfs:/DM/soss.db/DG_PCEL_STDR_INFO'
TBLPROPERTIES ('ORC.COMPRESS'='SNAPPY')