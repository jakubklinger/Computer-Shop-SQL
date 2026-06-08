 # SQL Computer-Shop-SQL Sales Analysis Project

## Description
A collection of SQL scripts for analyzing sales data. My goal was to present some realistic data analytics problems solved with the use of simple and intermediate level functions (including aggregations, multiple JOINs, CTE, window functions, RANK, SUM OVER).

## Files
- schema.sql
- sample_data.sql
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

## Example Query
Average Order Amount by Country

**SELECT** sc.country,
**COUNT**(sc.customer_id) **AS** customer_count,
**AVG**(so.amount) ****AS** **avg_order_amount
**FROM** shop_customers sc
**JOIN** shop_orders so
**ON** so.customer_id = sc.customer_id
**GROUP BY** sc.country **HAVING AVG**(shop_orders.amount) **>**1000
**ORDER BY AVG** avg_order_amount **DESC**

**---Contact me---**
For any questions, please contact me at jakub.klinger1996@gmail.com.
