Create VIEW product_master
WITH SCHEMABINDING
AS 
SELECT	order_id, c.customer_id, order_status, order_date, required_date,	shipped_date,store_id,staff_id
FROM
    sales.orders o
INNER JOIN sales.customers c 
    ON o.customer_id = c.customer_id


CREATE UNIQUE CLUSTERED INDEX 
    ucidx_order_id 
ON product_master(order_id);

select* from
product_master p with (NOEXPAND)
INNER JOIN sales.order_items s
on p.order_id=s.order_id
order by customer_id

