-- Drop table

-- DROP TABLE dw.td_business_quota_bx_pnl_invest_substrates;

CREATE TABLE dw.td_business_quota_bx_pnl_invest_substrates (
	row_wid int8 NULL,
	factory varchar(100) NOT NULL, -- ����
	years varchar(255) NOT NULL, -- ���
	quarter varchar(255) NOT NULL, -- ����
	months varchar(255) NULL, -- �·�
	tr_zsubstrate numeric(15,8) NULL, -- Ͷ�������
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
COMMENT ON TABLE dw.td_business_quota_bx_pnl_invest_substrates IS 'Ͷ�������';

-- Column comments

COMMENT ON COLUMN dw.td_business_quota_bx_pnl_invest_substrates.factory IS '����';
COMMENT ON COLUMN dw.td_business_quota_bx_pnl_invest_substrates.years IS '���';
COMMENT ON COLUMN dw.td_business_quota_bx_pnl_invest_substrates.quarter IS '����';
COMMENT ON COLUMN dw.td_business_quota_bx_pnl_invest_substrates.months IS '�·�';
COMMENT ON COLUMN dw.td_business_quota_bx_pnl_invest_substrates.tr_zsubstrate IS 'Ͷ�������';

-- Permissions

ALTER TABLE dw.td_business_quota_bx_pnl_invest_substrates OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_business_quota_bx_pnl_invest_substrates TO ur_uown_edw;
GRANT SELECT ON TABLE dw.td_business_quota_bx_pnl_invest_substrates TO gr_uqry_data;
GRANT ALL ON TABLE dw.td_business_quota_bx_pnl_invest_substrates TO gr_uapp_data;
