-- 대구 PCELL 기준정보 | DG_PCEL_STDR_INFO

CREATE TABLE IF NOT EXISTS SOSS.DG_PCEL_STDR_INFO (
	grid_id VARCHAR(20) primary key,
	row_no VARCHAR(20),
	clm_no VARCHAR(20),
	mtr_no VARCHAR(20),
	admd_cd VARCHAR(20),
	cnt_x_crd NUMERIC(32,10),
	cnt_y_crd NUMERIC(32,10),
	min_x_crd NUMERIC(32,10),
	min_y_crd NUMERIC(32,10),
	max_x_crd NUMERIC(32,10),
	max_y_crd NUMERIC(32,10),
	cnt_lo NUMERIC(32,10),
	cnt_la NUMERIC(32,10),
	min_lo NUMERIC(32,10),
	min_la  NUMERIC(32,10),
	max_lo  NUMERIC(32,10),
	max_la NUMERIC(32,10),
	cctv_co NUMERIC
);

-- 테이블 COMMENT
COMMENT ON TABLE SOSS.DG_PCEL_STDR_INFO.grid_id IS '대구 PCELL 기준정보';

-- 컬럼 COMMENT
COMMENT ON COLUMN SOSS.DG_PCEL_STDR_INFO.grid_id IS '그리드ID';
COMMENT ON COLUMN SOSS.DG_PCEL_STDR_INFO.row_no IS '행번호';
COMMENT ON COLUMN SOSS.DG_PCEL_STDR_INFO.clm_no IS '열번호';
COMMENT ON COLUMN SOSS.DG_PCEL_STDR_INFO.mtr_no IS '행렬번호';
COMMENT ON COLUMN SOSS.DG_PCEL_STDR_INFO.admd_cd IS '행정동코드';
COMMENT ON COLUMN SOSS.DG_PCEL_STDR_INFO.cnt_x_crd IS '중심X좌표';
COMMENT ON COLUMN SOSS.DG_PCEL_STDR_INFO.cnt_y_crd IS '중심Y좌표';
COMMENT ON COLUMN SOSS.DG_PCEL_STDR_INFO.min_x_crd IS '최소X좌표';
COMMENT ON COLUMN SOSS.DG_PCEL_STDR_INFO.min_y_crd IS '최소Y좌표';
COMMENT ON COLUMN SOSS.DG_PCEL_STDR_INFO.max_x_crd IS '최대X좌표';
COMMENT ON COLUMN SOSS.DG_PCEL_STDR_INFO.max_y_crd IS '최대Y좌표';
COMMENT ON COLUMN SOSS.DG_PCEL_STDR_INFO.cnt_lo IS '중심경도';
COMMENT ON COLUMN SOSS.DG_PCEL_STDR_INFO.cnt_la IS '중심위도';
COMMENT ON COLUMN SOSS.DG_PCEL_STDR_INFO.min_lo IS '최소경도';
COMMENT ON COLUMN SOSS.DG_PCEL_STDR_INFO.min_la IS '최소위도';
COMMENT ON COLUMN SOSS.DG_PCEL_STDR_INFO.max_lo IS '최대경도';
COMMENT ON COLUMN SOSS.DG_PCEL_STDR_INFO.max_la IS '최대위도';
COMMENT ON COLUMN SOSS.DG_PCEL_STDR_INFO.cctv_co IS 'CCTV수';