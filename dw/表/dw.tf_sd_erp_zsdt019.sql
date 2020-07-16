-- Drop table

-- DROP TABLE dw.tf_sd_erp_zsdt019;

CREATE TABLE dw.tf_sd_erp_zsdt019 (
	dfp_factory_wid int8 NULL, -- td_pp_dfp_factoryά������
	day_wid int8 NULL, -- ����ά������
	yjgc varchar(12) NULL, -- ��������
	yjbu varchar(60) NULL, -- Ӧ�ñ�
	yjke varchar(30) NULL, -- ҵ���ͻ�����
	khmc varchar(300) NULL, -- ҵ���ͻ�����
	sdbm varchar(30) NULL, -- �۴﷽����
	sdmc varchar(300) NULL, -- �۴﷽�ͻ�����
	matnr varchar(54) NULL, -- FGCode
	sfdx varchar(6) NULL, -- ԭ��������
	zsrusd numeric(15,2) NULL, -- �۸�
	yjxl numeric(13,3) NULL, -- ����
	fkdat varchar(24) NULL, -- �µ�����
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

COMMENT ON COLUMN dw.tf_sd_erp_zsdt019.dfp_factory_wid IS 'td_pp_dfp_factoryά������';
COMMENT ON COLUMN dw.tf_sd_erp_zsdt019.day_wid IS '����ά������';
COMMENT ON COLUMN dw.tf_sd_erp_zsdt019.yjgc IS '��������';
COMMENT ON COLUMN dw.tf_sd_erp_zsdt019.yjbu IS 'Ӧ�ñ�';
COMMENT ON COLUMN dw.tf_sd_erp_zsdt019.yjke IS 'ҵ���ͻ�����';
COMMENT ON COLUMN dw.tf_sd_erp_zsdt019.khmc IS 'ҵ���ͻ�����';
COMMENT ON COLUMN dw.tf_sd_erp_zsdt019.sdbm IS '�۴﷽����';
COMMENT ON COLUMN dw.tf_sd_erp_zsdt019.sdmc IS '�۴﷽�ͻ�����';
COMMENT ON COLUMN dw.tf_sd_erp_zsdt019.matnr IS 'FGCode';
COMMENT ON COLUMN dw.tf_sd_erp_zsdt019.sfdx IS 'ԭ��������';
COMMENT ON COLUMN dw.tf_sd_erp_zsdt019.zsrusd IS '�۸�';
COMMENT ON COLUMN dw.tf_sd_erp_zsdt019.yjxl IS '����';
COMMENT ON COLUMN dw.tf_sd_erp_zsdt019.fkdat IS '�µ�����';

-- Permissions

ALTER TABLE dw.tf_sd_erp_zsdt019 OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_sd_erp_zsdt019 TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_sd_erp_zsdt019 TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_sd_erp_zsdt019 TO gr_uqry_data;
GRANT ALL ON TABLE dw.tf_sd_erp_zsdt019 TO gr_uown_edw;
