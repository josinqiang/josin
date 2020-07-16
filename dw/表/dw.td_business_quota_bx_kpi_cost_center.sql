-- Drop table

-- DROP TABLE dw.td_business_quota_bx_kpi_cost_center;

CREATE TABLE dw.td_business_quota_bx_kpi_cost_center (
	row_wid int8 NULL,
	cost_center_code varchar(100) NULL DEFAULT NULL::character varying, -- �ɱ�����CODE
	cost_center_description varchar(1000) NULL DEFAULT NULL::character varying, -- �ɱ���������
	dept_name varchar(1000) NULL DEFAULT NULL::character varying, -- ����
	dept_common_name varchar(1000) NULL DEFAULT NULL::character varying, -- ���ų�������
	factory varchar(1000) NULL DEFAULT NULL::character varying, -- ����
	bx_type varchar(1000) NULL DEFAULT NULL::character varying, -- ��BX
	tech_bu varchar(1000) NULL DEFAULT NULL::character varying, -- ����/�ֵ�
	expire_date varchar(100) NULL DEFAULT NULL::character varying, -- ʧЧ����
	kpi_flag varchar(100) NULL DEFAULT NULL::character varying, -- KPI��ʶ
	w_insert_dt timestamp NULL DEFAULT NULL::timestamp without time zone,
	w_update_dt timestamp NULL DEFAULT NULL::timestamp without time zone,
	src_crt_dt timestamp NULL,
	src_upd_dt timestamp NULL,
	src_sys_id varchar(6) NULL DEFAULT NULL::character varying,
	src_sys_bsn_key varchar(200) NULL DEFAULT NULL::character varying,
	is_del varchar(10) NULL DEFAULT NULL::character varying,
	belong varchar(255) NULL -- ����
)
WITH (
	appendonly=true,
	orientation=column,
	compresstype=zstd
)
TABLESPACE edw_tablespace

DISTRIBUTED BY (src_sys_id, src_sys_bsn_key);
COMMENT ON TABLE dw.td_business_quota_bx_kpi_cost_center IS 'BXָ�꣺KPI�ɱ�����ӳ���';

-- Column comments

COMMENT ON COLUMN dw.td_business_quota_bx_kpi_cost_center.cost_center_code IS '�ɱ�����CODE';
COMMENT ON COLUMN dw.td_business_quota_bx_kpi_cost_center.cost_center_description IS '�ɱ���������';
COMMENT ON COLUMN dw.td_business_quota_bx_kpi_cost_center.dept_name IS '����';
COMMENT ON COLUMN dw.td_business_quota_bx_kpi_cost_center.dept_common_name IS '���ų�������';
COMMENT ON COLUMN dw.td_business_quota_bx_kpi_cost_center.factory IS '����';
COMMENT ON COLUMN dw.td_business_quota_bx_kpi_cost_center.bx_type IS '��BX';
COMMENT ON COLUMN dw.td_business_quota_bx_kpi_cost_center.tech_bu IS '����/�ֵ�';
COMMENT ON COLUMN dw.td_business_quota_bx_kpi_cost_center.expire_date IS 'ʧЧ����';
COMMENT ON COLUMN dw.td_business_quota_bx_kpi_cost_center.kpi_flag IS 'KPI��ʶ';
COMMENT ON COLUMN dw.td_business_quota_bx_kpi_cost_center.belong IS '����';

-- Permissions

ALTER TABLE dw.td_business_quota_bx_kpi_cost_center OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_business_quota_bx_kpi_cost_center TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_business_quota_bx_kpi_cost_center TO gr_uapp_data;
GRANT SELECT ON TABLE dw.td_business_quota_bx_kpi_cost_center TO gr_uqry_data;
