CREATE OR REPLACE FUNCTION dw.fnc_get_copq_cost_price(p_client text,p_factory_code text,p_material_code text,p_day_date date,p_year_month text)
	RETURNS SETOF numeric
	LANGUAGE plpgsql
	VOLATILE
AS $$
	 	 	
declare
	v_effective_start_date date;
	v_result numeric(18,6);
begin
	SELECT max(cast(pbl1.effective_start_date as date))
	  into v_effective_start_date
	  FROM dw.tf_pp_bom_list pbl1  
	 inner join dw.td_pp_bom_recursive_mast_detail rmd1
	    on rmd1.material_code = pbl1.material_code
	   and rmd1.client = pbl1.client
	   and rmd1.factory_code = pbl1.factory_code
	   and rmd1.bom_no = pbl1.bom_no
	   and rmd1.component = pbl1.component
       and cast(pbl1.effective_start_date as date) <= p_day_date
       and rmd1.client = p_client
	   and rmd1.search_material_code = p_material_code
	   and rmd1.factory_code = p_factory_code;
	select sum(bl.std_used_quantity*bm.price)
	  into v_result
	  from dw.tf_business_quota_copq_b4_monovalent bm
	 inner join dw.tf_pp_bom_list bl 
		on bl.component = bm.material_number
	   and bl.client = bm.client
	   and cast(bl.effective_start_date as date) = v_effective_start_date
	   and bm.year || bm.month = p_year_month
	 inner join dw.td_pp_bom_recursive_mast_detail rmd
	    on rmd.material_code = bl.material_code
	   and rmd.client = bl.client
	   and rmd.factory_code = bl.factory_code
	   and rmd.bom_no = bl.bom_no
	   and rmd.component = bl.component
	   and rmd.search_material_code = p_material_code
	   and rmd.client = p_client
	   and rmd.factory_code = p_factory_code
	  ;
	 return query select v_result;
   exception when others then 
		v_result := 0;
		return query select v_result;
end;
  
$$
EXECUTE ON ANY;

-- Permissions

ALTER FUNCTION dw.fnc_get_copq_cost_price(text,text,text,date,text) OWNER TO ur_uown_edw;
GRANT ALL ON FUNCTION dw.fnc_get_copq_cost_price(text,text,text,date,text) TO ur_uown_edw;
