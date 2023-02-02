select
    Products.ProductNumber,
    Products.ProductName,
    InvoiceDetails.LineTotal,
    InvoiceDetails.OrderQty,
    InvoiceDetails.UnitPrice
from
    Products inner join InvoiceDetails on Products.ProductNumber = InvoiceDetails.ProductNumber
where
    InvoiceDetails.InvoiceID = 3;