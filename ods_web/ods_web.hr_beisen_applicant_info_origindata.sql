-- Drop table

-- DROP TABLE ods_web.hr_beisen_applicant_info_origindata;

CREATE TABLE ods_web.hr_beisen_applicant_info_origindata (
	applicant_id varchar(32) NULL, -- ӦƸ��ID
	content_data text NULL, -- ԭʼJSON����
	w_insert_dt timestamp NULL,
	w_update_dt timestamp NULL,
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
COMMENT ON TABLE ods_web.hr_beisen_applicant_info_origindata IS '��ɭHR���ݣ�ӦƸ����ϸ��Ϣ����ǰ����';

-- Column comments

COMMENT ON COLUMN ods_web.hr_beisen_applicant_info_origindata.applicant_id IS 'ӦƸ��ID';
COMMENT ON COLUMN ods_web.hr_beisen_applicant_info_origindata.content_data IS 'ԭʼJSON����';

-- Permissions

ALTER TABLE ods_web.hr_beisen_applicant_info_origindata OWNER TO ur_uown_ods;
GRANT ALL ON TABLE ods_web.hr_beisen_applicant_info_origindata TO ur_uown_ods;
GRANT ALL ON TABLE ods_web.hr_beisen_applicant_info_origindata TO gr_uapp_data;
GRANT SELECT ON TABLE ods_web.hr_beisen_applicant_info_origindata TO gr_uqry_data;
