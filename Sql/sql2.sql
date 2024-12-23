

select * from (select distinct (customerid),
sum(totalamount)over(partition by customerid  order by totalamount  ) as Revenue
from sales)s
order by s.revenue desc limit 5;