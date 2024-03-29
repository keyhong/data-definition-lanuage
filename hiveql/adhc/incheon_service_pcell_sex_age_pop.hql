-- 인천서비스PCELL성연령인구(PCELL) | Hive | INCHEON_SERVICE_PCELL_SEX_AGE_POP

CREATE EXTERNAL TABLE IF NOT EXISTS ADHC.INCHEON_SERVICE_PCELL_SEX_AGE_POP (
	std_ymd STRING COMMENT '기준일자',
	hcode STRING COMMENT '행정동코드',
	x_coord DECIMAL(18,8) COMMENT 'X좌표',
	y_coord DECIMAL(18,8) COMMENT 'Y좌표',
	h_m_10 DECIMAL(18,2) COMMENT '주거인구 남자 10대',
	h_m_20 DECIMAL(18,2) COMMENT '주거인구 남자 20대',
	h_m_30 DECIMAL(18,2) COMMENT '주거인구 남자 30대',
	h_m_40 DECIMAL(18,2) COMMENT '주거인구 남자 40대',
	h_m_50 DECIMAL(18,2) COMMENT '주거인구 남자 50대',
	h_m_60 DECIMAL(18,2) COMMENT '주거인구 남자 60대',
	h_m_70 DECIMAL(18,2) COMMENT '주거인구 남자 70대',
	h_w_10 DECIMAL(18,2) COMMENT '주거인구 여자 10대',
	h_w_20 DECIMAL(18,2) COMMENT '주거인구 여자 20대',
	h_w_30 DECIMAL(18,2) COMMENT '주거인구 여자 30대',
	h_w_40 DECIMAL(18,2) COMMENT '주거인구 여자 40대',
	h_w_50 DECIMAL(18,2) COMMENT '주거인구 여자 50대',
	h_w_60 DECIMAL(18,2) COMMENT '주거인구 여자 60대',
	h_w_70 DECIMAL(18,2) COMMENT '주거인구 여자 70대',
	w_m_10 DECIMAL(18,2) COMMENT '직장인구 남자 10대',
	w_m_20 DECIMAL(18,2) COMMENT '직장인구 남자 20대',
	w_m_30 DECIMAL(18,2) COMMENT '직장인구 남자 30대',
	w_m_40 DECIMAL(18,2) COMMENT '직장인구 남자 40대',
	w_m_50 DECIMAL(18,2) COMMENT '직장인구 남자 50대',
	w_m_60 DECIMAL(18,2) COMMENT '직장인구 남자 60대',
	w_m_70 DECIMAL(18,2) COMMENT '직장인구 남자 70대',
	w_w_10 DECIMAL(18,2) COMMENT '직장인구 여자 10대',
	w_w_20 DECIMAL(18,2) COMMENT '직장인구 여자 20대',
	w_w_30 DECIMAL(18,2) COMMENT '직장인구 여자 30대',
	w_w_40 DECIMAL(18,2) COMMENT '직장인구 여자 40대',
	w_w_50 DECIMAL(18,2) COMMENT '직장인구 여자 50대',
	w_w_60 DECIMAL(18,2) COMMENT '직장인구 여자 60대',
	w_w_70 DECIMAL(18,2) COMMENT '직장인구 여자 70대',
	v_m_10 DECIMAL(18,2) COMMENT '방문인구 남자 10대',
	v_m_20 DECIMAL(18,2) COMMENT '방문인구 남자 20대',
	v_m_30 DECIMAL(18,2) COMMENT '방문인구 남자 30대',
	v_m_40 DECIMAL(18,2) COMMENT '방문인구 남자 40대',
	v_m_50 DECIMAL(18,2) COMMENT '방문인구 남자 50대',
	v_m_60 DECIMAL(18,2) COMMENT '방문인구 남자 60대',
	v_m_70 DECIMAL(18,2) COMMENT '방문인구 남자 70대',
	v_w_10 DECIMAL(18,2) COMMENT '방문인구 여자 10대',
	v_w_20 DECIMAL(18,2) COMMENT '방문인구 여자 20대',
	v_w_30 DECIMAL(18,2) COMMENT '방문인구 여자 30대',
	v_w_40 DECIMAL(18,2) COMMENT '방문인구 여자 40대',
	v_w_50 DECIMAL(18,2) COMMENT '방문인구 여자 50대',
	v_w_60 DECIMAL(18,2) COMMENT '방문인구 여자 60대',
	v_w_70 DECIMAL(18,2) COMMENT '방문인구 여자 70대',
	block_cd STRING COMMENT '소지역코드'
)
COMMENT '인천서비스PCELL성연령인구(PCELL)'
PARTITIONED BY (pt_stdr_ym STRING COMMENT '파티션기준년월')
ROW FORMAT DELIMITED
FIELDS TERMINATED BY "|"
STORED AS TEXTFILE
LOCATION 'maprfs:/DL/adhc.db/INCHEON_SERVICE_PCELL_SEX_AGE_POP'
;