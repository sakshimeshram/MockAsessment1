create function updateautomatic()
returns trigger as $$
begin
 update products
 set stockquantity=new.quantity
 where productid=new.productid;
 end;
 $$ language plpgsql;


create trigger updatetrig
after insert on sales
for each row
execute function updateautomatic();
