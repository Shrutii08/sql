use cars;
-- READ CARS;
select * from car_dekho;
-- TOTAL CARS: TO GET COUNT OF TOTAL RECORS-- 
select count(*) from car_dekho;
-- MANAGER ASK EMPLOYEE HOW MANY CAR WILL BE AVAILABLE IN 2023
SELECT count(*) from car_dekho
where year = '2023';
-- MANAGER ASK EMPLOYEE HOW MANY CAR WILL BE AVAILABLE IN 2020,2021,2022
-- group by
SELECT COUNT(*) From car_dekho
where year in(2020,2021,2022) group by year;
-- --client asked me to print the total of all cars by years. i dont see all the details. 
select year,count(*) from car_dekho group by year;
-- client asked to car dealer afgent how many disel car will be there in 2020?
select count(*) from car_dekho
where year = 2020 and fuel = 'Diesel'
-- client requested  to car dealer agent how many petrol car will be there in 2020?-- 
select count(*) from car_dekho
where year = 2020 and fuel = 'Petrol';
-- THE manager told the employee to give a print all the fuel cars(petrol,diesel and cng)
select year,count(*) from car_dekho where fuel= 'Petrol' group by year;
select year,count(*) from car_dekho where fuel= 'Diesel'  group by year;
select year,count(*) from car_dekho where fuel= 'CNG'  group by year;
-- Manager said there were more than 100 cars in a given yearwhich had more than 100?
select year,count(*) from car_dekho group by year having count(*)>100;
select year,count(*) from car_dekho group by year having count(*)<50;
-- the manager said to the all cars count details between 2015 and 2023;we need a comlete list?
select count(*) from car_dekho where year between 2015 and 2023;
-- the manager said to the employee all cars detail between 2015 to 2023 we need complete list
Select count(*) from car_dekho where year between 2015 and 2023;