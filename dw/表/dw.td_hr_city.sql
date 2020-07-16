-- Drop table

-- DROP TABLE dw.td_hr_city;

CREATE TABLE dw.td_hr_city (
	row_wid int8 NOT NULL, -- �����
	country_code varchar(12) NULL, -- ����/��������
	country_name varchar(12) NULL, -- ����/��������
	state_code varchar(24) NULL, -- ��/ʡ����
	state_name varchar(24) NULL, -- ��/ʡ����
	city varchar(120) NULL, -- ����
	descr varchar(120) NULL, -- ����
	descr10 varchar(40) NULL, -- ����
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
COMMENT ON TABLE dw.td_hr_city IS '������Ϣ��';

-- Column comments

COMMENT ON COLUMN dw.td_hr_city.row_wid IS '�����';
COMMENT ON COLUMN dw.td_hr_city.country_code IS '����/��������';
COMMENT ON COLUMN dw.td_hr_city.country_name IS '����/��������';
COMMENT ON COLUMN dw.td_hr_city.state_code IS '��/ʡ����';
COMMENT ON COLUMN dw.td_hr_city.state_name IS '��/ʡ����';
COMMENT ON COLUMN dw.td_hr_city.city IS '����';
COMMENT ON COLUMN dw.td_hr_city.descr IS '����';
COMMENT ON COLUMN dw.td_hr_city.descr10 IS '����';

-- Permissions

ALTER TABLE dw.td_hr_city OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_hr_city TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_hr_city TO gr_uapp_data;
GRANT SELECT ON TABLE dw.td_hr_city TO gr_uqry_data;
