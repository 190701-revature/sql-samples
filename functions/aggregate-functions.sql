-- aggregate functions
-- aggregate functions to aggregate data
-- aggregate functions will compress the result and return data aggregated based on 
-- the supplied aggregate function

-- How many cats are in our cats table?
select COUNT(*) from CATS; -- result: 5 - meaning there are 5 rows in this table

-- The sum of all id values of cats
select SUM(id) from cats;

select item_name, max(quantity) from inventory;

-- group by : when we don't supply a 'group by' clause in an aggregate function
-- we will always get a single row as a result.

select favorite_food, count(*) from cats group by favorite_food;

select * from INVENTORY;

select sum(quantity) from inventory where id != 4;

select * from cats;

-- WHERE filters prior to aggregation
-- HAVING filters post-aggregation

select favorite_food, count(*) from cats
	where FAVORITE_FOOD != 1
	group by favorite_food 
	having count(*) > 1;
	
/* 1. where filters out all cats which have favorite_food = 1
	2. Remaining records are grouped by favorite food.
	3. rows are then aggregated using the count function.
	4. Resultant rows are then filtered given the having expression.
	5. then remaining rows are returned as the result set.
*/

/*
	Common aggregate functions questions:
	1. What is an aggregate function?
	2. What is the difference between an aggregate and scalar function?
	3. What are some examples of aggregate functions?
	4. What is the function of the group by clause?
	5. Can an aggregate function be executed with no group by? if so, what is the behavior?
	6. What is the difference between having and where?
*/