using {training.products as products} from '../schema/products';
namespace training.views;

define view AllAvailableProductsView as 
select from products.TblProducts as pt where pt.validFrom <= now() and pt.validTo >= now();

