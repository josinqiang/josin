-- Drop table

-- DROP TABLE dw.tf_sd_erp_ztjf_spim;

CREATE TABLE dw.tf_sd_erp_ztjf_spim (
	dfp_factory_wid int8 NULL, -- ����ά�ȱ�����
	month_wid int8 NULL, -- ����ά�ȱ�����
	zspnum varchar(64) NULL, -- ���ۼƻ��汾
	werks varchar(12) NULL, -- ��������
	spart varchar(6) NULL, -- BU����
	zmdmprdde varchar(180) NULL, -- FGCode
	kunnr varchar(30) NULL, -- �ͻ�����
	zplqty numeric(15,3) NULL, -- Ԥ������
	zmonth varchar(18) NULL, -- Ԥ������
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

COMMENT ON COLUMN dw.tf_sd_erp_ztjf_spim.dfp_factory_wid IS '����ά�ȱ�����';
COMMENT ON COLUMN dw.tf_sd_erp_ztjf_spim.month_wid IS '����ά�ȱ�����';
COMMENT ON COLUMN dw.tf_sd_erp_ztjf_spim.zspnum IS '���ۼƻ��汾';
COMMENT ON COLUMN dw.tf_sd_erp_ztjf_spim.werks IS '��������';
COMMENT ON COLUMN dw.tf_sd_erp_ztjf_spim.spart IS 'BU����';
COMMENT ON COLUMN dw.tf_sd_erp_ztjf_spim.zmdmprdde IS 'FGCode';
COMMENT ON COLUMN dw.tf_sd_erp_ztjf_spim.kunnr IS '�ͻ�����';
COMMENT ON COLUMN dw.tf_sd_erp_ztjf_spim.zplqty IS 'Ԥ������';
COMMENT ON COLUMN dw.tf_sd_erp_ztjf_spim.zmonth IS 'Ԥ������';

-- Permissions

ALTER TABLE dw.tf_sd_erp_ztjf_spim OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_sd_erp_ztjf_spim TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_sd_erp_ztjf_spim TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_sd_erp_ztjf_spim TO gr_uqry_data;
GRANT ALL ON TABLE dw.tf_sd_erp_ztjf_spim TO gr_uown_edw;
