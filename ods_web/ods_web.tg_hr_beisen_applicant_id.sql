-- Drop table

-- DROP TABLE ods_web.tg_hr_beisen_applicant_id;

CREATE TABLE ods_web.tg_hr_beisen_applicant_id (
	applicant_id varchar(100) NULL, -- 应聘者ID
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
TABLESPACE ods_tablespace

DISTRIBUTED BY (src_sys_id, src_sys_bsn_key);
COMMENT ON TABLE ods_web.tg_hr_beisen_applicant_id IS '北森HR数据，应聘者ID,缓存表';

-- Column comments

COMMENT ON COLUMN ods_web.tg_hr_beisen_applicant_id.applicant_id IS '应聘者ID';

-- Permissions

ALTER TABLE ods_web.tg_hr_beisen_applicant_id OWNER TO ur_uown_ods;
GRANT ALL ON TABLE ods_web.tg_hr_beisen_applicant_id TO ur_uown_ods;
GRANT ALL ON TABLE ods_web.tg_hr_beisen_applicant_id TO gr_uapp_data;
GRANT SELECT ON TABLE ods_web.tg_hr_beisen_applicant_id TO gr_uqry_data;
