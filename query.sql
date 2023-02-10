
--Selecting specific what manufacturers make 
SELECT DISTINCT make, model, FROM registration;

-- q to get out of ":" to start writing queries 

--What is the model oldest year represented in the database?
SELECT make,model,myear FROM registration ORDER BY myear ASC limit 10;

  make    |   model    | myear 
-----------+------------+-------
 HONDA     | CIVIC      |  1981
 GMC       | C/K PICKUP |  1981
 GMC       | C/K PICKUP |  1981
 TOYOTA    | PICK-UP    |  1981
 CHEVROLET | LUV        |  1981
 DATSUN    | 280ZX      |  1981
 TOYOTA    | COROLLA    |  1981
 CHEVROLET | C/K PICKUP |  1981
 FORD      | F-350      |  1981
 JEEP      | CJ-5       |  1981


--What is the model newest year represented in the database?
SELECT make,model,myear FROM registration ORDER BY myear DESC limit 10;
  make   |  model  | myear 
---------+---------+-------
 BMW     | 330I    |  2023
 TESLA   | MODEL 3 |  2023
 TESLA   | MODEL Y |  2023
 TESLA   | MODEL Y |  2023
 NISSAN  | LEAF    |  2023
 HYUNDAI | ELANTRA |  2023
 TESLA   | MODEL Y |  2023
 TESLA   | MODEL Y |  2023
 TESLA   | MODEL Y |  2023
 TESLA   | MODEL 3 |  2023

--All  Ferraris red?
Select DISTINCT make, color FROM registration where make = 'FERRARI';

  make   |       color       
---------+-------------------
 FERRARI | ALUMINUM / SILVER
 FERRARI | BLACK
 FERRARI | IVORY
 FERRARI | RED
 FERRARI | 

--Count of Tesla model?

SELECT model, count(model) FROM registration WHERE make = 'TESLA' GROUP BY model;
  model   | count 
----------+-------
 ROADSTER |     2
 MODEL 3  |   474
 MODEL Y  |   120
 MODEL S  |   225
 MODEL X  |    86

 How many vehicles per make?
 SELECT make, count(make) FROM registration GROUP BY make;
                make               | count 
----------------------------------+-------
 ZERO MOTORCYCLES                 |     2
 KYMCO                            |     1
 ALFA ROMEO                       |     6
 GENUINE SCOOTERS                 |     1
 DAIHATSU                         |     1
 MIFU                             |     1
 MOTO GUZZI                       |     1
 KTM                              |    31
 DODGE                            |  2314
 VICTORY                          |     2
 FORD                             |  7519
 CHRYSLER                         |   456
 MITS                             |     1
 GEO                              |    23
 NISSAN                           |  2407
 NDMC                             |     1
 MINI                             |   210
 INDIAN MOTORCYCLE                |     3
 CADILLAC                         |   293
 MERZ                             |     1
 SUBARU                           |  3158
 POLESTAR                         |     7
 PLYMOUTH                         |    13
 LEXUS                            |   994
 RAM                              |  1042