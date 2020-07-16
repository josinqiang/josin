-- Drop table

-- DROP TABLE dw.td_hr_languageskill;

CREATE TABLE dw.td_hr_languageskill (
	row_wid int8 NOT NULL, -- �����
	emplid varchar(44) NULL, -- Ա��ID
	seqnbr numeric NULL, -- ���
	b_language_code varchar(120) NULL, -- ���Ա���
	b_language_name text NULL, -- ��������
	update_dt timestamp NULL, -- ����ʱ��
	b_listeninglevel varchar(16) NULL, -- ����ˮƽ
	b_readinglevel varchar(16) NULL, -- �Ķ�ˮƽ
	b_writinglevel varchar(16) NULL, -- д��ˮƽ
	b_speakinglevel varchar(16) NULL, -- ����ˮƽ
	b_certificatetitle varchar(120) NULL, -- ֤������
	b_dateofissue timestamp NULL, -- ֤��ǩ������
	b_examscores varchar(120) NULL, -- ���Է���
	b_cert_num varchar(200) NULL, -- ֤����
	"comments" varchar(600) NULL, -- ��ע
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
COMMENT ON TABLE dw.td_hr_languageskill IS '���Լ�����Ϣ����ά�ȱ�';

-- Column comments

COMMENT ON COLUMN dw.td_hr_languageskill.row_wid IS '�����';
COMMENT ON COLUMN dw.td_hr_languageskill.emplid IS 'Ա��ID';
COMMENT ON COLUMN dw.td_hr_languageskill.seqnbr IS '���';
COMMENT ON COLUMN dw.td_hr_languageskill.b_language_code IS '���Ա���';
COMMENT ON COLUMN dw.td_hr_languageskill.b_language_name IS '��������';
COMMENT ON COLUMN dw.td_hr_languageskill.update_dt IS '����ʱ��';
COMMENT ON COLUMN dw.td_hr_languageskill.b_listeninglevel IS '����ˮƽ';
COMMENT ON COLUMN dw.td_hr_languageskill.b_readinglevel IS '�Ķ�ˮƽ';
COMMENT ON COLUMN dw.td_hr_languageskill.b_writinglevel IS 'д��ˮƽ';
COMMENT ON COLUMN dw.td_hr_languageskill.b_speakinglevel IS '����ˮƽ';
COMMENT ON COLUMN dw.td_hr_languageskill.b_certificatetitle IS '֤������';
COMMENT ON COLUMN dw.td_hr_languageskill.b_dateofissue IS '֤��ǩ������';
COMMENT ON COLUMN dw.td_hr_languageskill.b_examscores IS '���Է���';
COMMENT ON COLUMN dw.td_hr_languageskill.b_cert_num IS '֤����';
COMMENT ON COLUMN dw.td_hr_languageskill."comments" IS '��ע';

-- Permissions

ALTER TABLE dw.td_hr_languageskill OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_hr_languageskill TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_hr_languageskill TO gr_uapp_data;
GRANT SELECT ON TABLE dw.td_hr_languageskill TO gr_uqry_data;
