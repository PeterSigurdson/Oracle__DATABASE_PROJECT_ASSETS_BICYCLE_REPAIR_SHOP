SELECT CELLPHONE, BC_CUSTOMERS.NAME FROM BC_CUSTOMERS 

UNION

SELECT CELLPHONE, BC_PURCHASE_RECORDS.BIKE_ID FROM BC_PURCHASE_RECORDS

ORDER BY CELLPHONE;  



select bc_customers.cellphone AS "CUST ID", bc_customers.name AS "CUST NAME", bc_customers.city, bc_customers.occupation,  
bc_repair_data.CELLPHONE AS "REPAIR CUST ID", bc_repair_data.date_in as "REPAIR DATE IN", bc_repair_data.charge AS "REPAIR CHARGE"

from bc_customers

left join bc_repair_data on bc_customers.cellphone = bc_repair_data.cellphone  ;


SELECT charge as "REPAIR CHARGE", cellphone as "Repair Customer ID", bike_id as "Repair Bike ID" 
FROM bc_repair_data
WHERE not EXISTS
(SELECT purchase_id FROM bc_purchase_records WHERE 

	bc_purchase_records.cellphone = bc_repair_data.cellphone);