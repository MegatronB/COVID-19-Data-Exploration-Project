--QUERING THE TABLE FossilFuelConsuption

SELECT *
FROM [Data Exploration project]..FossilFuelConsuption 
order by 2,3

--ROUNDING OFF DATASET TO THE NEAREST NUMBER

--SELECT Entity, Year, [Coal Consumption - TWh] 
--FROM [Data Exploration project]..FossilFuelConsuption 
--WHERE (Entity ='Africa' OR Entity='China') and Year between 2000 and 2014
--order by [Coal Consumption - TWh] asc 
SELECT ROUND(1234.6234, 3);

--GROUPING BASED ON REGION


SELECT Entity, Year, [Gas Consumption - TWh], [Coal Consumption - TWh], [Oil Consumption - TWh]
FROM [Data Exploration project]..FossilFuelConsuption 
WHERE (Entity ='Russia' OR Entity='China') and Year between 2000 and 2014
UNION
SELECT Entity, Year, [Gas Consumption - TWh], [Coal Consumption - TWh], [Oil Consumption - TWh]
FROM [Data Exploration project]..FossilFuelConsuption 
WHERE (Entity ='European Union' OR Entity='Central America') and Year between 2000 and 2014
order by Year
