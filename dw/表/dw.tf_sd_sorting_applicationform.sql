-- Drop table

-- DROP TABLE dw.tf_sd_sorting_applicationform;

CREATE TABLE dw.tf_sd_sorting_applicationform (
	row_id varchar(60) NOT NULL,
	approvalorderid varchar(200) NULL, -- ���������
	application_date_wid int8 NULL, -- �ύʱ������
	terminaltime timestamp NULL, -- ����ʱ��
	draftername varchar(200) NULL, -- �����
	draftingnumber varchar(200) NULL, -- ����
	centraldepartment varchar(200) NULL, -- ����
	drafterdepartment varchar(200) NULL, -- ����
	administrative varchar(200) NULL, -- ����
	formtype varchar(200) NULL, -- ������
	title varchar(400) NULL, -- ����
	boeshippingfactory varchar(200) NULL, -- ��������
	businesstype varchar(200) NULL, -- ҵ������
	sortingquantity varchar(200) NULL, -- Sorting����
	sortingamount varchar(200) NULL, -- Sorting���
	billstatus varchar(200) NULL, -- ����ص�״̬
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
COMMENT ON TABLE dw.tf_sd_sorting_applicationform IS 'Sorting���뵥';

-- Column comments

COMMENT ON COLUMN dw.tf_sd_sorting_applicationform.approvalorderid IS '���������';
COMMENT ON COLUMN dw.tf_sd_sorting_applicationform.application_date_wid IS '�ύʱ������';
COMMENT ON COLUMN dw.tf_sd_sorting_applicationform.terminaltime IS '����ʱ��';
COMMENT ON COLUMN dw.tf_sd_sorting_applicationform.draftername IS '�����';
COMMENT ON COLUMN dw.tf_sd_sorting_applicationform.draftingnumber IS '����';
COMMENT ON COLUMN dw.tf_sd_sorting_applicationform.centraldepartment IS '����';
COMMENT ON COLUMN dw.tf_sd_sorting_applicationform.drafterdepartment IS '����';
COMMENT ON COLUMN dw.tf_sd_sorting_applicationform.administrative IS '����';
COMMENT ON COLUMN dw.tf_sd_sorting_applicationform.formtype IS '������';
COMMENT ON COLUMN dw.tf_sd_sorting_applicationform.title IS '����';
COMMENT ON COLUMN dw.tf_sd_sorting_applicationform.boeshippingfactory IS '��������';
COMMENT ON COLUMN dw.tf_sd_sorting_applicationform.businesstype IS 'ҵ������';
COMMENT ON COLUMN dw.tf_sd_sorting_applicationform.sortingquantity IS 'Sorting����';
COMMENT ON COLUMN dw.tf_sd_sorting_applicationform.sortingamount IS 'Sorting���';
COMMENT ON COLUMN dw.tf_sd_sorting_applicationform.billstatus IS '����ص�״̬';

-- Permissions

ALTER TABLE dw.tf_sd_sorting_applicationform OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_sd_sorting_applicationform TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_sd_sorting_applicationform TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_sd_sorting_applicationform TO gr_uqry_data;
