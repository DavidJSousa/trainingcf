using {training.salesorder as salesorder} from '../schema/salesOrder';
using {training.user as user} from '../schema/user';
namespace training.views;

define view SalesOrderItemByUserView as 

select from salesorder.TblSalesOrderItem {
    ID,
    salesorder.ID as ![salesorderId],
    salesorder.status as ![salesOrderStatus],
    salesorder.user.ID as ![userID],
    salesorder.user.name as ![userName]
};

