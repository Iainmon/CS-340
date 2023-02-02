select 
    Invoices.InvoiceID,
    Customers.CustomerName,
    Customers.City,
    Customers.State,
    CURDATE() as Date,
    Invoices.TotalDue
from 
    Customers inner join Invoices on Customers.CustomerID = Invoices.CustomerID
where Invoices.InvoiceID = 3;