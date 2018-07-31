select bc_customers.cellphone, bc_customers.city, bc_customers.occupation
bc_purchase_records.purchase_price, bc_purchase_records.bike_id

from bc_customers

left join bc_purchase_records on bc_customers.cellphone = bc_purchase_records.cellphone;
