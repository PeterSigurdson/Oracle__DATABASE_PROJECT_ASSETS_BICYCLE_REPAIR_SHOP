create table  BC_OUTPUT_E
AS ( 
select bc_customers.cellphone as custid, bc_customers.name as custname, bc_customers.city as custcity, 
bc_customers.occupation as job, bc_purchase_records.purchase_price as purchase_price, 
bc_purchase_records.bike_id as purchase_bike,  
bc_repair_data.date_in as repair_date_in, bc_repair_data.charge as repair_charge 

from bc_customers

left join bc_purchase_records on bc_customers.cellphone = bc_purchase_records.cellphone

left join bc_repair_data on bc_customers.cellphone = bc_repair_data.cellphone)
;
