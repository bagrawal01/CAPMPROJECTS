// using so as salesmaster from '../db/schema';
// service sales_ser
// {
//     entity Sales_ord as
//         select
//         from salesmaster.sales_hdr;


//     entity sales_item as
//         projection salesmaster.sales_item;

// }

using { salesorder as so } from '../db/schema';
 @path: 'service/sales'
 service salesService {
 entity sales_hdr as projection on so.sales_hdr;
     annotate sales_hdr with @odata.draft.enabled;
 entity sales_item as projection on so.sales_item;
     annotate sales_item with @odata.draft.enabled;
 
 }