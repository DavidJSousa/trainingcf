using {training.salesorder as salesorder} from '../schema/salesOrder';
namespace training.views;

define view SalesByClientView as 

select from salesorder.TblSalesOrderItem {
    salesOrder.client.ID as ![clientId],
    salesOrder.client.name as ![clientName],
    sum(product.quantity * product.salesPrice) as ![totalSales]
} group by salesOrder.client.ID, salesOrder.client.name;

