pageextension 60103 PostedSalesExt extends "Posted Sales Invoices"
{
    layout
    {
        addafter("Remaining Amount")
        {
            field("Fecha del primer pago"; Rec."Fecha del primer pago")
            {
                ApplicationArea = all;
            }
            field("Fecha del segundo pago"; Rec."Fecha del segundo pago")
            {
                ApplicationArea = all;
            }
            field("Fecha del tercer pago"; Rec."Fecha del tercer pago")
            {
                ApplicationArea = all;
            }

        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}