using {Base, STATUS_TYPE} from './commom';
using {training.products.TblProducts} from './products';
using {training.user.TblUser} from './user';
using {training.clients.TblClient} from './clients';

namespace training.salesorder;

entity TblSalesOrder : Base{
    status: STATUS_TYPE;
    user: Association to TblUser;
    client: Association to TblClient;
}

entity TblSalesOrderItem : Base{
    status: STATUS_TYPE;
    salesOrder: Association to TblSalesOrder;
    product: Association to TblProducts;
}