# Write your MySQL query statement below
with temp as (
    select num,lead(num,1) over()  as num1,
    lead(num,2) over() as  num2 from Logs
)

select distinct num as ConsecutiveNums from temp where(num=num1) and (num=num2);