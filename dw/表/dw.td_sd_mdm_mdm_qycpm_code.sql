-- Drop table

-- DROP TABLE dw.td_sd_mdm_mdm_qycpm_code;

CREATE TABLE dw.td_sd_mdm_mdm_qycpm_code (
	row_wid int8 NOT NULL, -- ά������
	codeid numeric(10) NULL, -- ά����Ȼ��
	dimensions varchar(4000) NULL, -- �ߴ磬������Դmdm_qycpm_code.desc14
	display_mode varchar(4000) NULL, -- ��ʾģʽ��������Դmdm_qycpm_code.desc15
	technical varchar(4000) NULL, -- ������������Դmdm_qycpm_code.desc16
	is_narrow_bezel varchar(4000) NULL, -- �Ƿ�խ�߿�������Դmdm_qycpm_code.desc29
	resolution_ratio varchar(4000) NULL, -- �ֱ��ʣ�������Դmdm_qycpm_code.desc49
	fgcode_id varchar(100) NULL, -- fgcode���룬������Դmdm_qycpm_code.desc50
	refresh_frequency varchar(4000) NULL, -- ˢ��Ƶ�ʣ�������Դmdm_qycpm_code.desc56
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

COMMENT ON COLUMN dw.td_sd_mdm_mdm_qycpm_code.row_wid IS 'ά������';
COMMENT ON COLUMN dw.td_sd_mdm_mdm_qycpm_code.codeid IS 'ά����Ȼ��';
COMMENT ON COLUMN dw.td_sd_mdm_mdm_qycpm_code.dimensions IS '�ߴ磬������Դmdm_qycpm_code.desc14';
COMMENT ON COLUMN dw.td_sd_mdm_mdm_qycpm_code.display_mode IS '��ʾģʽ��������Դmdm_qycpm_code.desc15';
COMMENT ON COLUMN dw.td_sd_mdm_mdm_qycpm_code.technical IS '������������Դmdm_qycpm_code.desc16';
COMMENT ON COLUMN dw.td_sd_mdm_mdm_qycpm_code.is_narrow_bezel IS '�Ƿ�խ�߿�������Դmdm_qycpm_code.desc29';
COMMENT ON COLUMN dw.td_sd_mdm_mdm_qycpm_code.resolution_ratio IS '�ֱ��ʣ�������Դmdm_qycpm_code.desc49';
COMMENT ON COLUMN dw.td_sd_mdm_mdm_qycpm_code.fgcode_id IS 'fgcode���룬������Դmdm_qycpm_code.desc50';
COMMENT ON COLUMN dw.td_sd_mdm_mdm_qycpm_code.refresh_frequency IS 'ˢ��Ƶ�ʣ�������Դmdm_qycpm_code.desc56';

-- Permissions

ALTER TABLE dw.td_sd_mdm_mdm_qycpm_code OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_sd_mdm_mdm_qycpm_code TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_sd_mdm_mdm_qycpm_code TO gr_uapp_data;
GRANT SELECT ON TABLE dw.td_sd_mdm_mdm_qycpm_code TO gr_uqry_data;
