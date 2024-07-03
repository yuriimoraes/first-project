namespace cap.l2l.first.project;

using {
    cuid,
    managed
} from '@sap/cds/common';


entity Customers : cuid, managed {
    name   : String(100);
    age    : Integer;
    orders : Composition of many Orders
                 on orders.customer = $self;
}

entity Orders : cuid, managed {
    amount   : Decimal;
    address  : String;
    customer : Association to Customers;
    nf       : Association to NFs
                   on nf.order = $self;
}

entity NFs : cuid, managed {
    id_fiscal : String;
    org       : String;
    order     : Association to Orders;
}
