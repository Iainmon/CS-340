
select Customers.CustomerName, Invoices.InvoiceID, SUM(InvoiceDetails.LineTotal) as LineSum
from Customers inner join (Invoices inner join InvoiceDetails on Invoices.InvoiceID = InvoiceDetails.InvoiceID) on Customers.CustomerID = Invoices.InvoiceID
group by Invoices.InvoiceID
order by LineSum desc;

/*
select *
from Customers inner join (Invoices inner join InvoiceDetails on Invoices.InvoiceID = InvoiceDetails.InvoiceID) on Customers.CustomerID = Invoices.InvoiceID;
*/