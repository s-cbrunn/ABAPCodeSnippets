*&---------------------------------------------------------------------*
*& Report ZDEMO_CORRESPONDING_MAPPING
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZDEMO_CORRESPONDING_MAPPING.

TYPES : BEGIN OF lty_demo1,
          col1 TYPE c,
          col2 TYPE c,
        END OF lty_demo1,
        BEGIN OF lty_demo2,
          col1  TYPE c,
          field TYPE c,
        END OF lty_demo2.

DATA: lt_tab1 TYPE STANDARD TABLE OF lty_demo1,
      lt_tab2 TYPE STANDARD TABLE OF lty_demo2.


lt_tab1 = VALUE #( ( col1 = 'A1' col2 = 'B1' )
                   ( col1 = 'A2' col2 = 'B2' )
                   ( col1 = 'A3' col2 = 'B3' ) ).


lt_tab2 = CORRESPONDING #( lt_tab1 MAPPING field = col2 ).


cl_demo_output=>write_data( lt_tab1 ).
cl_demo_output=>write_data( lt_tab2 ).


cl_demo_output=>display( ).
