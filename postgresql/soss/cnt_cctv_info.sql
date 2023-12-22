-- 관제CCTV정보 | CNT_CCTV_INFO

CREATE TABLE IF NOT EXISTS SOSS.CNT_CCTV_INFO (
	cctv_mngm_no VARCHAR(20) PRIMARY KEY
, mngm_ist_nm  VARCHAR(20)
, sgg_nm  VARCHAR(20)
, ins_year VARCHAR(10)
, ins_mm VARCHAR(10)
, ins_de VARCHAR(10)
, ins_prp_cn VARCHAR(30)
, la DECIMAL(12, 10)
, lo DECIMAL(13, 10)
, rn_adrs VARCHAR(20)
, lno_adrs VARCHAR(20)
, admd_nm VARCHAR(20)
, ins_plc_nm VARCHAR(20)
, pxl_val VARCHAR(20)
, cmr_ty_nm VARCHAR(20)
, mngm_dept_nm VARCHAR(20)
, telco_nm VARCHAR(20)
, wire_no VARCHAR(20)
, cmp_plst_nm VARCHAR(20)
, cmr_mdl_nm VARCHAR(20)
, makr_nm VARCHAR(20)
, bsnm_nm VARCHAR(20)
, ins_mthd_nm VARCHAR(20)
, frst_ins_acc_de VARCHAR(20)
, elpl_no VARCHAR(20)
, cmp_kepco_nm VARCHAR(20)
, pht_mthd_ty_nm VARCHAR(20)
, mnt_dstn_val VARCHAR(20)
, ip_val VARCHAR(20)
, pss_val VARCHAR(20)
, user_id VARCHAR(20)
);

-- 테이블 COMMENT
COMMENT ON TABLE SOSS.CNT_CCTV_INFO IS '관제CCTV정보';

-- 컬럼 COMMENT
COMMENT ON COLUMN SOSS.CNT_CCTV_INFO.cctv_mngm_no IS 'CCTV관리번호@pk';
COMMENT ON COLUMN SOSS.CNT_CCTV_INFO.mngm_ist_nm IS '관리기관명';
COMMENT ON COLUMN SOSS.CNT_CCTV_INFO.sgg_nm IS '시군구명';
COMMENT ON COLUMN SOSS.CNT_CCTV_INFO.ins_year IS '설치년도';
COMMENT ON COLUMN SOSS.CNT_CCTV_INFO.ins_mm IS '설치월';
COMMENT ON COLUMN SOSS.CNT_CCTV_INFO.ins_de IS '설치일자';
COMMENT ON COLUMN SOSS.CNT_CCTV_INFO.ins_prp_cn IS '설치목적내용';
COMMENT ON COLUMN SOSS.CNT_CCTV_INFO.la IS '위도';
COMMENT ON COLUMN SOSS.CNT_CCTV_INFO.lo IS '경도';
COMMENT ON COLUMN SOSS.CNT_CCTV_INFO.rn_adrs IS '도로명주소';
COMMENT ON COLUMN SOSS.CNT_CCTV_INFO.lno_adrs IS '지번주소';
COMMENT ON COLUMN SOSS.CNT_CCTV_INFO.admd_nm IS '행정동명';
COMMENT ON COLUMN SOSS.CNT_CCTV_INFO.ins_plc_nm IS '설치장소명';
COMMENT ON COLUMN SOSS.CNT_CCTV_INFO.pxl_val IS '화소값';
COMMENT ON COLUMN SOSS.CNT_CCTV_INFO.cmr_ty_nm IS '카메라유형명';
COMMENT ON COLUMN SOSS.CNT_CCTV_INFO.mngm_dept_nm IS '관리부서명';
COMMENT ON COLUMN SOSS.CNT_CCTV_INFO.telco_nm IS '통신사명';
COMMENT ON COLUMN SOSS.CNT_CCTV_INFO.wire_no IS '회선번호';
COMMENT ON COLUMN SOSS.CNT_CCTV_INFO.cmp_plst_nm IS '관할경찰서명';
COMMENT ON COLUMN SOSS.CNT_CCTV_INFO.cmr_mdl_nm IS '카메라모델명';
COMMENT ON COLUMN SOSS.CNT_CCTV_INFO.makr_nm IS '제조사명';
COMMENT ON COLUMN SOSS.CNT_CCTV_INFO.bsnm_nm IS '사업명';
COMMENT ON COLUMN SOSS.CNT_CCTV_INFO.ins_mthd_nm IS '설치방식명';
COMMENT ON COLUMN SOSS.CNT_CCTV_INFO.frst_ins_acc_de IS '최초설치검수일자';
COMMENT ON COLUMN SOSS.CNT_CCTV_INFO.elpl_no IS '전주번호';
COMMENT ON COLUMN SOSS.CNT_CCTV_INFO.cmp_kepco_nm IS '관할한전명';
COMMENT ON COLUMN SOSS.CNT_CCTV_INFO.pht_mthd_ty_nm IS '촬영방식유형명';
COMMENT ON COLUMN SOSS.CNT_CCTV_INFO.mnt_dstn_val IS '감시거리값';
COMMENT ON COLUMN SOSS.CNT_CCTV_INFO.ip_val IS 'IP값';
COMMENT ON COLUMN SOSS.CNT_CCTV_INFO.pss_val IS '패스워드값';
COMMENT ON COLUMN SOSS.CNT_CCTV_INFO.user_id IS '이용자ID';