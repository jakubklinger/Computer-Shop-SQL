# Computer-Shop-SQL
Computer Shop SQL Project
---About this project---
This is a SQL based idea for a computer shop. 
My goal was to present some realistic data analytics problems solved with the use of simple and intermediate level functions (including aggregations, multiple JOINs, CTE, window functions, RANK, SUM OVER).

--- Stack ---
PostgreSQL 18.3
DBeaver 26.1.0
Microsoft Excel 

---Tables---
The project consists of three tables names shop_customers, shop_orders and shop_items. With 20 records each, it allows for a quick testing of the ideas. If deemed necessary, additional records can be added. Three tables allow for multiple joins and interesting scenarios like top products for a certain period of time. 

CSV files raw data:

customer_id;name;country
2001;Alice Johnson;USA
2002;Bob Smith;Canada
2003;Charlie Brown;Germany
2004;Diana Prince;Poland
2005;Ethan Clark;France
2006;Fiona Davis;USA
2007;George Miller;Canada
2008;Hannah Wilson;Germany
2009;Ian Moore;Poland
2010;Julia Taylor;France
2011;Kevin Anderson;USA
2012;Laura Thomas;Canada
2013;Michael White;Germany
2014;Nina Harris;Poland
2015;Oscar Martin;France
2016;Paula Thompson;USA
2017;Quentin Garcia;Canada
2018;Rachel Martinez;Germany
2019;Steven Robinson;Poland
2020;Tina Lewis;France

order_id;customer_id;order_date;amount
5001;2001;2025-01-10;1200
5002;2002;2025-01-12;850
5003;2003;2025-01-15;1450
5004;2004;2025-01-18;670
5005;2005;2025-01-20;2100
5006;2006;2025-01-23;980
5007;2007;2025-01-25;760
5008;2008;2025-01-28;1320
5009;2009;2025-02-01;1750
5010;2010;2025-02-03;890
5011;2011;2025-02-05;2400
5012;2012;2025-02-08;640
5013;2013;2025-02-10;1580
5014;2014;2025-02-12;990
5015;2015;2025-02-15;1840
5016;2016;2025-02-18;720
5017;2017;2025-02-20;1650
5018;2018;2025-02-22;1120
5019;2019;2025-02-25;2050
5020;2020;2025-02-28;940

item_id;order_id;product;quantity;price
9001;5001;Gaming Laptop;1;1200
9002;5002;Mechanical Keyboard;2;150
9003;5003;Gaming Monitor;1;450
9004;5004;Wireless Mouse;3;40
9005;5005;Graphics Card RTX 4070;1;2100
9006;5006;SSD 1TB;2;120
9007;5007;Gaming Laptop;1;760
9008;5008;Gaming Monitor;2;660
9009;5009;Graphics Card RTX 4070;1;1750
9010;5010;Mechanical Keyboard;3;120
9011;5011;Gaming Laptop;2;1200
9012;5012;Wireless Mouse;4;35
9013;5013;SSD 1TB;3;140
9014;5014;Gaming Monitor;1;990
9015;5015;Graphics Card RTX 4070;1;1840
9016;5016;Mechanical Keyboard;2;110
9017;5017;Gaming Laptop;1;1650
9018;5018;SSD 1TB;4;280
9019;5019;Gaming Monitor;2;1025
9020;5020;Wireless Mouse;5;38

---Contact me---
For any questions, please contact me at jakub.klinger1996@gmail.com.
