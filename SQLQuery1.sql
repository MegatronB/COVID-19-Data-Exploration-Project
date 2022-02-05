SELECT *
FROM [Data Exploration project]..FossilFuelConsuption 
order by 2,3

--SELECT *
--FROM [Data Exploration project]..['fossil-fuels-per-capita$'] 
--order by 2,3

SELECT Entity, Year, [Coal Consumption - TWh] 
FROM [Data Exploration project]..FossilFuelConsuption 
WHERE Entity ='Africa' and Year between 2000 and 2014
order by [Coal Consumption - TWh] asc

SELECT Entity, Year, [Coal Consumption - TWh]
FROM [Data Exploration project]..FossilFuelConsuption 
WHERE (Entity ='Africa' OR Entity='China') and Year between 2000 and 2014
order by [Coal Consumption - TWh] asc

--ROUNDING VALUES OF A DATASET TO THE NEAREST NUMBER

--SELECT Entity, Year, [Coal Consumption - TWh] 
--FROM [Data Exploration project]..FossilFuelConsuption 
--WHERE (Entity ='Africa' OR Entity='China') and Year between 2000 and 2014
--order by [Coal Consumption - TWh] asc 
SELECT ROUND(1234.6234, 3);