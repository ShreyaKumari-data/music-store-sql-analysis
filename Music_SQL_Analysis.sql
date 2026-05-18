-- Question 1: Which genre generates the most sales revenue?
select g.GenreID, g.Name, sum(il.UnitPrice*Quantity) as revenue 
from genre g join track t on g.GenreId=t.GenreId 
join invoiceline il  on il.TrackId=t.TrackId 
join invoice i on il.InvoiceId=i.InvoiceId 
group by GenreId 
order by revenue desc 
limit 10;

-- Question 2: Which track appears in the most playlists?
select t.TrackID, t.Name,count( pt.PlaylistID) as Count 
from track t join playlisttrack pt on t.TrackID=pt.TrackID 
group by TrackID 
order by Count desc 
limit 20;

-- Finding the Genre to which the most appeared tracks belong
SELECT t.Name, g.Name as Genre 
FROM track t
JOIN genre g ON t.GenreId = g.GenreId
WHERE t.TrackID IN (3424, 3430, 3434, 3410, 3423);

-- Question 3: Which sales agent handled most transactions?
select e.EmployeeID, e.FirstName, e.LastName, count(InvoiceID) as Count, sum(total) as Revenue, sum(total)/count(InvoiceID) as Revenue_per_sale
from employee e join customer c on e.EmployeeId=c.SupportRepId
join invoice i on c.CustomerID=i.CustomerID
where e.Title = 'Sales Support Agent'
group by EmployeeID
order by count desc;

