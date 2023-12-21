-- 대구PCELL시간대유동인구 | DW_DG_PCELL_TMZN_FPOP

CREATE TABLE IF NOT EXISTS SOSS.DW_DG_PCELL_TMZN_FPOP (
	stdr_de VARCHAR(8) NOT NULL, 
	stdr_tm VARCHAR(2) NOT NULL, 
	grid_id VARCHAR(10) NOT NULL, 
	gu_cd VARCHAR(5) NULL,
	admd_cd VARCHAR(10) NULL,
	fpop_co DECIMAL(18,2) NULL,
	CONSTRAINT dw_dg_pcell_tmzn_fpop_pk PRIMARY KEY (stdr_de, stdr_tm, grid_id)
);

-- 테이블 COMMENT
COMMENT ON TABLE SOSS.DW_DG_PCELL_TMZN_FPOP IS '대구PCELL시간대유동인구';

-- 컬럼 COMMENT
COMMENT ON COLUMN SOSS.DW_DG_PCELL_TMZN_FPOP.stdr_de IS '기준일자@pk';
COMMENT ON COLUMN SOSS.DW_DG_PCELL_TMZN_FPOP.stdr_tm IS '기준시간@pk';
COMMENT ON COLUMN SOSS.DW_DG_PCELL_TMZN_FPOP.grid_id IS '그리드ID@pk'; 
COMMENT ON COLUMN SOSS.DW_DG_PCELL_TMZN_FPOP.gu_cd IS '구코드'; 
COMMENT ON COLUMN SOSS.DW_DG_PCELL_TMZN_FPOP.admd_cd IS '행정동코드';
COMMENT ON COLUMN SOSS.DW_DG_PCELL_TMZN_FPOP.fpop_co IS '유동인구수';