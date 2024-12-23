select count(returnid)/count(s.saleid) as returnrate,reason from returns r
right join sales s
on r.saleid=s.saleid
where reason is not null
group by reason
order by returnrate;	
