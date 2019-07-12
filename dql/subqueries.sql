-- Nested quries are queries within queries
-- Subqueries are a superset of nested queries, and represents queries used for
-- queries

-- There are three prime types of subqueries:
-- Nested Query (in the WHERE part)
-- inline-view (in the FROM part)
-- select Subquery (In the SELECT column area)

-- Nested Query allows us to use the result value of another query as a value in the filter
-- of the outer query

select * from CATS where favorite_food = (
	select id from cat_food where lower(name) like 'chicken'
);

-- Inline View - FROM clause
-- There is a database object called VIEW, which just saves a query to be executed easier
-- later
select * from (
	select * from cats where favorite_food = 1
) as subquery where name like '%a%';

-- select clause - allows an inner query in the select
-- how many cats for each cat food had it as their favorite food?




