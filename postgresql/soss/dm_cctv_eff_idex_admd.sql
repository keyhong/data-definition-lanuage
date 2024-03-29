-- (T)CCTV효율지수행정동
CREATE TABLE IF NOT EXISTS SOSS.DM_CCTV_EFF_IDEX_ADMD (
	stdr_de VARCHAR(8)
, stdr_tm VARCHAR(2)
, admd_cd VARCHAR(10)
, gu_cd VARCHAR(5) NOT NULL
, cctv_eff_idex DECIMAL(18, 2) NOT NULL
, need_cctv_co SMALLINT NOT NULL
, CONSTRAINT dm_cctv_eff_idex_admd_pk PRIMARY KEY (stdr_de, stdr_tm, admd_cd)
);

-- 테이블 COMMENT
COMMENT ON TABLE SOSS.DM_CCTV_EFF_IDEX_ADMD IS 'CCTV효율지수행정동';

-- 컬럼 COMMENT
COMMENT ON COLUMN SOSS.DM_CCTV_EFF_IDEX_ADMD.stdr_de IS '기준일자@pk';
COMMENT ON COLUMN SOSS.DM_CCTV_EFF_IDEX_ADMD.stdr_tm IS '기준시간@pk'; 
COMMENT ON COLUMN SOSS.DM_CCTV_EFF_IDEX_ADMD.admd_cd IS '행정동코드@pk'; 
COMMENT ON COLUMN SOSS.DM_CCTV_EFF_IDEX_ADMD.gu_cd IS '구코드'; 
COMMENT ON COLUMN SOSS.DM_CCTV_EFF_IDEX_ADMD.cctv_eff_idex IS 'CCTV효율지수'; 
COMMENT ON COLUMN SOSS.DM_CCTV_EFF_IDEX_ADMD.need_cctv_co IS '필요CCTV수';