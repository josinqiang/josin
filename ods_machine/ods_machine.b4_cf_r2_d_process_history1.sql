-- Drop table

-- DROP TABLE ods_machine.b4_cf_r2_d_process_history1;

CREATE TABLE ods_machine.b4_cf_r2_d_process_history1 (
	glassid bpchar(48) NULL,
	dateinfo timestamp NULL,
	recipeno int4 NULL,
	recipename bpchar(32) NULL,
	recipechangedate timestamp NULL,
	data1 varchar(32) NULL,
	data2 varchar(32) NULL,
	data3 varchar(32) NULL,
	data4 varchar(32) NULL,
	data5 varchar(32) NULL,
	data6 varchar(32) NULL,
	data7 varchar(32) NULL,
	data8 varchar(32) NULL,
	data9 varchar(32) NULL,
	data10 varchar(32) NULL,
	data11 varchar(32) NULL,
	data12 varchar(32) NULL,
	data13 varchar(32) NULL,
	data14 varchar(32) NULL,
	data15 varchar(32) NULL,
	data16 varchar(32) NULL,
	data17 varchar(32) NULL,
	data18 varchar(32) NULL,
	data19 varchar(32) NULL,
	data20 varchar(32) NULL,
	data21 varchar(32) NULL,
	data22 varchar(32) NULL,
	data23 varchar(32) NULL,
	data24 varchar(32) NULL,
	data25 varchar(32) NULL,
	data26 varchar(32) NULL,
	data27 varchar(32) NULL,
	data28 varchar(32) NULL,
	data29 varchar(32) NULL,
	data30 varchar(32) NULL,
	data31 varchar(32) NULL,
	data32 varchar(32) NULL,
	data33 varchar(32) NULL,
	data34 varchar(32) NULL,
	data35 varchar(32) NULL,
	data36 varchar(32) NULL,
	data37 varchar(32) NULL,
	data38 varchar(32) NULL,
	data39 varchar(32) NULL,
	data40 varchar(32) NULL,
	data41 varchar(32) NULL,
	data42 varchar(32) NULL,
	data43 varchar(32) NULL,
	data44 varchar(32) NULL,
	data45 varchar(32) NULL,
	data46 varchar(32) NULL,
	data47 varchar(32) NULL,
	data48 varchar(32) NULL,
	data49 varchar(32) NULL,
	data50 varchar(32) NULL,
	data51 varchar(32) NULL,
	data52 varchar(32) NULL,
	data53 varchar(32) NULL,
	data54 varchar(32) NULL,
	data55 varchar(32) NULL,
	data56 varchar(32) NULL,
	data57 varchar(32) NULL,
	data58 varchar(32) NULL,
	data59 varchar(32) NULL,
	data60 varchar(32) NULL,
	data61 varchar(32) NULL,
	data62 varchar(32) NULL,
	data63 varchar(32) NULL,
	data64 varchar(32) NULL,
	data65 varchar(32) NULL,
	data66 varchar(32) NULL,
	data67 varchar(32) NULL,
	data68 varchar(32) NULL,
	data69 varchar(32) NULL,
	data70 varchar(32) NULL,
	data71 varchar(32) NULL,
	data72 varchar(32) NULL,
	data73 varchar(32) NULL,
	data74 varchar(32) NULL,
	data75 varchar(32) NULL,
	data76 varchar(32) NULL,
	data77 varchar(32) NULL,
	data78 varchar(32) NULL,
	data79 varchar(32) NULL,
	data80 varchar(32) NULL,
	data81 varchar(32) NULL,
	data82 varchar(32) NULL,
	data83 varchar(32) NULL,
	data84 varchar(32) NULL,
	data85 varchar(32) NULL,
	data86 varchar(32) NULL,
	data87 varchar(32) NULL,
	data88 varchar(32) NULL,
	data89 varchar(32) NULL,
	data90 varchar(32) NULL,
	data91 varchar(32) NULL,
	data92 varchar(32) NULL,
	data93 varchar(32) NULL,
	data94 varchar(32) NULL,
	data95 varchar(32) NULL,
	data96 varchar(32) NULL,
	data97 varchar(32) NULL,
	data98 varchar(32) NULL,
	data99 varchar(32) NULL,
	data100 varchar(32) NULL,
	ppid bpchar(32) NULL,
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
COMMENT ON TABLE ods_machine.b4_cf_r2_d_process_history1 IS 'coater吐胶历史表1,data1~data32字段注释详见m_process_define表前32行数据';

-- Permissions

ALTER TABLE ods_machine.b4_cf_r2_d_process_history1 OWNER TO ur_uown_ods;
GRANT ALL ON TABLE ods_machine.b4_cf_r2_d_process_history1 TO ur_uown_ods;
GRANT ALL ON TABLE ods_machine.b4_cf_r2_d_process_history1 TO gr_uapp_data;
GRANT SELECT ON TABLE ods_machine.b4_cf_r2_d_process_history1 TO gr_uqry_data;
