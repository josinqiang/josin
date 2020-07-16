-- Drop table

-- DROP TABLE dw.td_fin_account_title_tms;

CREATE TABLE dw.td_fin_account_title_tms (
	row_wid int8 NULL,
	"year" numeric NULL, -- 会计年度
	account_code varchar(16) NULL, -- 会计科目编码
	account_name varchar(80) NULL, -- 会计科目名称
	w_insert_dt timestamp NULL,
	w_update_dt timestamp NULL,
	src_crt_dt timestamp NULL,
	src_upd_dt timestamp NULL,
	src_sys_id varchar(6) NULL,
	src_sys_bsn_key varchar(200) NULL,
	is_del bpchar(1) NULL
)
WITH (
	appendonly=true,
	orientation=column,
	compresstype=zstd
)
TABLESPACE edw_tablespace

DISTRIBUTED BY (src_sys_id, src_sys_bsn_key);
COMMENT ON TABLE dw.td_fin_account_title_tms IS '科目设置信息';

-- Column comments

COMMENT ON COLUMN dw.td_fin_account_title_tms."year" IS '会计年度';
COMMENT ON COLUMN dw.td_fin_account_title_tms.account_code IS '会计科目编码';
COMMENT ON COLUMN dw.td_fin_account_title_tms.account_name IS '会计科目名称';

-- Permissions

ALTER TABLE dw.td_fin_account_title_tms OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_fin_account_title_tms TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_fin_account_title_tms TO gr_uapp_data;
GRANT SELECT ON TABLE dw.td_fin_account_title_tms TO gr_uqry_data;
