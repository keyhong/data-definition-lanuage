-- 인천날씨예보 | Hive | IC_WTH_FRCS

CREATE EXTERNAL TABLE SOSS.IC_WTH_FRCS (
	stdr_de STRING COMMENT '기준일자', 
	tmzn STRING COMMENT '시간대', 
	admd_cd STRING COMMENT '행정동코드', 
	admd STRING COMMENT '행정동', 
	hd_val STRING COMMENT '습도값', 
	tmp_val STRING COMMENT '기온값'
)
COMMENT '인천날씨예보'
ROW FORMAT DELIMITED FIELDS TERMINATED BY ","
STORED AS TEXTFILE
LOCATION 'maprfs:/DM/soss.db/IC_WTH_FRCS'