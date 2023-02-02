/*
‼️ Add a query to your activity-m3-2.sql that selects the columns InvoiceDetails.InvoiceID, Products.ProductName and InvoiceDetails.UnitPrice and sorts it in ASCending order by UnitPrice where the InvoiceID = 3.
*/

select 
    InvoiceDetails.InvoiceID,
    Products.ProductName,
    InvoiceDetails.UnitPrice 
from 
    InvoiceDetails inner join Products on InvoiceDetails.ProductNumber = Products.ProductNumber
where InvoiceDetails.InvoiceID = 3 order by InvoiceDetails.UnitPrice asc;