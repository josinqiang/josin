-- Drop table

-- DROP TABLE dw.td_hr_cost_center;

CREATE TABLE dw.td_hr_cost_center (
	row_wid int8 NULL,
	setid varchar(20) NOT NULL DEFAULT NULL::character varying, -- ���� ID
	b_cost_center_id varchar(40) NULL, -- �ɱ�����ID
	effdt timestamp NULL, -- ��Ч����
	eff_status_code varchar(4) NULL, -- ��Ч����״̬����
	eff_status_name varchar(40) NULL,
	b_cost_center varchar(200) NULL, -- �ɱ���������
	descrshort varchar(40) NULL, -- �������
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
COMMENT ON TABLE dw.td_hr_cost_center IS '�ɱ�����';

-- Column comments

COMMENT ON COLUMN dw.td_hr_cost_center.setid IS '���� ID';
COMMENT ON COLUMN dw.td_hr_cost_center.b_cost_center_id IS '�ɱ�����ID';
COMMENT ON COLUMN dw.td_hr_cost_center.effdt IS '��Ч����';
COMMENT ON COLUMN dw.td_hr_cost_center.eff_status_code IS '��Ч����״̬����';
COMMENT ON COLUMN dw.td_hr_cost_center.b_cost_center IS '�ɱ���������';
COMMENT ON COLUMN dw.td_hr_cost_center.descrshort IS '�������';

-- Permissions

ALTER TABLE dw.td_hr_cost_center OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_hr_cost_center TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_hr_cost_center TO gr_uapp_data;
GRANT SELECT ON TABLE dw.td_hr_cost_center TO gr_uqry_data;
