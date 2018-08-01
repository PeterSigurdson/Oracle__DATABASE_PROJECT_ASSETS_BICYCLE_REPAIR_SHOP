select bc_bicycle_table.bike_id as BIKE_ID, 
bc_bicycle_table.price as PRICE, 
bc_purchase_records.cellphone as CUSTID, 
bc_purchase_records.purchase_date as DATE_PURCHASED,
bc_repair_data.date_in as "Date in for Repair", 
bc_repair_data.charge as "Repair Cost", 
bc_repair_data.cellphone as "Repair CustID"

from bc_bicycle_table

left join bc_purchase_records
on bc_purchase_records.bike_id =
bc_bicycle_table.bike_id

left join bc_repair_data 
on bc_repair_data.bike_id =
bc_bicycle_table.bike_id ;  
