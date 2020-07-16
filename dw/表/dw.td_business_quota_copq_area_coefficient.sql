-- Drop table

-- DROP TABLE dw.td_business_quota_copq_area_coefficient;

CREATE TABLE dw.td_business_quota_copq_area_coefficient (
	row_wid int8 NULL,
	factory_code varchar(4000) NULL, -- ��������
	factory varchar(4000) NULL, -- ����
	area_coefficient varchar(4000) NULL, -- ���ϵ��
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
COMMENT ON TABLE dw.td_business_quota_copq_area_coefficient IS 'COPQָ�꣺�����������ϵ��';

-- Column comments

COMMENT ON COLUMN dw.td_business_quota_copq_area_coefficient.factory_code IS '��������';
COMMENT ON COLUMN dw.td_business_quota_copq_area_coefficient.factory IS '����';
COMMENT ON COLUMN dw.td_business_quota_copq_area_coefficient.area_coefficient IS '���ϵ��';

-- Permissions

ALTER TABLE dw.td_business_quota_copq_area_coefficient OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_business_quota_copq_area_coefficient TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_business_quota_copq_area_coefficient TO gr_uapp_data;
GRANT SELECT ON TABLE dw.td_business_quota_copq_area_coefficient TO gr_uqry_data;
