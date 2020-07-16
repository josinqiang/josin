-- Drop table

-- DROP TABLE dw.td_business_quota_bx_kpi_cost_ccid_category;

CREATE TABLE dw.td_business_quota_bx_kpi_cost_ccid_category (
	row_wid int8 NULL,
	code_from varchar(100) NULL DEFAULT NULL::character varying, -- ��ʼ�ɱ�Ҫ��CODE
	code_to varchar(100) NULL DEFAULT NULL::character varying, -- ��ֹ�ɱ�Ҫ��CODE
	ccid_type varchar(1000) NULL DEFAULT NULL::character varying, -- ��������
	ccid_category varchar(1000) NULL DEFAULT NULL::character varying, -- ��������
	desc1 varchar(1000) NULL DEFAULT NULL::character varying, -- �ɱ�Ҫ��
	expire_date varchar(100) NULL DEFAULT NULL::character varying, -- ʧЧ����
	w_insert_dt timestamp NULL DEFAULT NULL::timestamp without time zone,
	w_update_dt timestamp NULL DEFAULT NULL::timestamp without time zone,
	src_crt_dt timestamp NULL,
	src_upd_dt timestamp NULL,
	src_sys_id varchar(6) NULL DEFAULT NULL::character varying,
	src_sys_bsn_key varchar(200) NULL DEFAULT NULL::character varying,
	is_del bpchar(1) NULL DEFAULT NULL::bpchar
)
WITH (
	appendonly=true,
	orientation=column,
	compresstype=zstd
)
TABLESPACE edw_tablespace

DISTRIBUTED BY (src_sys_id, src_sys_bsn_key);
COMMENT ON TABLE dw.td_business_quota_bx_kpi_cost_ccid_category IS 'BXָ�꣺��ƿ�Ŀ����ӳ���';

-- Column comments

COMMENT ON COLUMN dw.td_business_quota_bx_kpi_cost_ccid_category.code_from IS '��ʼ�ɱ�Ҫ��CODE';
COMMENT ON COLUMN dw.td_business_quota_bx_kpi_cost_ccid_category.code_to IS '��ֹ�ɱ�Ҫ��CODE';
COMMENT ON COLUMN dw.td_business_quota_bx_kpi_cost_ccid_category.ccid_type IS '��������';
COMMENT ON COLUMN dw.td_business_quota_bx_kpi_cost_ccid_category.ccid_category IS '��������';
COMMENT ON COLUMN dw.td_business_quota_bx_kpi_cost_ccid_category.desc1 IS '�ɱ�Ҫ��';
COMMENT ON COLUMN dw.td_business_quota_bx_kpi_cost_ccid_category.expire_date IS 'ʧЧ����';

-- Permissions

ALTER TABLE dw.td_business_quota_bx_kpi_cost_ccid_category OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_business_quota_bx_kpi_cost_ccid_category TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_business_quota_bx_kpi_cost_ccid_category TO gr_uapp_data;
GRANT SELECT ON TABLE dw.td_business_quota_bx_kpi_cost_ccid_category TO gr_uqry_data;
