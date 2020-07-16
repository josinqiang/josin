-- Drop table

-- DROP TABLE ods_bwm.psnpubliccodeitem;

CREATE TABLE ods_bwm.psnpubliccodeitem (
	typeid varchar(40) NULL,
	itemid varchar(40) NULL,
	itemvalue varchar(100) NULL,
	available int4 NULL,
	isreserve int4 NULL,
	code varchar(40) NULL,
	indexcode varchar(10) NULL,
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
COMMENT ON TABLE ods_bwm.psnpubliccodeitem IS '人事公用代码项，考勤系统配置项';

-- Permissions

ALTER TABLE ods_bwm.psnpubliccodeitem OWNER TO ur_uown_ods;
GRANT ALL ON TABLE ods_bwm.psnpubliccodeitem TO ur_uown_ods;
GRANT ALL ON TABLE ods_bwm.psnpubliccodeitem TO gr_uapp_data;
GRANT SELECT ON TABLE ods_bwm.psnpubliccodeitem TO gr_uqry_data;
