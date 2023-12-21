-- PCELL시간대성연령유형통계 | DW_PCEL_TMZN_SXDS_AGGR_TY_STT

CREATE TABLE IF NOT EXISTS SOSS.DW_PCEL_TMZN_SXDS_AGGR_TY_STT (
	stdr_de VARCHAR(8) NULL,
	stdr_tm VARCHAR(2) NULL,
	admd_cd VARCHAR(10) NULL,
	X_CRD DECIMAL(18,8) NULL, 
	y_crd DECIMAL(18,8) NULL, 
	rsd_ppl_male_10_co DECIMAL(18,4) NULL, 
	rsd_ppl_male_20_co DECIMAL(18,4) NULL, 
	rsd_ppl_male_30_co DECIMAL(18,4) NULL, 
	rsd_ppl_male_40_co DECIMAL(18,4) NULL, 
	rsd_ppl_male_50_co DECIMAL(18,4) NULL, 
	rsd_ppl_male_60_co DECIMAL(18,4) NULL, 
	rsd_ppl_male_70_co DECIMAL(18,4) NULL, 
	rsd_ppl_fml_10_co DECIMAL(18,4) NULL, 
	rsd_ppl_fml_20_co DECIMAL(18,4) NULL, 
	rsd_ppl_fml_30_co DECIMAL(18,4) NULL, 
	rsd_ppl_fml_40_co DECIMAL(18,4) NULL, 
	rsd_ppl_fml_50_co DECIMAL(18,4) NULL, 
	rsd_ppl_fml_60_co DECIMAL(18,4) NULL, 
	rsd_ppl_fml_70_co DECIMAL(18,4) NULL,
	wrc_ppl_male_10_co DECIMAL(18,4) NULL,
	wrc_ppl_male_20_co DECIMAL(18,4) NULL,
	wrc_ppl_male_30_co DECIMAL(18,4) NULL,
	wrc_ppl_male_40_co DECIMAL(18,4) NULL,
	wrc_ppl_male_50_co DECIMAL(18,4) NULL,
	wrc_ppl_male_60_co DECIMAL(18,4) NULL,
	wrc_ppl_male_70_co DECIMAL(18,4) NULL,
	wrc_ppl_fml_10_co DECIMAL(18,4) NULL,
	wrc_ppl_fml_20_co DECIMAL(18,4) NULL,
	wrc_ppl_fml_30_co DECIMAL(18,4) NULL,
	wrc_ppl_fml_40_co DECIMAL(18,4) NULL,
	wrc_ppl_fml_50_co DECIMAL(18,4) NULL,
	wrc_ppl_fml_60_co DECIMAL(18,4) NULL,
	wrc_ppl_fml_70_co DECIMAL(18,4) NULL,
	vst_ppl_male_10_co DECIMAL(18,4) NULL,
	vst_ppl_male_20_co DECIMAL(18,4) NULL,
	vst_ppl_male_30_co DECIMAL(18,4) NULL,
	vst_ppl_male_40_co DECIMAL(18,4) NULL,
	vst_ppl_male_50_co DECIMAL(18,4) NULL,
	vst_ppl_male_60_co DECIMAL(18,4) NULL, 
	vst_ppl_male_70_co DECIMAL(18,4) NULL,
	vst_ppl_fml_10_co DECIMAL(18,4) NULL,
	vst_ppl_fml_20_co DECIMAL(18,4) NULL,
	vst_ppl_fml_30_co DECIMAL(18,4) NULL,
	vst_ppl_fml_40_co DECIMAL(18,4) NULL,
	vst_ppl_fml_50_co DECIMAL(18,4) NULL,
	vst_ppl_fml_60_co DECIMAL(18,4) NULL,
	vst_ppl_fml_70_co DECIMAL(18,4) NULL,
	pcel_tmzn_male_co DECIMAL(18,4) NULL,
	pcel_tmzn_fml_co DECIMAL(18,4) NULL, 
	lod_dt VARCHAR(20) NULL
);

-- 테이블 COMMENT
COMMENT ON TABLE SOSS.DW_PCEL_TMZN_SXDS_AGGR_TY_STT IS 'PCELL시간대성연령유형통계';

-- 컬럼 COMMENT
COMMENT ON COLUMN SOSS.DW_PCEL_TMZN_SXDS_AGGR_TY_STT.stdr_de IS '기준일자';
COMMENT ON COLUMN SOSS.DW_PCEL_TMZN_SXDS_AGGR_TY_STT.stdr_tm IS '기준시간';
COMMENT ON COLUMN SOSS.DW_PCEL_TMZN_SXDS_AGGR_TY_STT.admd_cd IS '행정동코드';
COMMENT ON COLUMN SOSS.DW_PCEL_TMZN_SXDS_AGGR_TY_STT.X_CRD IS 'X좌표';
COMMENT ON COLUMN SOSS.DW_PCEL_TMZN_SXDS_AGGR_TY_STT.y_crd IS 'Y좌표';
COMMENT ON COLUMN SOSS.DW_PCEL_TMZN_SXDS_AGGR_TY_STT.rsd_ppl_male_10_co IS '주거인구남자10수(시간별비율수)';
COMMENT ON COLUMN SOSS.DW_PCEL_TMZN_SXDS_AGGR_TY_STT.rsd_ppl_male_20_co IS '주거인구남자20수(시간별비율수)';
COMMENT ON COLUMN SOSS.DW_PCEL_TMZN_SXDS_AGGR_TY_STT.rsd_ppl_male_30_co IS '주거인구남자30수(시간별비율수)';
COMMENT ON COLUMN SOSS.DW_PCEL_TMZN_SXDS_AGGR_TY_STT.rsd_ppl_male_40_co IS '주거인구남자40수(시간별비율수)';
COMMENT ON COLUMN SOSS.DW_PCEL_TMZN_SXDS_AGGR_TY_STT.rsd_ppl_male_50_co IS '주거인구남자50수(시간별비율수)';
COMMENT ON COLUMN SOSS.DW_PCEL_TMZN_SXDS_AGGR_TY_STT.rsd_ppl_male_60_co IS '주거인구남자60수(시간별비율수)';
COMMENT ON COLUMN SOSS.DW_PCEL_TMZN_SXDS_AGGR_TY_STT.rsd_ppl_male_70_co IS '주거인구남자70수(시간별비율수)';
COMMENT ON COLUMN SOSS.DW_PCEL_TMZN_SXDS_AGGR_TY_STT.rsd_ppl_fml_10_co IS '주거인구여자10수(시간별비율수)'; 
COMMENT ON COLUMN SOSS.DW_PCEL_TMZN_SXDS_AGGR_TY_STT.rsd_ppl_fml_20_co IS '주거인구여자20수(시간별비율수)';
COMMENT ON COLUMN SOSS.DW_PCEL_TMZN_SXDS_AGGR_TY_STT.rsd_ppl_fml_30_co IS '주거인구여자30수(시간별비율수)'; 
COMMENT ON COLUMN SOSS.DW_PCEL_TMZN_SXDS_AGGR_TY_STT.rsd_ppl_fml_40_co IS '주거인구여자40수(시간별비율수)'; 
COMMENT ON COLUMN SOSS.DW_PCEL_TMZN_SXDS_AGGR_TY_STT.rsd_ppl_fml_50_co IS '주거인구여자50수(시간별비율수)'; 
COMMENT ON COLUMN SOSS.DW_PCEL_TMZN_SXDS_AGGR_TY_STT.rsd_ppl_fml_60_co IS '주거인구여자60수(시간별비율수)'; 
COMMENT ON COLUMN SOSS.DW_PCEL_TMZN_SXDS_AGGR_TY_STT.rsd_ppl_fml_70_co IS '주거인구여자70수(시간별비율수)';  
COMMENT ON COLUMN SOSS.DW_PCEL_TMZN_SXDS_AGGR_TY_STT.wrc_ppl_male_10_co IS '직장인구남자10수(시간별비율수)'; 
COMMENT ON COLUMN SOSS.DW_PCEL_TMZN_SXDS_AGGR_TY_STT.wrc_ppl_male_20_co IS '직장인구남자20수(시간별비율수)'; 
COMMENT ON COLUMN SOSS.DW_PCEL_TMZN_SXDS_AGGR_TY_STT.wrc_ppl_male_30_co IS '직장인구남자30수(시간별비율수)'; 
COMMENT ON COLUMN SOSS.DW_PCEL_TMZN_SXDS_AGGR_TY_STT.wrc_ppl_male_40_co IS '직장인구남자40수(시간별비율수)'; 
COMMENT ON COLUMN SOSS.DW_PCEL_TMZN_SXDS_AGGR_TY_STT.wrc_ppl_male_50_co IS '직장인구남자50수(시간별비율수)'; 
COMMENT ON COLUMN SOSS.DW_PCEL_TMZN_SXDS_AGGR_TY_STT.wrc_ppl_male_60_co IS '직장인구남자60수(시간별비율수)'; 
COMMENT ON COLUMN SOSS.DW_PCEL_TMZN_SXDS_AGGR_TY_STT.wrc_ppl_male_70_co IS '직장인구남자70수(시간별비율수)'; 
COMMENT ON COLUMN SOSS.DW_PCEL_TMZN_SXDS_AGGR_TY_STT.wrc_ppl_fml_10_co IS '직장인구여자10수(시간별비율수)'; 
COMMENT ON COLUMN SOSS.DW_PCEL_TMZN_SXDS_AGGR_TY_STT.wrc_ppl_fml_20_co IS '직장인구여자20수(시간별비율수)'; 
COMMENT ON COLUMN SOSS.DW_PCEL_TMZN_SXDS_AGGR_TY_STT.wrc_ppl_fml_30_co IS '직장인구여자30수(시간별비율수)'; 
COMMENT ON COLUMN SOSS.DW_PCEL_TMZN_SXDS_AGGR_TY_STT.wrc_ppl_fml_40_co IS '직장인구여자40수(시간별비율수)'; 
COMMENT ON COLUMN SOSS.DW_PCEL_TMZN_SXDS_AGGR_TY_STT.wrc_ppl_fml_50_co IS '직장인구여자50수(시간별비율수)'; 
COMMENT ON COLUMN SOSS.DW_PCEL_TMZN_SXDS_AGGR_TY_STT.wrc_ppl_fml_60_co IS '직장인구여자60수(시간별비율수)'; 
COMMENT ON COLUMN SOSS.DW_PCEL_TMZN_SXDS_AGGR_TY_STT.wrc_ppl_fml_70_co IS '직장인구여자70수(시간별비율수)'; 
COMMENT ON COLUMN DW_PCEL_TMZN_SXDS_AGGR_TY_STT.vst_ppl_male_10_co IS '방문인구남자10수(시간별비율수)'; 
COMMENT ON COLUMN DW_PCEL_TMZN_SXDS_AGGR_TY_STT.vst_ppl_male_20_co IS '방문인구남자20수(시간별비율수)'; 
COMMENT ON COLUMN DW_PCEL_TMZN_SXDS_AGGR_TY_STT.vst_ppl_male_30_co IS '방문인구남자30수(시간별비율수)'; 
COMMENT ON COLUMN DW_PCEL_TMZN_SXDS_AGGR_TY_STT.vst_ppl_male_40_co IS '방문인구남자40수(시간별비율수)'; 
COMMENT ON COLUMN DW_PCEL_TMZN_SXDS_AGGR_TY_STT.vst_ppl_male_50_co IS '방문인구남자50수(시간별비율수)'; 
COMMENT ON COLUMN DW_PCEL_TMZN_SXDS_AGGR_TY_STT.vst_ppl_male_60_co IS '방문인구남자60수(시간별비율수)';
COMMENT ON COLUMN DW_PCEL_TMZN_SXDS_AGGR_TY_STT.vst_ppl_male_70_co IS '방문인구남자70수(시간별비율수)'; 
COMMENT ON COLUMN DW_PCEL_TMZN_SXDS_AGGR_TY_STT.vst_ppl_fml_10_co IS '방문인구여자10수(시간별비율수)';
COMMENT ON COLUMN DW_PCEL_TMZN_SXDS_AGGR_TY_STT.vst_ppl_fml_20_co IS '방문인구여자20수(시간별비율수)'; 
COMMENT ON COLUMN DW_PCEL_TMZN_SXDS_AGGR_TY_STT.vst_ppl_fml_30_co IS '방문인구여자30수(시간별비율수)'; 
COMMENT ON COLUMN DW_PCEL_TMZN_SXDS_AGGR_TY_STT.vst_ppl_fml_40_co IS '방문인구여자40수(시간별비율수)'; 
COMMENT ON COLUMN DW_PCEL_TMZN_SXDS_AGGR_TY_STT.vst_ppl_fml_50_co IS '방문인구여자50수(시간별비율수)'; 
COMMENT ON COLUMN DW_PCEL_TMZN_SXDS_AGGR_TY_STT.vst_ppl_fml_60_co IS '방문인구여자60수(시간별비율수)'; 
COMMENT ON COLUMN DW_PCEL_TMZN_SXDS_AGGR_TY_STT.vst_ppl_fml_70_co IS '방문인구여자70수(시간별비율수)';
COMMENT ON COLUMN DW_PCEL_TMZN_SXDS_AGGR_TY_STT.pcel_tmzn_male_co IS 'PCELL시간대남자수';
COMMENT ON COLUMN DW_PCEL_TMZN_SXDS_AGGR_TY_STT.pcel_tmzn_fml_co IS 'PCELL시간대여자수';
COMMENT ON COLUMN DW_PCEL_TMZN_SXDS_AGGR_TY_STT.lod_dt IS '적재일시';