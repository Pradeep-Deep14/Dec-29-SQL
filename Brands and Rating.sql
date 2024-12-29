CREATE TABLE fashion_brands (
         brand_id INT PRIMARY KEY, 
         brand_name VARCHAR(100), 
         average_rating DECIMAL(2, 1), 
         available_in_india BOOLEAN
     );
     INSERT INTO fashion_brands VALUES 
         (1, 'H&M', 4.2, TRUE), 
         (2, 'Zara', 3.8, TRUE), 
         (3, 'Nike', 4.5, FALSE);


SELECT * FROM FASHION_BRANDS

/*

Find all fashion brands that have an average customer rating of at least 4.0 and are available in India.

*/


SELECT BRAND_NAME
FROM FASHION_BRANDS
WHERE AVERAGE_RATING >= 4.0
AND AVAILABLE_IN_INDIA = 'true'

