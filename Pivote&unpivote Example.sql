Create Table tblProductSales
(
 SalesAgent nvarchar(50),
 SalesCountry nvarchar(50),
 SalesAmount int 
)
go
Insert into tblProductSales values('Tom', 'UK', 200)
Insert into tblProductSales values('John', 'US', 180)
Insert into tblProductSales values('John', 'UK', 260)
Insert into tblProductSales values('David', 'India', 450)
Insert into tblProductSales values('Tom', 'India', 350)
Insert into tblProductSales values('David', 'US', 200)
Insert into tblProductSales values('Tom', 'US', 130)
Insert into tblProductSales values('John', 'India', 540)
Insert into tblProductSales values('John', 'UK', 120)
Insert into tblProductSales values('David', 'UK', 220)
Insert into tblProductSales values('John', 'UK', 420)
Insert into tblProductSales values('David', 'US', 320)
Insert into tblProductSales values('Tom', 'US', 340)
Insert into tblProductSales values('Tom', 'UK', 660)
Insert into tblProductSales values('John', 'India', 430)
Insert into tblProductSales values('David', 'India', 230)
Insert into tblProductSales values('David', 'India', 280)
Insert into tblProductSales values('Tom', 'UK', 480)
Insert into tblProductSales values('John', 'US', 360)
Insert into tblProductSales values('David', 'UK', 140)




SELECT SalesAgent,UK,US,India into #tempsales
FROM tblProductSales
PIVOT(

sum(SalesAmount)
for salesCountry IN(UK,US,India)
) as PIVOTTable


select SalesAgent,country,totalsales
 from #tempsales
 unpivot(
	totalsales
	for country in(US,UK,India)
 )as unpiottable
