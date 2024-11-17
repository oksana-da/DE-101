# Modul 2. SQL

## **2.1. PostgreSQL Installation.**

Benutze pgAdmin4.

## **2.2. Tabellen mit Inhalt erstellen.**

SQL Skripts:

Tabelle [people](https://github.com/oksana-da/DE-101/blob/main/modul2_sql/people.sql).

Tabelle [orders](https://github.com/oksana-da/DE-101/blob/main/modul2_sql/orders.sql).

Tabelle [returns](https://github.com/oksana-da/DE-101/blob/main/modul2_sql/returns.sql).

<img src= "https://github.com/oksana-da/DE-101/blob/main/img/202.png" width="520" height="330">
</p>

## **2.3. Analyse mit SQL Abfragen.**

      SELECT DISTINCT ship_mode FROM orders AS o;

      SELECT count (DISTINCT order_id) AS number_orders
      FROM orders o;

     SELECT ship_mode, count(DISTINCT order_id) AS number_orders FROM orders o
     GROUP BY ship_mode;

      SELECT city, count (DISTINCT order_id) AS number_orders, sum(sales) AS revenue FROM orders o
      GROUP BY city
      ORDER BY revenue DESC;

      SELECT city, count (DISTINCT order_id) AS number_orders, sum(sales) AS revenue FROM orders o
      WHERE category IN ('Furniture', 'Technology')
      GROUP BY city
      ORDER BY revenue DESC;

      SELECT city, count (DISTINCT order_id) AS number_orders, sum(sales) AS revenue FROM orders o
      WHERE category IN ('Furniture', 'Technology')
      GROUP BY city
      HAVING sum(sales) > 10000
      ORDER BY revenue DESC;

      SELECT count(*), count(DISTINCT o.order_id) FROM orders o
      INNER JOIN returns r on o.order_id = r.order_id;

      SELECT count(*), count(DISTINCT o.order_id) FROM orders o
      LEFT JOIN returns r on o.order_id = r.order_id;
      
      SELECT count(*), count(DISTINCT o.order_id) FROM orders o
      WHERE order_id in (SELECT DISTINCT order_id FROM "returns");
      
      SELECT now(); --timestamp
      SELECT DATE_TRUNC('day', now());


<img src= "https://github.com/oksana-da/DE-101/blob/main/img/201.png" width="520" height="330">
</p>