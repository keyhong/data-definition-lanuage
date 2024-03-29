-- 인천서비스PCELL시간인구(PCELL) | Hive | INCHEON_SERVICE_PCELL_TIME_POP

CREATE EXTERNAL TABLE IF NOT EXISTS ADHC.INCHEON_SERVICE_PCELL_TIME_POP (
	std_ymd STRING COMMENT '기준일자',
	hcode STRING COMMENT '행정동코드',
	x_coord DECIMAL(18, 8) COMMENT 'X좌표',
	y_coord DECIMAL(18, 8) COMMENT 'Y좌표',
	h_t_00 DECIMAL(18, 2) COMMENT '주거인구00시',
	h_t_01 DECIMAL(18, 2) COMMENT '주거인구01시',
	h_t_02 DECIMAL(18, 2) COMMENT '주거인구02시',
	h_t_03 DECIMAL(18, 2) COMMENT '주거인구03시',
	h_t_04 DECIMAL(18, 2) COMMENT '주거인구04시',
	h_t_05 DECIMAL(18, 2) COMMENT '주거인구05시',
	h_t_06 DECIMAL(18, 2) COMMENT '주거인구06시',
	h_t_07 DECIMAL(18, 2) COMMENT '주거인구07시',
	h_t_08 DECIMAL(18, 2) COMMENT '주거인구08시',
	h_t_09 DECIMAL(18, 2) COMMENT '주거인구09시',
	h_t_10 DECIMAL(18, 2) COMMENT '주거인구10시',
	h_t_11 DECIMAL(18, 2) COMMENT '주거인구11시',
	h_t_12 DECIMAL(18, 2) COMMENT '주거인구12시',
	h_t_13 DECIMAL(18, 2) COMMENT '주거인구13시',
	h_t_14 DECIMAL(18, 2) COMMENT '주거인구14시',
	h_t_15 DECIMAL(18, 2) COMMENT '주거인구15시',
	h_t_16 DECIMAL(18, 2) COMMENT '주거인구16시',
	h_t_17 DECIMAL(18, 2) COMMENT '주거인구17시',
	h_t_18 DECIMAL(18, 2) COMMENT '주거인구18시',
	h_t_19 DECIMAL(18, 2) COMMENT '주거인구19시',
	h_t_20 DECIMAL(18, 2) COMMENT '주거인구20시',
	h_t_21 DECIMAL(18, 2) COMMENT '주거인구21시',
	h_t_22 DECIMAL(18, 2) COMMENT '주거인구22시',
	h_t_23 DECIMAL(18, 2) COMMENT '주거인구23시',
	w_t_00 DECIMAL(18, 2) COMMENT '직장인구00시',
	w_t_01 DECIMAL(18, 2) COMMENT '직장인구01시',
	w_t_02 DECIMAL(18, 2) COMMENT '직장인구02시',
	w_t_03 DECIMAL(18, 2) COMMENT '직장인구03시',
	w_t_04 DECIMAL(18, 2) COMMENT '직장인구04시',
	w_t_05 DECIMAL(18, 2) COMMENT '직장인구05시',
	w_t_06 DECIMAL(18, 2) COMMENT '직장인구06시',
	w_t_07 DECIMAL(18, 2) COMMENT '직장인구07시',
	w_t_08 DECIMAL(18, 2) COMMENT '직장인구08시',
	w_t_09 DECIMAL(18, 2) COMMENT '직장인구09시',
	w_t_10 DECIMAL(18, 2) COMMENT '직장인구10시',
	w_t_11 DECIMAL(18, 2) COMMENT '직장인구11시',
	w_t_12 DECIMAL(18, 2) COMMENT '직장인구12시',
	w_t_13 DECIMAL(18, 2) COMMENT '직장인구13시',
	w_t_14 DECIMAL(18, 2) COMMENT '직장인구14시',
	w_t_15 DECIMAL(18, 2) COMMENT '직장인구15시',
	w_t_16 DECIMAL(18, 2) COMMENT '직장인구16시',
	w_t_17 DECIMAL(18, 2) COMMENT '직장인구17시',
	w_t_18 DECIMAL(18, 2) COMMENT '직장인구18시',
	w_t_19 DECIMAL(18, 2) COMMENT '직장인구19시',
	w_t_20 DECIMAL(18, 2) COMMENT '직장인구20시',
	w_t_21 DECIMAL(18, 2) COMMENT '직장인구21시',
	w_t_22 DECIMAL(18, 2) COMMENT '직장인구22시',
	w_t_23 DECIMAL(18, 2) COMMENT '직장인구23시',
	v_t_00 DECIMAL(18, 2) COMMENT '방문인구00시',
	v_t_01 DECIMAL(18, 2) COMMENT '방문인구01시',
	v_t_02 DECIMAL(18, 2) COMMENT '방문인구02시',
	v_t_03 DECIMAL(18, 2) COMMENT '방문인구03시',
	v_t_04 DECIMAL(18, 2) COMMENT '방문인구04시',
	v_t_05 DECIMAL(18, 2) COMMENT '방문인구05시',
	v_t_06 DECIMAL(18, 2) COMMENT '방문인구06시',
	v_t_07 DECIMAL(18, 2) COMMENT '방문인구07시',
	v_t_08 DECIMAL(18, 2) COMMENT '방문인구08시',
	v_t_09 DECIMAL(18, 2) COMMENT '방문인구09시',
	v_t_10 DECIMAL(18, 2) COMMENT '방문인구10시',
	v_t_11 DECIMAL(18, 2) COMMENT '방문인구11시',
	v_t_12 DECIMAL(18, 2) COMMENT '방문인구12시',
	v_t_13 DECIMAL(18, 2) COMMENT '방문인구13시',
	v_t_14 DECIMAL(18, 2) COMMENT '방문인구14시',
	v_t_15 DECIMAL(18, 2) COMMENT '방문인구15시',
	v_t_16 DECIMAL(18, 2) COMMENT '방문인구16시',
	v_t_17 DECIMAL(18, 2) COMMENT '방문인구17시',
	v_t_18 DECIMAL(18, 2) COMMENT '방문인구18시',
	v_t_19 DECIMAL(18, 2) COMMENT '방문인구19시',
	v_t_20 DECIMAL(18, 2) COMMENT '방문인구20시',
	v_t_21 DECIMAL(18, 2) COMMENT '방문인구21시',
	v_t_22 DECIMAL(18, 2) COMMENT '방문인구22시',
	v_t_23 DECIMAL(18, 2) COMMENT '방문인구23시',
	block_cd STRING COMMENT '소지역코드'
)
COMMENT '인천서비스PCELL시간인구(PCELL)'
PARTITIONED BY (pt_stdr_ym STRING COMMENT '파티션기준년월')
ROW FORMAT DELIMITED
FIELDS TERMINATED BY "|"
STORED AS TEXTFILE
LOCATION 'maprfs:/DL/adhc.db/INCHEON_SERVICE_PCELL_TIME_POP'