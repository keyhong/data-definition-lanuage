-- 기상청그리드기준정보 | Postgres | KMA_GRID_STDR_INFO

CREATE TABLE IF NOT EXISTS ADHC.KMA_GRID_STDR_INFO (
	nation_nm VARCHAR(50)
, admd_cd VARCHAR(10)
, admd_dtl_nm1 VARCHAR(50)
, admd_dtl_nm2 VARCHAR(50)
, admd_dtl_nm3 VARCHAR(50)
, grid_x_crd DECIMAL(18, 8)
, grid_y_crd DECIMAL(18, 8)
, lo_dtl_val1 VARCHAR(50)
, lo_dtl_val2 VARCHAR(50)
, lo_dtl_val3 VARCHAR(50)
, la_dtl_val1 VARCHAR(50)
, la_dtl_val2 VARCHAR(50)
, la_dtl_val3 VARCHAR(50)
, lo DECIMAL(13, 10)
, la DECIMAL(12, 10)
, lc_updt_de VARCHAR(50)
, CONSTRAINT kma_grid_stdr_info_pk PRIMARY KEY (nation_nm, admd_cd, admd_dtl_nm1, admd_dtl_nm2, admd_dtl_nm3)
);

-- 테이블 COMMENT
COMMENT ON TABLE ADHC.KMA_GRID_STDR_INFO IS '기상청그리드기준정보';

-- 컬럼 COMMENT
COMMENT ON COLUMN ADHC.KMA_GRID_STDR_INFO.nation_nm IS '국가명@pk';
COMMENT ON COLUMN ADHC.KMA_GRID_STDR_INFO.admd_cd IS '행정동코드@pk';
COMMENT ON COLUMN ADHC.KMA_GRID_STDR_INFO.admd_dtl_nm1 IS '행정동상세명1@pk';
COMMENT ON COLUMN ADHC.KMA_GRID_STDR_INFO.admd_dtl_nm2 IS '행정동상세명2@pk';
COMMENT ON COLUMN ADHC.KMA_GRID_STDR_INFO.admd_dtl_nm3 IS '행정동상세명3@pk';
COMMENT ON COLUMN ADHC.KMA_GRID_STDR_INFO.grid_x_crd IS '그리드X좌표(격자X)';
COMMENT ON COLUMN ADHC.KMA_GRID_STDR_INFO.grid_y_crd IS '그리드Y좌표(격자Y)';
COMMENT ON COLUMN ADHC.KMA_GRID_STDR_INFO.lo_dtl_val1 IS '경도상세값1(시)';
COMMENT ON COLUMN ADHC.KMA_GRID_STDR_INFO.lo_dtl_val2 IS '경도상세값2(분)';
COMMENT ON COLUMN ADHC.KMA_GRID_STDR_INFO.lo_dtl_val3 IS '경도상세값3(초)';
COMMENT ON COLUMN ADHC.KMA_GRID_STDR_INFO.la_dtl_val1 IS '위도상세값1(시)';
COMMENT ON COLUMN ADHC.KMA_GRID_STDR_INFO.la_dtl_val2 IS '위도상세값2(분)';
COMMENT ON COLUMN ADHC.KMA_GRID_STDR_INFO.la_dtl_val3 IS '위도상세값3(초)';
COMMENT ON COLUMN ADHC.KMA_GRID_STDR_INFO.lo IS '경도(초/100)';
COMMENT ON COLUMN ADHC.KMA_GRID_STDR_INFO.la IS '위도(초/100)';
COMMENT ON COLUMN ADHC.KMA_GRID_STDR_INFO.lc_updt_de IS '위치수정일자';