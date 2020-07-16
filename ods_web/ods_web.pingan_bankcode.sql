-- Drop table

-- DROP TABLE ods_web.pingan_bankcode;

CREATE TABLE ods_web.pingan_bankcode (
	cnaps_no varchar(32) NULL, -- ���кű���
	bank_status varchar(8) NULL, -- �����к�״̬
	bank_no varchar(32) NULL, -- ���б��
	reg_no varchar(32) NULL, -- ���б���
	open_bank_name varchar(512) NULL, -- ����������
	recieve_bank_no varchar(32) NULL, -- �����б��
	w_insert_dt timestamp NULL,
	w_update_dt timestamp NULL,
	src_crt_dt timestamp NULL,
	src_upd_dt timestamp NULL,
	src_sys_id varchar(128) NULL,
	src_sys_bsn_key varchar(1024) NULL,
	is_del varchar(10) NULL
)
WITH (
	appendonly=true,
	orientation=column,
	compresstype=zstd
)
TABLESPACE ods_tablespace

DISTRIBUTED BY (src_sys_id, src_sys_bsn_key);

-- Column comments

COMMENT ON COLUMN ods_web.pingan_bankcode.cnaps_no IS '���кű���';
COMMENT ON COLUMN ods_web.pingan_bankcode.bank_status IS '�����к�״̬';
COMMENT ON COLUMN ods_web.pingan_bankcode.bank_no IS '���б��';
COMMENT ON COLUMN ods_web.pingan_bankcode.reg_no IS '���б���';
COMMENT ON COLUMN ods_web.pingan_bankcode.open_bank_name IS '����������';
COMMENT ON COLUMN ods_web.pingan_bankcode.recieve_bank_no IS '�����б��';

-- Permissions

ALTER TABLE ods_web.pingan_bankcode OWNER TO ur_uown_ods;
GRANT ALL ON TABLE ods_web.pingan_bankcode TO ur_uown_ods;
GRANT ALL ON TABLE ods_web.pingan_bankcode TO gr_uapp_data;
GRANT SELECT ON TABLE ods_web.pingan_bankcode TO gr_uqry_data;
GRANT SELECT ON TABLE ods_web.pingan_bankcode TO gr_uown_edw;
GRANT SELECT ON TABLE ods_web.pingan_bankcode TO ur_uown_edw;
