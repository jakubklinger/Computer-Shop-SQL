 # SQL Computer-Shop-SQL Sales Analysis Project

## Description
A collection of SQL scripts for analyzing sales data. My goal was to present some realistic data analytics problems solved with the use of simple and intermediate level functions (including aggregations, multiple JOINs, CTE, window functions, RANK, SUM OVER).

## Files
- database.sql
- queries.sql

## Tables
- shop_customers
- shop_orders
- shop_items

## Stack
PostgreSQL 18.3
pgAdmin 4
DBeaver 26.1.0
Microsoft Excel 

## Example Queries

**Average Order Amount by Country, rounded to two decimals**

**SELECT** sc.country, **COUNT**(sc.customer_id) **AS** customer_count, 
**TO_CHAR**(**AVG**(si.quantity * si.price), '**FM999999999.00**') **AS** avg_order_amount 
**FROM** shop_customers sc 
**JOIN** shop_orders so **ON** sc.customer_id = so.customer_id 
**JOIN** shop_items si **ON** so.order_id = si.order_id
**GROUP BY** sc.country 
**ORDER BY AVG**(si.quantity * si.price) **DESC**

<img width="607" height="161" alt="Image" src="https://github.com/user-attachments/assets/3092c96a-2d75-49fb-992e-3ce5e61fea3e" />

**Product Sales by Country, sorted by revenue**

**SELECT** sc.country, si.product, 
**SUM**(si.quantity) **AS** total_quantity_sold,
**SUM** (si.quantity *si.price) **AS** total_revenue,
**COUNT** (**DISTINCT** so.order_id) **AS** total_orders
**FROM** shop_customers sc
 **JOIN** shop_orders so
**ON** sc.customer_id = so.customer_id
 **JOIN** shop_items si
**ON** so.order_id =si.order_id
**GROUP BY** sc.country, si.product
**ORDER BY** sc.country  **DESC**;

<img width="930" height="407" alt="Image" src="https://github.com/user-attachments/assets/f143eed8-bdae-4b6f-a94c-01b9d73aff99" />

**Most Popular Item In Each Country**



**---Contact me---**
For any questions, please contact me at jakub.klinger1996@gmail.com.
