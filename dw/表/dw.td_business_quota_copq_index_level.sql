-- Drop table

-- DROP TABLE dw.td_business_quota_copq_index_level;

CREATE TABLE dw.td_business_quota_copq_index_level (
	row_wid int8 NULL, -- �����
	codeid int8 NULL, -- ����
	code varchar(100) NULL, -- ����
	basis_index varchar(255) NULL, -- ����ָ��
	level1 varchar(255) NULL, -- һ��ָ��
	level2 varchar(255) NULL, -- ����ָ��
	level3 varchar(255) NULL, -- ����ָ��
	level4 varchar(255) NULL, -- �ļ�ָ��
	level5 varchar(255) NULL, -- �弶ָ��
	level6 varchar(255) NULL, -- ����ָ��
	level7 varchar(255) NULL, -- �߼�ָ��
	level8 varchar(255) NULL, -- �˼�ָ��
	level9 varchar(255) NULL, -- �ż�ָ��
	level10 varchar(255) NULL, -- ʮ��ָ��
	w_insert_dt timestamp NULL,
	w_update_dt timestamp NULL,
	src_crt_dt timestamp NULL,
	src_upd_dt timestamp NULL,
	src_sys_id varchar(6) NULL,
	src_sys_bsn_key varchar(300) NULL,
	is_del varchar(1) NULL
)
WITH (
	appendonly=true,
	orientation=column,
	compresstype=zstd
)
TABLESPACE edw_tablespace

DISTRIBUTED BY (src_sys_id, src_sys_bsn_key);
COMMENT ON TABLE dw.td_business_quota_copq_index_level IS 'COPQָ��:ָ���νṹ(�ֹ�ά��)';

-- Column comments

COMMENT ON COLUMN dw.td_business_quota_copq_index_level.row_wid IS '�����';
COMMENT ON COLUMN dw.td_business_quota_copq_index_level.codeid IS '����';
COMMENT ON COLUMN dw.td_business_quota_copq_index_level.code IS '����';
COMMENT ON COLUMN dw.td_business_quota_copq_index_level.basis_index IS '����ָ��';
COMMENT ON COLUMN dw.td_business_quota_copq_index_level.level1 IS 'һ��ָ��';
COMMENT ON COLUMN dw.td_business_quota_copq_index_level.level2 IS '����ָ��';
COMMENT ON COLUMN dw.td_business_quota_copq_index_level.level3 IS '����ָ��';
COMMENT ON COLUMN dw.td_business_quota_copq_index_level.level4 IS '�ļ�ָ��';
COMMENT ON COLUMN dw.td_business_quota_copq_index_level.level5 IS '�弶ָ��';
COMMENT ON COLUMN dw.td_business_quota_copq_index_level.level6 IS '����ָ��';
COMMENT ON COLUMN dw.td_business_quota_copq_index_level.level7 IS '�߼�ָ��';
COMMENT ON COLUMN dw.td_business_quota_copq_index_level.level8 IS '�˼�ָ��';
COMMENT ON COLUMN dw.td_business_quota_copq_index_level.level9 IS '�ż�ָ��';
COMMENT ON COLUMN dw.td_business_quota_copq_index_level.level10 IS 'ʮ��ָ��';

-- Permissions

ALTER TABLE dw.td_business_quota_copq_index_level OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_business_quota_copq_index_level TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_business_quota_copq_index_level TO gr_uapp_data;
GRANT SELECT ON TABLE dw.td_business_quota_copq_index_level TO gr_uqry_data;
