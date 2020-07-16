CREATE OR REPLACE FUNCTION dw.fnc_update_b4_monovalent(p_year_month varchar)
	RETURNS void
	LANGUAGE plpgsql
	VOLATILE
AS $$
	
BEGIN
	-- Routine body goes here...	
	     truncate table dw.tf_business_quota_copq_b4_monovalent_temp;
			 
	     insert into dw.tf_business_quota_copq_b4_monovalent_temp
			 select * 
			   from dw.tf_business_quota_copq_b4_monovalent 
			   where price is not null and price <> 0
				   and concat(year,month) >= p_year_month;
					 
			 update dw.tf_business_quota_copq_b4_monovalent list
			    set price_his = (select t1.price
														from dw.tf_business_quota_copq_b4_monovalent_temp t1
													 where t1.client = list.client
														 and t1.year||t1.month = (select max(t2.year || t2.month) 
																												from dw.tf_business_quota_copq_b4_monovalent_temp t2
																											 where t2.client = list.client
																												 and (t2.year || t2.month) <= (list.year||list.month)
																												 and t2.material_number = list.material_number
																												 and t2.price is not null and t2.price <> 0)
														 and t1.material_number = list.material_number
														 and t1.price is not null and t1.price <> 0 ),
					    price_pre_month = (select t1.price
																	from dw.tf_business_quota_copq_b4_monovalent_temp t1
																 where t1.client = list.client
																	 and date(t1.year||t1.month || '01')  = date(date(list.year||list.month || '01') +INTERVAL '-1 month')
																	 and t1.material_number = list.material_number
																	 and t1.price is not null and t1.price <> 0 ),
							price_same_modle = decode((select avg(t1.price)
																					from dw.tf_business_quota_copq_b4_monovalent_temp t1
																				 where t1.client = list.client
																					 and (t1.year||t1.month) = (list.year||list.month)
																					 and t1.material_number like substr(list.material_number,1,length(list.material_number) - 1)||'%'
																					 and t1.price is not null and t1.price <> 0),0,
																				 (select avg(t1.price)
																						from dw.tf_business_quota_copq_b4_monovalent_temp t1
																					 where t1.client = list.client
																						 and (t1.year||t1.month) = (list.year||list.month)
																						 and t1.material_number like substr(list.material_number,1,length(list.material_number) - 2)||'%'
																						 and t1.price is not null and t1.price <> 0 ),
																				 (select avg(t1.price)
																						from dw.tf_business_quota_copq_b4_monovalent_temp t1
																					 where t1.client = list.client
																						 and (t1.year||t1.month) = (list.year||list.month)
																						 and t1.material_number like substr(list.material_number,1,length(list.material_number) - 1)||'%'
																						 and t1.price is not null and t1.price <> 0))
				where concat(list.year,list.month) >= p_year_month 
				  --and list.material_number = 'B4P185WH5VP02-P'
					;
					
				update dw.tf_business_quota_copq_b4_monovalent 
			     set price = decode(price_current,
															0,
															decode(price_pre_month,
																 0,
																 decode(price_move_avg,
																		0,
																		decode(price_close_inv,
																				 0,
																				 decode(price_his,
																						0,
																						decode(price_same_modle1,0,price_same_modle2,price_same_modle1),
																						price_his),
																				 price_close_inv),
																		price_move_avg),
																 price_pre_month),
															price_current)
				where concat(list.year,list.month) >= p_year_month 
				  --and list.material_number = 'B4P185WH5VP02-P'
					;	
END

$$
EXECUTE ON ANY;

-- Permissions

ALTER FUNCTION dw.fnc_update_b4_monovalent(varchar) OWNER TO ur_uown_edw;
GRANT ALL ON FUNCTION dw.fnc_update_b4_monovalent(varchar) TO ur_uown_edw;
