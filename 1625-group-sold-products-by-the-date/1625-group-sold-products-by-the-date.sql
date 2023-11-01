# Write your MySQL query statement below
select sell_date,count(DISTINct product) as num_sold,
group_concat(distinct product order by product asc separator ',' ) as products 
from Activities group by sell_date order by sell_date asc;

#  GROUP_CONCAT, in which you can also specify the sorting mechanism for the group concatenation (aggregation)
