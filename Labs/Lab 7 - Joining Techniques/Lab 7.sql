
-------------------Nested Loop Join-------------
create table Customers (Cust_Id int, Cust_Name varchar(20))
insert Customers values (1, 'Wajid Aqeel')
insert Customers values (2, 'Saad Saeed')
insert Customers values (3, 'Muaz Maqbool')
 
 go

create table Sales (Cust_Id int, Item varchar(10))
insert Sales values (2, 'Camera')
insert Sales values (3, 'Computer')
insert Sales values (3, 'Monitor')
insert Sales values (1, 'Printer')

go
--Consider this query:

select *
from Sales S inner join Customers C
on S.Cust_Id = C.Cust_Id
option(loop join)

go
-- make cluster index
create clustered index CI on Sales(Cust_Id)

--------- again take join and give total row count------------

--------------------------------------------
go

create table N1 (a1 int, b1 int, x1 char(200))
create table N2 (a1 int, b2 int, x2 char(200))
 
 go

set nocount on
declare @i int
set @i = 0
while @i < 100
  begin
    insert N1 values (@i * 1, @i * 5, @i)
    insert N2 values (@i * 2, @i * 7, @i)
    set @i = @i + 1
  end

  go
--Let’s start with a simple example:
select *
from N1 join N2 on N1.a1 = N2.a1
option (loop join)
go
-- create cluster index-------
create unique clustered index N1a on N1(a1)


-------------------Merge Join-------------

create table M1 (a1 int, b1 int, x1 char(200))
create table M2 (a1 int, b2 int, x2 char(200))
 
 go

set nocount on
declare @i int
set @i = 0
while @i < 1000
  begin
    insert M1 values (@i * 1, @i * 5, @i)
    insert M2 values (@i * 2, @i * 7, @i)
    set @i = @i + 1
  end

  go
--Let’s start with a simple example:
select *
from M1 join M2 on M1.a1 = M2.a1
option (merge join)

-- create cluster index-------
create unique clustered index M1a on M1(a1)


-------------------- Hash Join----------------

create table H1 (a1 int, b1 int, x1 char(200))
create table H2 (a1 int, b2 int, x2 char(200))
 
set nocount on
declare @i int
set @i = 0
while @i < 1000
  begin
    insert H1 values (@i * 1, @i * 3, @i)
    set @i = @i + 1
  end
 
 go

declare @i int
set @i = 0
while @i < 10000
  begin
    insert H2 values (@i * 2, @i * 4, @i)
    set @i = @i + 1
  end
 
 go

--Here is a simple example:

select *
from H1 join H2 on H1.a1 = H2.a1
option (hash join) 

----------------------------------------------------

create table T1 (a int, b int, x char(200))
create table T2 (a int, b int, x char(200))
 
 go

set nocount on
declare @i int
set @i = 0
while @i < 1000
  begin
    insert T1 values (@i * 2, @i * 5, @i)
    insert T2 values (@i * 3, @i * 7, @i)
    set @i = @i + 1
  end

go

select * from T1 join T2 on T1.a = T2.a

---------------------------------------

select top 10 * from T1 join T2 on T1.a = T2.a

----------------------------------------

select top 100 * from T1 join T2 on T1.a = T2.a

----------------------------------------

select top 10 * from T1 join T2 on T1.a = T2.a
order by T1.a

----------------------------------------

create unique clustered index T1a on T1(a)

----------------------------------------

select * from T1 join T2 on T1.a = T2.a

----------------------------------------

select * from T1 join T2 on T1.a = T2.a
where T1.b < 100

----------------------------------------

select * from T1 join T2 on T1.a = T2.a
where T1.b < 100
order by T1.a



