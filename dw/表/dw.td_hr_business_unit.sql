-- Drop table

-- DROP TABLE dw.td_hr_business_unit;

CREATE TABLE dw.td_hr_business_unit (
	row_wid int8 NOT NULL, -- �����
	business_unit varchar(20) NULL, -- ҵ��λ
	active_inactive varchar(4) NULL, -- ������Ч/��Ч
	descr varchar(120) NULL, -- ����
	descrshort varchar(40) NULL, -- �������
	aggregate_id_code varchar(20) NULL, -- ����ID����
	aggregate_id_name varchar(50) NULL, -- ����ID����
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
COMMENT ON TABLE dw.td_hr_business_unit IS 'ҵ��λ��Ϣ��';

-- Column comments

COMMENT ON COLUMN dw.td_hr_business_unit.row_wid IS '�����';
COMMENT ON COLUMN dw.td_hr_business_unit.business_unit IS 'ҵ��λ';
COMMENT ON COLUMN dw.td_hr_business_unit.active_inactive IS '������Ч/��Ч';
COMMENT ON COLUMN dw.td_hr_business_unit.descr IS '����';
COMMENT ON COLUMN dw.td_hr_business_unit.descrshort IS '�������';
COMMENT ON COLUMN dw.td_hr_business_unit.aggregate_id_code IS '����ID����';
COMMENT ON COLUMN dw.td_hr_business_unit.aggregate_id_name IS '����ID����';

-- Permissions

ALTER TABLE dw.td_hr_business_unit OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_hr_business_unit TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_hr_business_unit TO gr_uapp_data;
GRANT SELECT ON TABLE dw.td_hr_business_unit TO gr_uqry_data;
