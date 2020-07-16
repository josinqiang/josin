-- Drop table

-- DROP TABLE ods_bwm.dbg_accountworking_transfer;

CREATE TABLE ods_bwm.dbg_accountworking_transfer (
	datid varchar(40) NULL,
	personid varchar(40) NULL,
	"data" varchar(10) NULL,
	timedelayhours numeric(18,2) NULL,
	leavehours numeric(18,2) NULL,
	lessferquently numeric(18,2) NULL,
	create_dtm varchar(19) NULL,
	create_user varchar(50) NULL,
	w_insert_dt timestamp NULL,
	w_update_dt timestamp NULL,
	src_sys_id varchar(6) NULL,
	src_sys_bsn_key varchar(200) NULL,
	is_del bpchar(10) NULL
)
WITH (
	appendonly=true,
	orientation=column,
	compresstype=zstd
)
TABLESPACE ods_tablespace

DISTRIBUTED BY (src_sys_id, src_sys_bsn_key);
COMMENT ON TABLE ods_bwm.dbg_accountworking_transfer IS 'DBG工时结转表，综合工时的员工每人每月一条工时结转数据';

-- Permissions

ALTER TABLE ods_bwm.dbg_accountworking_transfer OWNER TO ur_uown_ods;
GRANT ALL ON TABLE ods_bwm.dbg_accountworking_transfer TO ur_uown_ods;
GRANT ALL ON TABLE ods_bwm.dbg_accountworking_transfer TO gr_uapp_data;
GRANT SELECT ON TABLE ods_bwm.dbg_accountworking_transfer TO gr_uqry_data;
