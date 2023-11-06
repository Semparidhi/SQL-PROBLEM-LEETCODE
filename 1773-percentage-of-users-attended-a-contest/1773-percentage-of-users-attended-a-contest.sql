# Write your MySQL query statement below
select contest_id,round(count(distinct user_id)*100/(select count(*) from Users),2) as percentage
from Register
group by contest_id
order by percentage desc,contest_id; # if there is any tie like some percentage are same the second cretira will be followed i.e order by content_id in ascending order 