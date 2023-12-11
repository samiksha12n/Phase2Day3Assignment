create database Day3Assignment
use Day3Assignment
create table Products
(PId int primary key,
PQ int not null,
PPrice float,
DiscountPercent int,
ManufacturingDate Date)

insert into Products values(1,45,98000.90,15,'10/11/2023')
insert into Products values(15,75,68000.90,25,'08/09/2022')
insert into Products values(8,48,78000.90,35,'05/07/2019')
insert into Products values(5,12,165000.90,85,'05/10/2020')
insert into Products values(4,25,88000.90,05,'05/04/2023')

select * from Products

create function fnProducts
( 
@price float,
@discount int,
@mfgdate date )
returns float
As
begin
return (@price-(@discount*(@price/100)))
end
select PId,PQ,PPrice,DiscountPercent, dbo.fnProducts(PPrice,DiscountPercent,ManufacturingDate) as 'Discounted Price' from Products

