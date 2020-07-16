-- Drop table

-- DROP TABLE dw.td_sd_erp_tspat;

CREATE TABLE dw.td_sd_erp_tspat (
	row_wid int8 NOT NULL, -- ά������
	mandt varchar(9) NOT NULL, -- �ͻ���
	spras varchar(3) NOT NULL, -- ���Դ���
	spart varchar(6) NOT NULL, -- ��Ʒ��
	vtext varchar(60) NOT NULL, -- ����
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

-- Column comments

COMMENT ON COLUMN dw.td_sd_erp_tspat.row_wid IS 'ά������';
COMMENT ON COLUMN dw.td_sd_erp_tspat.mandt IS '�ͻ���';
COMMENT ON COLUMN dw.td_sd_erp_tspat.spras IS '���Դ���';
COMMENT ON COLUMN dw.td_sd_erp_tspat.spart IS '��Ʒ��';
COMMENT ON COLUMN dw.td_sd_erp_tspat.vtext IS '����';

-- Permissions

ALTER TABLE dw.td_sd_erp_tspat OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_sd_erp_tspat TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_sd_erp_tspat TO gr_uapp_data;
GRANT SELECT ON TABLE dw.td_sd_erp_tspat TO gr_uqry_data;
