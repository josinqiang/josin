-- Drop table

-- DROP TABLE dw.tf_qm_b4_monovalent_complete;

CREATE TABLE dw.tf_qm_b4_monovalent_complete (
	material varchar(20) NULL, -- ���Ϻ�
	years varchar(4) NULL, -- ���
	months varchar(2) NULL, -- �¶�
	consumption_price numeric(15,6) NULL, -- �����������ļ۸�
	last_month_price numeric(15,6) NULL, -- �����������ļ۸�
	moving_average_price numeric(15,6) NULL, -- �ƶ�ƽ����
	inventory_price numeric(15,6) NULL, -- ��ĩ���۸�
	history_price numeric(15,6) NULL, -- ��ʷ�۸�
	me2m_price numeric(15,6) NULL, -- me2m�۸�
	same_type_price numeric(15,6) NULL, -- ͬ�ͺż۸�
	monovalent numeric(15,6) NULL, -- ����
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
TABLESPACE edw_tablespace

DISTRIBUTED BY (src_sys_id, src_sys_bsn_key);
COMMENT ON TABLE dw.tf_qm_b4_monovalent_complete IS '����-B4-�ɱ��۸�';

-- Column comments

COMMENT ON COLUMN dw.tf_qm_b4_monovalent_complete.material IS '���Ϻ�';
COMMENT ON COLUMN dw.tf_qm_b4_monovalent_complete.years IS '���';
COMMENT ON COLUMN dw.tf_qm_b4_monovalent_complete.months IS '�¶�';
COMMENT ON COLUMN dw.tf_qm_b4_monovalent_complete.consumption_price IS '�����������ļ۸�';
COMMENT ON COLUMN dw.tf_qm_b4_monovalent_complete.last_month_price IS '�����������ļ۸�';
COMMENT ON COLUMN dw.tf_qm_b4_monovalent_complete.moving_average_price IS '�ƶ�ƽ����';
COMMENT ON COLUMN dw.tf_qm_b4_monovalent_complete.inventory_price IS '��ĩ���۸�';
COMMENT ON COLUMN dw.tf_qm_b4_monovalent_complete.history_price IS '��ʷ�۸�';
COMMENT ON COLUMN dw.tf_qm_b4_monovalent_complete.me2m_price IS 'me2m�۸�';
COMMENT ON COLUMN dw.tf_qm_b4_monovalent_complete.same_type_price IS 'ͬ�ͺż۸�';
COMMENT ON COLUMN dw.tf_qm_b4_monovalent_complete.monovalent IS '����';

-- Permissions

ALTER TABLE dw.tf_qm_b4_monovalent_complete OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_qm_b4_monovalent_complete TO ur_uown_edw;
GRANT SELECT ON TABLE dw.tf_qm_b4_monovalent_complete TO gr_uqry_data;
GRANT ALL ON TABLE dw.tf_qm_b4_monovalent_complete TO gr_uapp_data;
