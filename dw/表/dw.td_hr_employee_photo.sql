-- Drop table

-- DROP TABLE dw.td_hr_employee_photo;

CREATE TABLE dw.td_hr_employee_photo (
	row_wid int8 NOT NULL,
	emplid varchar(44) NOT NULL, -- 员工ID
	photo_sizename varchar(16) NOT NULL, -- 照片尺寸
	photo_imgname varchar(1016) NOT NULL, -- 照片名称
	psimagever numeric NOT NULL,
	lastupddttm timestamp NULL, -- 更新时间
	employee_photo text NULL, -- 员工照片
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
COMMENT ON TABLE dw.td_hr_employee_photo IS '照片信息';

-- Column comments

COMMENT ON COLUMN dw.td_hr_employee_photo.emplid IS '员工ID';
COMMENT ON COLUMN dw.td_hr_employee_photo.photo_sizename IS '照片尺寸';
COMMENT ON COLUMN dw.td_hr_employee_photo.photo_imgname IS '照片名称';
COMMENT ON COLUMN dw.td_hr_employee_photo.lastupddttm IS '更新时间';
COMMENT ON COLUMN dw.td_hr_employee_photo.employee_photo IS '员工照片';

-- Permissions

ALTER TABLE dw.td_hr_employee_photo OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_hr_employee_photo TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_hr_employee_photo TO gr_uapp_data;
GRANT SELECT ON TABLE dw.td_hr_employee_photo TO gr_uqry_data;
