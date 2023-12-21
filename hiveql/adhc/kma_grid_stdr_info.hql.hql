-- 기상청그리드기준정보 | Hive | KMA_GRID_STDR_INFO

CREATE EXTERNAL TABLE IF NOT EXISTS ADHC.KMA_GRID_STDR_INFO (
	nation_nm STRING COMMENT '국가명@pk',
	admd_cd STRING COMMENT '행정동코드@pk',
	admd_dtl_nm1 STRING COMMENT '행정동상세명1@pk',
	admd_dtl_nm2 STRING COMMENT '행정동상세명2@pk',
	admd_dtl_nm3 STRING COMMENT '행정동상세명3@pk',
	grid_x_crd DECIMAL(18,8) COMMENT '그리드X좌표(격자X)',
	grid_y_crd DECIMAL(18,8) COMMENT '그리드Y좌표(격자Y)',
	lo_dtl_val1 STRING COMMENT '경도상세값1(시)',
	lo_dtl_val2 STRING COMMENT '경도상세값2(분)',
	lo_dtl_val3 STRING COMMENT '경도상세값3(초)',
	la_dtl_val1 STRING COMMENT '위도상세값1(시)',
	la_dtl_val2 STRING COMMENT '위도상세값2(분)',
	la_dtl_val3 STRING COMMENT '위도상세값3(초)',
	lo DECIMAL(18,8) COMMENT '경도(초/100)',
	la DECIMAL(18,8) COMMENT '위도(초/100)',
	lc_updt_de STRING COMMENT '위치수정일자'
)
COMMENT '기상청그리드기준정보'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ","
STORED AS TEXTFILE
LOCATION 'maprfs:/DL/adhc.db/KMA_GRID_STDR_INFO'
;