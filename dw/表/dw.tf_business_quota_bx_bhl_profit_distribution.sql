-- Drop table

-- DROP TABLE dw.tf_business_quota_bx_bhl_profit_distribution;

CREATE TABLE dw.tf_business_quota_bx_bhl_profit_distribution (
	years int4 NULL, -- ���
	months int4 NULL, -- �·�
	item varchar(255) NULL, -- ��Ŀ
	b1 numeric NULL, -- BHL�е�
	b3 numeric NULL,
	b4 numeric NULL,
	b5 numeric NULL,
	b6 numeric NULL,
	b7 numeric NULL,
	b8 numeric NULL,
	bmdt numeric NULL,
	bhl numeric NULL,
	w_insert_dt timestamp NULL,
	w_update_dt timestamp NULL,
	src_crt_dt timestamp NULL,
	src_upd_dt timestamp NULL,
	src_sys_id varchar(6) NULL,
	src_sys_bsn_key varchar(300) NULL,
	is_del varchar(1) NULL
)
WITH (
	appendonly=true,
	orientation=column,
	compresstype=zstd
)
TABLESPACE edw_tablespace

DISTRIBUTED BY (src_sys_id, src_sys_bsn_key);
COMMENT ON TABLE dw.tf_business_quota_bx_bhl_profit_distribution IS 'bxָ��:BHL�����̯';

-- Column comments

COMMENT ON COLUMN dw.tf_business_quota_bx_bhl_profit_distribution.years IS '���';
COMMENT ON COLUMN dw.tf_business_quota_bx_bhl_profit_distribution.months IS '�·�';
COMMENT ON COLUMN dw.tf_business_quota_bx_bhl_profit_distribution.item IS '��Ŀ';
COMMENT ON COLUMN dw.tf_business_quota_bx_bhl_profit_distribution.b1 IS 'BHL�е�';

-- Permissions

ALTER TABLE dw.tf_business_quota_bx_bhl_profit_distribution OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_bx_bhl_profit_distribution TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_bx_bhl_profit_distribution TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_business_quota_bx_bhl_profit_distribution TO gr_uqry_data;
