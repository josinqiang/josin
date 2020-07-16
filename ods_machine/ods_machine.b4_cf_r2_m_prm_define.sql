-- Drop table

-- DROP TABLE ods_machine.b4_cf_r2_m_prm_define;

CREATE TABLE ods_machine.b4_cf_r2_m_prm_define (
	paramno int4 NULL, -- 通用recipe
	paramid bpchar(32) NULL,
	recipetype int4 NULL, -- recipe类型
	paramsectionno int4 NULL,
	paramblockno int4 NULL,
	sameparamno int4 NULL,
	cclinkwrite bool NULL,
	dataaddress bpchar(7) NULL,
	"datatype" bpchar(8) NULL,
	datawordcount int4 NULL,
	dataformat int4 NULL,
	dispformat int4 NULL,
	recommendedvalue float8 NULL,
	parammin varchar(32) NULL,
	parammax varchar(32) NULL,
	rangeeditlvl int4 NULL,
	rangeviewlvl int4 NULL,
	valueeditlvl int4 NULL,
	valueviewlvl int4 NULL,
	editviewcondition varchar(32) NULL,
	dispredrawflg bool NULL,
	paramnamelng1 varchar(128) NULL, -- recipe名称，英文
	paramnamelng2 varchar(128) NULL,
	paramnamelng3 varchar(128) NULL,
	paramnamelng4 varchar(128) NULL,
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
COMMENT ON TABLE ods_machine.b4_cf_r2_m_prm_define IS 'd_prm_prc字段定义表';

-- Column comments

COMMENT ON COLUMN ods_machine.b4_cf_r2_m_prm_define.paramno IS '通用recipe';
COMMENT ON COLUMN ods_machine.b4_cf_r2_m_prm_define.recipetype IS 'recipe类型';
COMMENT ON COLUMN ods_machine.b4_cf_r2_m_prm_define.paramnamelng1 IS 'recipe名称，英文';

-- Permissions

ALTER TABLE ods_machine.b4_cf_r2_m_prm_define OWNER TO ur_uown_ods;
GRANT ALL ON TABLE ods_machine.b4_cf_r2_m_prm_define TO ur_uown_ods;
GRANT ALL ON TABLE ods_machine.b4_cf_r2_m_prm_define TO gr_uapp_data;
GRANT SELECT ON TABLE ods_machine.b4_cf_r2_m_prm_define TO gr_uqry_data;
