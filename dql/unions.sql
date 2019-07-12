-- Unions and their subtypes are ways of combining result sets vertically

-- union - combines two result sets, removing duplicate records
-- union all - Combines two result sets, including duplicate records
-- intersect - Returns all rows that appear in both result sets
-- EXCEPT - Returns all rows from the first result set that are not present in second

-- NOTE: These all require us to have like number of columns and the columns
-- from the differing result sets should be of like types.

select * from inventory;

-- Effectively an OR in the conditional
select * from inventory where quantity > 5
UNION
select * from inventory where item_name > 'b';

select * from inventory where quantity > 5
union ALL
select * from inventory where item_name > 'b';

-- Effectively like an AND in the condition
select * from inventory where quantity > 5
INTERSECT
select * from inventory where item_name > 'b';

-- Effectively like an AND NOT expression in the condition
select * from inventory where quantity > 5
EXCEPT
select * from inventory where item_name > 'b';

-- These can work between different tables
select name from cats union select item_name from inventory;