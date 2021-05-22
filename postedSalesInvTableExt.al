tableextension 60103 postedSalesInvTableExt extends "Sales Invoice Header"
{
    fields
    {

        field(60102; "Fecha del primer pago"; Date)
        {
            FieldClass = FlowField;
            CalcFormula = lookup("Detailed Cust. Ledg. Entry"."Posting Date" where(FolioDR = field("No."), PartialNo = const(1), "Document Type" = const(Payment)));
        }
        field(60103; "Fecha del segundo pago"; Date)
        {
            FieldClass = FlowField;
            CalcFormula = lookup("Detailed Cust. Ledg. Entry"."Posting Date" where(FolioDR = field("No."), PartialNo = const(2), "Document Type" = const(Payment)));
        }
        field(60104; "Fecha del tercer pago"; Date)
        {
            FieldClass = FlowField;
            CalcFormula = lookup("Detailed Cust. Ledg. Entry"."Posting Date" where(FolioDR = field("No."), PartialNo = const(3), "Document Type" = const(Payment)));
        }
    }

    var
        myInt: Integer;
}