select bc_repair_data.charge as "Repair Cost",  
bc_repair_data.bike_ID as "BIKE ID", 
bc_repair_data.cellphone as "Repair CUSTOMER ID", 
bc_purchase_records.cellphone as "Purchaser ID",
BC_BICYCLE_TABLE.price as "Purchase Price"

from bc_repair_data

left join  bc_purchase_records 
on bc_repair_data.cellphone = bc_purchase_records.cellphone

left join  BC_BICYCLE_TABLE 
on bc_repair_data.bike_ID = BC_BICYCLE_TABLE.bike_ID ;