#IF

SELECT title, amount, price,
    ROUND(IF(amount < 4, price * 0.5, 
            IF(amount < 11, price * 0.7, price * 0.9)), 2) AS sale,
        IF(amount < 4, 'Rabatt 50%', 
            IF(amount < 11, 'Rabatt 30%', 'Rabatt 10%')) AS Rabatt
FROM book;