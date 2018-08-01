SELECT charge as "REPAIR CHARGE", cellphone as "Repair Customer ID", bike_id as "Repair Bike ID" 
FROM bc_repair_data
WHERE not EXISTS
(SELECT purchase_id FROM bc_purchase_records WHERE 

	bc_purchase_records.cellphone = bc_repair_data.cellphone);