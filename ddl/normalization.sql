-- database Normalization

-- Conceptual topic related to good table design
-- Normalization is categoried into various 'levels'
-- The goal of normalization is to reduce redundancy in the database.
-- Ideally, no data should be redundant.
-- There are a variety of normal forms, we will discuss
-- first, second, and third normal form.

-- Denormalization: The practice of adding redundancy to a database
--   generally to improve performance. 

-- Atomic: What does it mean to be atomic?

-- 1NF - first Normal Form
--	1. every table must have a primary key.
--  2. every column should be atomic.

-- 2NF - second Normal Form
--  1. You must meet the requirements for 1NF.
--  2. All columns are about the primary key.
--		Really though: all non-key columns must be about the whole key.

-- person: id
-- friends: friend_1, friend_2, friends_timestamp, requester_id

-- 3NF - Third Normal Form
--  1. You must meet the requirements for 2NF.
--  2. No transitive/functional dependencies.

-- Functional Dependency
-- order_items: quantity, price, total - Total is functionally dependent
--			on quantity and price. This should not be a data storing 
--			column.

-- Transitive Dependency
-- City: id, name, state_id
-- State: id, name
-- Street Address
-- User address: city_id, street_address, ...
