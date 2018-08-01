create table  BC_OUTPUT_c
AS ( 
select bc_customers.cellphone, bc_customers.name, bc_customers.city, bc_customers.occupation, 
bc_purchase_records.purchase_price, bc_purchase_records.bike_id, 
bc_repair_data.date_in, bc_repair_data.charge

from bc_customers

left join bc_purchase_records on bc_customers.cellphone = bc_purchase_records.cellphone

left join bc_repair_data on bc_customers.cellphone = bc_repair_data.cellphone)
;
