-- Drop table

-- DROP TABLE dw.td_hr_languageskill;

CREATE TABLE dw.td_hr_languageskill (
	row_wid int8 NOT NULL, -- 代理键
	emplid varchar(44) NULL, -- 员工ID
	seqnbr numeric NULL, -- 序号
	b_language_code varchar(120) NULL, -- 语言编码
	b_language_name text NULL, -- 语言名称
	update_dt timestamp NULL, -- 更新时间
	b_listeninglevel varchar(16) NULL, -- 听力水平
	b_readinglevel varchar(16) NULL, -- 阅读水平
	b_writinglevel varchar(16) NULL, -- 写作水平
	b_speakinglevel varchar(16) NULL, -- 口语水平
	b_certificatetitle varchar(120) NULL, -- 证书名称
	b_dateofissue timestamp NULL, -- 证书签发日期
	b_examscores varchar(120) NULL, -- 考试分数
	b_cert_num varchar(200) NULL, -- 证书编号
	"comments" varchar(600) NULL, -- 备注
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
COMMENT ON TABLE dw.td_hr_languageskill IS '语言技能信息公共维度表';

-- Column comments

COMMENT ON COLUMN dw.td_hr_languageskill.row_wid IS '代理键';
COMMENT ON COLUMN dw.td_hr_languageskill.emplid IS '员工ID';
COMMENT ON COLUMN dw.td_hr_languageskill.seqnbr IS '序号';
COMMENT ON COLUMN dw.td_hr_languageskill.b_language_code IS '语言编码';
COMMENT ON COLUMN dw.td_hr_languageskill.b_language_name IS '语言名称';
COMMENT ON COLUMN dw.td_hr_languageskill.update_dt IS '更新时间';
COMMENT ON COLUMN dw.td_hr_languageskill.b_listeninglevel IS '听力水平';
COMMENT ON COLUMN dw.td_hr_languageskill.b_readinglevel IS '阅读水平';
COMMENT ON COLUMN dw.td_hr_languageskill.b_writinglevel IS '写作水平';
COMMENT ON COLUMN dw.td_hr_languageskill.b_speakinglevel IS '口语水平';
COMMENT ON COLUMN dw.td_hr_languageskill.b_certificatetitle IS '证书名称';
COMMENT ON COLUMN dw.td_hr_languageskill.b_dateofissue IS '证书签发日期';
COMMENT ON COLUMN dw.td_hr_languageskill.b_examscores IS '考试分数';
COMMENT ON COLUMN dw.td_hr_languageskill.b_cert_num IS '证书编号';
COMMENT ON COLUMN dw.td_hr_languageskill."comments" IS '备注';

-- Permissions

ALTER TABLE dw.td_hr_languageskill OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_hr_languageskill TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_hr_languageskill TO gr_uapp_data;
GRANT SELECT ON TABLE dw.td_hr_languageskill TO gr_uqry_data;
