using {training.salesorder as salesorder} from '../schema/salesOrder';
namespace training.views;

define view SalesByClientView as 

select from salesorder.TblSalesOrderItem {
    sum(product.quantity * product.salesPrice) as ![totalSales]
};

