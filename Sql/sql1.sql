

select 
c.region,
p.category,
sum(s.totalamount) as sales,
extract(month from s.date) monthwise

from sales s
inner join products p
on s.productid=p.productid
inner join customers c
on s.customerid=c.customerid
group by monthwise,c.region,p.category;