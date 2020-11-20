using {training.salesorder as salesorder} from '../schema/salesOrder';
using {training.user as user} from '../schema/user';
namespace training.views;

define view SalesOrderItemByUserView as 

select from salesorder.TblSalesOrderItem {
    ID,
    salesOrder.ID as ![salesorderId],
    salesOrder.status as ![salesOrderStatus],
    salesOrder.user.ID as ![userID],
    salesOrder.user.name as ![userName]
};

