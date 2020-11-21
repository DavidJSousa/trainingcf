using {training.salesorder as salesorder} from '../schema/salesOrder';
namespace training.views;

define view SalesByClientView as 

select from salesorder.TblSalesOrderItem {
    salesOrder.client.ID as ![clientId],
    salesOrder.client.name as ![clientName],
    salesOrder.createdAt as ![dataCriacao],
    sum(product.quantity * product.salesPrice) as ![totalSales]:Decimal
} group by salesOrder.client.ID, salesOrder.client.name, salesOrder.createdAt;

