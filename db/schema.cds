namespace salesorder;

using { managed } from '@sap/cds/common';

entity sales_hdr : managed
{
    key Ord_Num : String(10);
    CUSTOMER : String(10);
    AMOUNT : String(10);
    sales_item : Association to  sales_item;
}

entity sales_item : managed
{
    key Ord_Num : String(10);
    Item_no : String(6);
    Material : String(10);
    qty : String(10);
    sales_hdr : Association to many sales_hdr on sales_hdr.sales_item = $self;
}