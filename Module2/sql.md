
IF

    SELECT title, amount, price,
    ROUND(IF(amount < 4, price * 0.5, 
            IF(amount < 11, price * 0.7, price * 0.9)), 2) AS sale,
        IF(amount < 4, 'скидка 50%', 
            IF(amount < 11, 'скидка 30%', 'скидка 10%')) AS Ваша_скидка
    FROM book;