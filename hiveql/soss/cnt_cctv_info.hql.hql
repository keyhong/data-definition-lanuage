-- 관제CCTV정보 | CNT_CCTV_INFO

CREATE EXTERNAL TABLE IF NOT EXISTS SOSS.CNT_CCTV_INFO (
	cctv_mngm_no STRING COMMENT 'CCTV관리번호@pk', 
	mngm_ist_nm STRING COMMENT '관리기관명', 
	sgg_nm STRING COMMENT '시군구명', 
	ins_year STRING COMMENT '설치년도', 
	ins_mm STRING COMMENT '설치월', 
	ins_de STRING COMMENT '설치일자', 
	ins_prp_cn STRING COMMENT '설치목적내용', 
	la DECIMAL(18,8) COMMENT '위도', 
	lo DECIMAL(18,8) COMMENT '경도', 
	rn_adrs STRING COMMENT '도로명주소', 
	lno_adrs STRING COMMENT '지번주소', 
	admd_nm STRING COMMENT '행정동명', 
	ins_plc_nm STRING COMMENT '설치장소명', 
	pxl_val STRING COMMENT '화소값', 
	cmr_ty_nm STRING COMMENT '카메라유형명', 
	mngm_dept_nm STRING COMMENT '관리부서명', 
	telco_nm STRING COMMENT '통신사명', 
	wire_no STRING COMMENT '회선번호', 
	cmp_plst_nm STRING COMMENT '관할경찰서명', 
	cmr_mdl_nm STRING COMMENT '카메라모델명', 
	makr_nm STRING COMMENT '제조사명', 
	bsnm_nm STRING COMMENT '사업명', 
	ins_mthd_nm STRING COMMENT '설치방식명', 
	frst_ins_acc_de STRING COMMENT '최초설치검수일자', 
	elpl_no STRING COMMENT '전주번호', 
	cmp_kepco_nm STRING COMMENT '관할한전명', 
	pht_mthd_ty_nm STRING COMMENT '촬영방식유형명', 
	mnt_dstn_val STRING COMMENT '감시거리값', 
	ip_val STRING COMMENT 'IP값', 
	pss_val STRING COMMENT '패스워드값', 
	user_id STRING COMMENT '이용자ID'
)
COMMENT '관제CCTV정보'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY "|"
STORED AS TEXTFILE
LOCATION 'maprfs:/DM/soss.db/CNT_CCTV_INFO'
TBLPROPERTIES ('serialization.encoding'='euc-kr')