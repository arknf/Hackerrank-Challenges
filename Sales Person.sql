SELECT SalesPerson.name
FROM SalesPerson
WHERE SalesPerson.name NOT IN
(
SELECT TEMP1.name
FROM (SELECT SalesPerson.sales_id AS id, SalesPerson.name AS NAME, Company.name AS COMPANY
      FROM SalesPerson
      LEFT JOIN Orders
      ON SalesPerson.sales_id = Orders.sales_id
      LEFT JOIN Company
      ON Orders.com_id = Company.com_id) AS TEMP1
WHERE TEMP1.COMPANY = 'RED'
)
