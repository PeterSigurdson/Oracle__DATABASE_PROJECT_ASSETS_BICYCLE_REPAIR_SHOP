SELECT CELLPHONE, BC_CUSTOMERS.NAME FROM BC_CUSTOMERS 

UNION

SELECT CELLPHONE, BC_PURCHASE_RECORDS.BIKE_ID FROM BC_PURCHASE_RECORDS

ORDER BY CELLPHONE;  