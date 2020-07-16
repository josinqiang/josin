-- Drop table

-- DROP TABLE dw.tf_sd_mwms_sale_info;

CREATE TABLE dw.tf_sd_mwms_sale_info (
	dn varchar(40) NULL, -- DN
	posnr varchar(40) NULL, -- ����Ŀ
	matnr varchar(40) NULL, -- ����
	stockouttime varchar(40) NULL, -- ����ʱ��
	updatetime timestamp NULL, -- ���¸���ʱ��
	boxid varchar(40) NULL, -- BoxID
	quantity numeric(22) NULL, -- ÿ��Box��Tcon������
	source_table_name varchar(100) NULL,
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
COMMENT ON TABLE dw.tf_sd_mwms_sale_info IS '��ϸ�Ĳ���ʵ�������Ϣ';

-- Column comments

COMMENT ON COLUMN dw.tf_sd_mwms_sale_info.dn IS 'DN';
COMMENT ON COLUMN dw.tf_sd_mwms_sale_info.posnr IS '����Ŀ';
COMMENT ON COLUMN dw.tf_sd_mwms_sale_info.matnr IS '����';
COMMENT ON COLUMN dw.tf_sd_mwms_sale_info.stockouttime IS '����ʱ��';
COMMENT ON COLUMN dw.tf_sd_mwms_sale_info.updatetime IS '���¸���ʱ��';
COMMENT ON COLUMN dw.tf_sd_mwms_sale_info.boxid IS 'BoxID';
COMMENT ON COLUMN dw.tf_sd_mwms_sale_info.quantity IS 'ÿ��Box��Tcon������';

-- Permissions

ALTER TABLE dw.tf_sd_mwms_sale_info OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_sd_mwms_sale_info TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_sd_mwms_sale_info TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_sd_mwms_sale_info TO gr_uqry_data;
GRANT SELECT ON TABLE dw.tf_sd_mwms_sale_info TO "109752";
