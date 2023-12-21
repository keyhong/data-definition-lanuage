-- 경찰청신고접수 | NPA_DCR_RCP

CREATE EXTERNAL TABLE SOSS.NPA_DCR_RCP(
	rcp_de STRING COMMENT '접수일자',
	rcp_tm STRING COMMENT '접수시간',
	incd_emr_cd STRING COMMENT '사건긴급코드',
	rcp_ty_nm STRING COMMENT '접수유형명',
	ass_cl_nm STRING COMMENT '종별분류명',
	incd_ass_nm STRING COMMENT '사건종별명',
	cmp_grfc_nm STRING COMMENT '관할관서명',
	end_cl_nm STRING COMMENT '종결분류명',
	stt_end_nm STRING COMMENT '신고종결명',
	lno_adrs STRING COMMENT '지번주소',
	rn_adrs STRING COMMENT '도로명주소',
	admd STRING COMMENT '행정동',
	lo DECIMAL(18,8) COMMENT '경도',
	la DECIMAL(18,8) COMMENT '위도',
	gu_cd STRING COMMENT '구코드',
	admd_cd STRING COMMENT '행정동코드',
	utmk_lo DECIMAL(18,8) COMMENT '경도(UTM-K)',
	utmk_la DECIMAL(18,8) COMMENT '위도(UTM-K)',
	mtr_no STRING COMMENT '행렬번호'
)
COMMENT '경찰청신고접수'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY "|"
STORED AS TEXTFILE
LOCATION 'maprfs:/DM/soss.db/NPA_DCR_RCP'
;