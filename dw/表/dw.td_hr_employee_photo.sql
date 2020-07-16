-- Drop table

-- DROP TABLE dw.td_hr_employee_photo;

CREATE TABLE dw.td_hr_employee_photo (
	row_wid int8 NOT NULL,
	emplid varchar(44) NOT NULL, -- Ա��ID
	photo_sizename varchar(16) NOT NULL, -- ��Ƭ�ߴ�
	photo_imgname varchar(1016) NOT NULL, -- ��Ƭ����
	psimagever numeric NOT NULL,
	lastupddttm timestamp NULL, -- ����ʱ��
	employee_photo text NULL, -- Ա����Ƭ
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
COMMENT ON TABLE dw.td_hr_employee_photo IS '��Ƭ��Ϣ';

-- Column comments

COMMENT ON COLUMN dw.td_hr_employee_photo.emplid IS 'Ա��ID';
COMMENT ON COLUMN dw.td_hr_employee_photo.photo_sizename IS '��Ƭ�ߴ�';
COMMENT ON COLUMN dw.td_hr_employee_photo.photo_imgname IS '��Ƭ����';
COMMENT ON COLUMN dw.td_hr_employee_photo.lastupddttm IS '����ʱ��';
COMMENT ON COLUMN dw.td_hr_employee_photo.employee_photo IS 'Ա����Ƭ';

-- Permissions

ALTER TABLE dw.td_hr_employee_photo OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_hr_employee_photo TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_hr_employee_photo TO gr_uapp_data;
GRANT SELECT ON TABLE dw.td_hr_employee_photo TO gr_uqry_data;
