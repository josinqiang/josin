-- Drop table

-- DROP TABLE dw.td_com_exchage_rate_by_cny;

CREATE TABLE dw.td_com_exchage_rate_by_cny (
	row_wid int8 NULL,
	rate_date date NULL, -- ��������
	currency text NULL, -- ����
	rate numeric NULL, -- ����
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
COMMENT ON TABLE dw.td_com_exchage_rate_by_cny IS '����ά��-��������ҵĻ��ʣ�ֻȡÿ�µ�һ�������գ�';

-- Column comments

COMMENT ON COLUMN dw.td_com_exchage_rate_by_cny.rate_date IS '��������';
COMMENT ON COLUMN dw.td_com_exchage_rate_by_cny.currency IS '����';
COMMENT ON COLUMN dw.td_com_exchage_rate_by_cny.rate IS '����';

-- Permissions

ALTER TABLE dw.td_com_exchage_rate_by_cny OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_com_exchage_rate_by_cny TO ur_uown_edw;
GRANT SELECT ON TABLE dw.td_com_exchage_rate_by_cny TO gr_uqry_data;
GRANT ALL ON TABLE dw.td_com_exchage_rate_by_cny TO gr_uapp_data;
