
select
so.order_id, CONCAT(sc.first_name,' ',sc.last_name) as 'Costomer Name',
sc.city,sc.state,
so.order_date,
sum(quantity) as 'Total Units',
sum(quantity * soi.list_price) as 'revenue',
pp.product_name,
pc.category_name,
ss.store_name,
CONCAT(st.first_name, ' ' ,sc.last_name) as 'Rep Name'
from sales.orders so join sales.customers sc on so.customer_id = sc.customer_id join
sales.order_items soi on so.order_id=soi.order_id join production.products pp on soi.product_id=pp.product_id join production.categories pc on pp.category_id =
pc.category_id join sales.stores ss on so.store_id = ss.store_id join sales.staffs st on so.staff_id=st.staff_id  group by 
so.order_id, CONCAT(sc.first_name,' ',sc.last_name),
sc.city,sc.state,
so.order_date,
pp.product_name,
pc.category_name,
ss.store_name,
CONCAT(st.first_name, ' ' ,sc.last_name)

 
 CREATE TABLE BikeResult as ( )

select * from BikeResult
 
 select * from T1
 
Select so.order_id, CONCAT(sc.first_name,' ',sc.last_name) as 'Customer Name',
sc.city,sc.state,
so.order_date,
sum(quantity) as 'Total Units',
sum(quantity * soi.list_price) as 'revenue',
pp.product_name,
pc.category_name,
ss.store_name,
CONCAT(st.first_name, ' ' ,sc.last_name) as 'Rep Name' into T1  from  sales.orders so join sales.customers sc on so.customer_id = sc.customer_id join
sales.order_items soi on so.order_id=soi.order_id join production.products pp on soi.product_id=pp.product_id join production.categories pc on pp.category_id =
pc.category_id join sales.stores ss on so.store_id = ss.store_id join sales.staffs st on so.staff_id=st.staff_id  group by 
so.order_id, CONCAT(sc.first_name,' ',sc.last_name),
sc.city,sc.state,
so.order_date,
pp.product_name,
pc.category_name,
ss.store_name,
CONCAT(st.first_name, ' ' ,sc.last_name)