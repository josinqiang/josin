-- Drop table

-- DROP TABLE ods_machine.b4_cf_r2_m_process_define;

CREATE TABLE ods_machine.b4_cf_r2_m_process_define (
	hssubno int4 NULL,
	datano int4 NULL,
	dataaddress bpchar(7) NULL,
	"datatype" bpchar(8) NULL,
	datawordcount int4 NULL,
	dataformat int4 NULL,
	dispformat int4 NULL,
	viewlevel int4 NULL,
	viewdatano int4 NULL,
	datalang1 varchar(128) NULL,
	datalang2 varchar(128) NULL,
	datalang3 varchar(128) NULL,
	datalang4 varchar(128) NULL,
	w_insert_dt timestamp NULL,
	w_update_dt timestamp NULL,
	src_sys_id varchar(6) NULL,
	src_sys_bsn_key varchar(200) NULL,
	is_del bpchar(1) NULL
)
WITH (
	appendonly=true,
	orientation=column,
	compresstype=zstd
)
TABLESPACE ods_tablespace

DISTRIBUTED BY (src_sys_id, src_sys_bsn_key);
COMMENT ON TABLE ods_machine.b4_cf_r2_m_process_define IS 'd_process_history注释表,包含1和2,仅用于理解d_process_history1和d_process_history2';

-- Permissions

ALTER TABLE ods_machine.b4_cf_r2_m_process_define OWNER TO ur_uown_ods;
GRANT ALL ON TABLE ods_machine.b4_cf_r2_m_process_define TO ur_uown_ods;
GRANT ALL ON TABLE ods_machine.b4_cf_r2_m_process_define TO gr_uapp_data;
GRANT SELECT ON TABLE ods_machine.b4_cf_r2_m_process_define TO gr_uqry_data;
