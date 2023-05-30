using {
    cuid,
    managed,
    Country,
    Currency
} from '@sap/cds/common';

namespace firecsbfr;

@assert.unique: { info: 
    [companyCode,branch,article]
}

entity Item : cuid {
    companyCode   : String(4);
    branch        : String(4);
    article       : String(18);
    lineText      : String;
    startDate     : Date;
    endDate       : Date;
    amountPerWeek : Decimal(10, 2);
}

entity ChangeLog : cuid, managed {
    table     : String(30);
    action    : String(1);
    keys      : String;
    fromValue : String;
    toValue   : String;
}