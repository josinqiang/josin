-- Drop table

-- DROP TABLE ods_bwm.atdpersonpaycode;

CREATE TABLE ods_bwm.atdpersonpaycode (
	psnpayid varchar(40) NULL,
	personid varchar(40) NULL,
	paycode varchar(50) NULL,
	laborid varchar(300) NULL,
	laborname varchar(300) NULL,
	payhours numeric(18,2) NULL,
	timecarddate varchar(10) NULL,
	opstate varchar(1) NULL,
	cardtime varchar(20) NULL,
	atdtime varchar(20) NULL,
	startdtm varchar(20) NULL,
	enddtm varchar(20) NULL,
	bu varchar(40) NULL,
	src int4 NULL,
	srclaborid varchar(300) NULL,
	srclaborname varchar(300) NULL,
	srcpaycode varchar(50) NULL,
	srctag varchar(10) NULL,
	istransfer int4 NULL,
	transferdataid varchar(40) NULL,
	note varchar(200) NULL,
	isapproved int4 NULL,
	approveduser varchar(50) NULL,
	approveddtm varchar(20) NULL,
	issigned int4 NULL,
	signeduser varchar(50) NULL,
	signeddtm varchar(20) NULL,
	lastupdateuser varchar(50) NULL,
	lastupdatedtm varchar(40) NULL,
	t00 numeric(7,2) NULL,
	t01 numeric(7,2) NULL,
	t02 numeric(7,2) NULL,
	t03 numeric(7,2) NULL,
	t04 numeric(7,2) NULL,
	t05 numeric(7,2) NULL,
	t06 numeric(7,2) NULL,
	t07 numeric(7,2) NULL,
	t08 numeric(7,2) NULL,
	t09 numeric(7,2) NULL,
	t10 numeric(7,2) NULL,
	t11 numeric(7,2) NULL,
	t12 numeric(7,2) NULL,
	t13 numeric(7,2) NULL,
	t14 numeric(7,2) NULL,
	t15 numeric(7,2) NULL,
	t16 numeric(7,2) NULL,
	t17 numeric(7,2) NULL,
	t18 numeric(7,2) NULL,
	t19 numeric(7,2) NULL,
	t20 numeric(7,2) NULL,
	t21 numeric(7,2) NULL,
	t22 numeric(7,2) NULL,
	t23 numeric(7,2) NULL,
	t24 numeric(7,2) NULL,
	t25 numeric(7,2) NULL,
	t26 numeric(7,2) NULL,
	t27 numeric(7,2) NULL,
	t28 numeric(7,2) NULL,
	t29 numeric(7,2) NULL,
	t30 numeric(7,2) NULL,
	t31 numeric(7,2) NULL,
	t32 numeric(7,2) NULL,
	t33 numeric(7,2) NULL,
	t34 numeric(7,2) NULL,
	t35 numeric(7,2) NULL,
	t36 numeric(7,2) NULL,
	t37 numeric(7,2) NULL,
	t38 numeric(7,2) NULL,
	t39 numeric(7,2) NULL,
	classid varchar(40) NULL,
	payhours2 numeric(8,2) NULL,
	otnoform varchar(1) NULL,
	t40 numeric(7,2) NULL,
	t41 numeric(7,2) NULL,
	t42 numeric(7,2) NULL,
	t43 numeric(7,2) NULL,
	t44 numeric(7,2) NULL,
	t45 numeric(7,2) NULL,
	t46 numeric(7,2) NULL,
	t47 numeric(7,2) NULL,
	t48 numeric(7,2) NULL,
	t49 numeric(7,2) NULL,
	t50 numeric(7,2) NULL,
	t51 numeric(7,2) NULL,
	t52 numeric(7,2) NULL,
	t53 numeric(7,2) NULL,
	t54 numeric(7,2) NULL,
	t55 numeric(7,2) NULL,
	t56 numeric(7,2) NULL,
	t57 numeric(7,2) NULL,
	leave_model varchar(2) NULL,
	t58 numeric(7,2) NULL,
	t59 numeric(7,2) NULL,
	t60 numeric(7,2) NULL,
	t61 numeric(7,2) NULL,
	t62 numeric(7,2) NULL,
	t63 numeric(7,2) NULL,
	t64 numeric(7,2) NULL,
	t65 numeric(7,2) NULL,
	t66 numeric(7,2) NULL,
	t67 numeric(7,2) NULL,
	t68 numeric(7,2) NULL,
	t69 numeric(7,2) NULL,
	t70 numeric(7,2) NULL,
	limit_unit varchar(2) NULL,
	t71 numeric(7,2) NULL,
	t72 numeric(7,2) NULL,
	t73 numeric(7,2) NULL,
	t74 numeric(7,2) NULL,
	t75 numeric(7,2) NULL,
	t76 numeric(7,2) NULL,
	t77 numeric(7,2) NULL,
	t78 numeric(7,2) NULL,
	t79 numeric(7,2) NULL,
	t80 numeric(7,2) NULL,
	t81 numeric(7,2) NULL,
	t82 numeric(7,2) NULL,
	t83 numeric(7,2) NULL,
	t84 numeric(7,2) NULL,
	t85 numeric(7,2) NULL,
	t86 numeric(7,2) NULL,
	t87 numeric(7,2) NULL,
	t88 numeric(7,2) NULL,
	t89 numeric(7,2) NULL,
	t90 numeric(7,2) NULL,
	timecarddate_offset numeric(6,1) NULL,
	timecarddate_tzid varchar(50) NULL,
	startdtm_offset numeric(6,1) NULL,
	startdtm_tzid varchar(50) NULL,
	enddtm_offset numeric(6,1) NULL,
	enddtm_tzid varchar(50) NULL,
	approveddtm_offset numeric(6,1) NULL,
	approveddtm_tzid varchar(50) NULL,
	signeddtm_offset numeric(6,1) NULL,
	signeddtm_tzid varchar(50) NULL,
	lastupdatedtm_offset numeric(6,1) NULL,
	lastupdatedtm_tzid varchar(50) NULL,
	t91 numeric(7,2) NULL,
	t92 numeric(7,2) NULL,
	t93 numeric(7,2) NULL,
	t94 numeric(7,2) NULL,
	t95 numeric(7,2) NULL,
	t96 numeric(7,2) NULL,
	t97 numeric(7,2) NULL,
	t98 numeric(7,2) NULL,
	t99 numeric(7,2) NULL,
	t100 numeric(7,2) NULL,
	t101 numeric(7,2) NULL,
	t102 numeric(7,2) NULL,
	t103 numeric(7,2) NULL,
	t104 numeric(7,2) NULL,
	t105 numeric(7,2) NULL,
	t106 numeric(7,2) NULL,
	t107 numeric(7,2) NULL,
	t108 numeric(7,2) NULL,
	t109 numeric(7,2) NULL,
	t110 numeric(7,2) NULL,
	t111 numeric(7,2) NULL,
	t112 numeric(7,2) NULL,
	t113 numeric(7,2) NULL,
	t114 numeric(7,2) NULL,
	t115 numeric(7,2) NULL,
	t116 numeric(7,2) NULL,
	t117 numeric(7,2) NULL,
	t118 numeric(7,2) NULL,
	t119 numeric(7,2) NULL,
	t120 numeric(7,2) NULL,
	t121 numeric(7,2) NULL,
	t122 numeric(7,2) NULL,
	t123 numeric(7,2) NULL,
	t124 numeric(7,2) NULL,
	t125 numeric(7,2) NULL,
	t126 numeric(7,2) NULL,
	t127 numeric(7,2) NULL,
	t128 numeric(7,2) NULL,
	t129 numeric(7,2) NULL,
	t130 numeric(7,2) NULL,
	t131 numeric(7,2) NULL,
	t132 numeric(7,2) NULL,
	t133 numeric(7,2) NULL,
	t134 numeric(7,2) NULL,
	t135 numeric(7,2) NULL,
	t136 numeric(7,2) NULL,
	t137 numeric(7,2) NULL,
	t138 numeric(7,2) NULL,
	t139 numeric(7,2) NULL,
	t140 numeric(7,2) NULL,
	t141 numeric(7,2) NULL,
	t142 numeric(7,2) NULL,
	t143 numeric(7,2) NULL,
	t144 numeric(7,2) NULL,
	t145 numeric(7,2) NULL,
	t146 numeric(7,2) NULL,
	t147 numeric(7,2) NULL,
	t148 numeric(7,2) NULL,
	t149 numeric(7,2) NULL,
	t150 numeric(7,2) NULL,
	isallow int4 NULL,
	isotresult int4 NULL,
	combination_leave_id varchar(40) NULL,
	w_insert_dt timestamp NULL,
	w_update_dt timestamp NULL,
	src_sys_id varchar(6) NULL,
	src_sys_bsn_key varchar(200) NULL,
	is_del bpchar(10) NULL
)
WITH (
	appendonly=true,
	orientation=column,
	compresstype=zstd
)
TABLESPACE ods_tablespace

DISTRIBUTED BY (src_sys_id, src_sys_bsn_key);
COMMENT ON TABLE ods_bwm.atdpersonpaycode IS '��Ա���ڽ������Ա��ÿ��ÿ��ĳ������ݣ���ʱ���쳣����١�������ÿ�ֶ�Ӧһ�����쳣����ʱ���Ӧɾ���˱���¼��';

-- Permissions

ALTER TABLE ods_bwm.atdpersonpaycode OWNER TO ur_uown_ods;
GRANT ALL ON TABLE ods_bwm.atdpersonpaycode TO ur_uown_ods;
GRANT ALL ON TABLE ods_bwm.atdpersonpaycode TO gr_uapp_data;
GRANT SELECT ON TABLE ods_bwm.atdpersonpaycode TO gr_uqry_data;