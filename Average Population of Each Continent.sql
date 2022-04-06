SELECT COUNTRY.CONTINENT, FLOOR((SUM(CITY.POPULATION)/COUNT(CITY.NAME)))
FROM COUNTRY
INNER JOIN CITY
ON COUNTRY.CODE = CITY.COUNTRYCODE
GROUP BY COUNTRY.CONTINENT
