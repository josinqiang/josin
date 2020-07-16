-- Drop table

-- DROP TABLE dw.td_business_quota_copq_responsibility_coefficient;

CREATE TABLE dw.td_business_quota_copq_responsibility_coefficient (
	row_wid int8 NULL,
	id numeric(10) NULL, -- ����
	factory varchar(4000) NULL, -- ����
	work_section varchar(4000) NULL, -- ����
	bad_name varchar(4000) NULL, -- ��������
	grade varchar(4000) NULL, -- �ȼ�
	code varchar(4000) NULL, -- COPQ CODE
	arrays varchar(4000) NULL, -- array
	cf varchar(4000) NULL, -- cf
	cell varchar(4000) NULL, -- cell
	modules varchar(4000) NULL, -- module
	release_date varchar(4000) NULL, -- ��������
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
COMMENT ON TABLE dw.td_business_quota_copq_responsibility_coefficient IS 'COPQָ��-���ϵ�����ñ�';

-- Column comments

COMMENT ON COLUMN dw.td_business_quota_copq_responsibility_coefficient.id IS '����';
COMMENT ON COLUMN dw.td_business_quota_copq_responsibility_coefficient.factory IS '����';
COMMENT ON COLUMN dw.td_business_quota_copq_responsibility_coefficient.work_section IS '����';
COMMENT ON COLUMN dw.td_business_quota_copq_responsibility_coefficient.bad_name IS '��������';
COMMENT ON COLUMN dw.td_business_quota_copq_responsibility_coefficient.grade IS '�ȼ�';
COMMENT ON COLUMN dw.td_business_quota_copq_responsibility_coefficient.code IS 'COPQ CODE';
COMMENT ON COLUMN dw.td_business_quota_copq_responsibility_coefficient.arrays IS 'array';
COMMENT ON COLUMN dw.td_business_quota_copq_responsibility_coefficient.cf IS 'cf';
COMMENT ON COLUMN dw.td_business_quota_copq_responsibility_coefficient.cell IS 'cell';
COMMENT ON COLUMN dw.td_business_quota_copq_responsibility_coefficient.modules IS 'module';
COMMENT ON COLUMN dw.td_business_quota_copq_responsibility_coefficient.release_date IS '��������';

-- Permissions

ALTER TABLE dw.td_business_quota_copq_responsibility_coefficient OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_business_quota_copq_responsibility_coefficient TO ur_uown_edw;
GRANT SELECT ON TABLE dw.td_business_quota_copq_responsibility_coefficient TO gr_uqry_data;
GRANT ALL ON TABLE dw.td_business_quota_copq_responsibility_coefficient TO gr_uapp_data;
