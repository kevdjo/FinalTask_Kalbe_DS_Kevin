select 
	case "Marital Status"
		when '' then  'NULL'
		else "Marital Status"
	end "Marital Status",
	round(avg(age), 2) as Average_Age
from "Customer" c 
group by "Marital Status"
order by Average_Age desc;

select 
	case "gender"
		when NULL then 'NULL'
		when 0 then 'Female'
		when 1 then 'Male'
	end "gender",
	round(avg(age), 2) as Average_Age
from "Customer" c 
group by "gender"
order by Average_Age desc;

select storename, sum(t.qty) as Quantity from store s
left join "Transaction" t on t.storeid = s.storeid
group by s.storename
order by Quantity desc
limit 1;

select p."Product Name" , sum(t.totalamount) as Total_Amount from product p 
left join "Transaction" t on t.productid  = p.productid
group by p."Product Name" 
order by Total_Amount desc
limit 1;