using {training.salesorder as salesorder} from '../schema/salesOrder';
using {training.user as user} from '../schema/user';
namespace training.views;

define view SalesOrderItemByClientView as

select from salesorder.TblSalesOrderItem {
    ID,
    salesOrder.client.ID as ![clientID],
    salesOrder.client.name as ![clientName],
    product.ID as ![productID],
    product.name as ![productName]
};