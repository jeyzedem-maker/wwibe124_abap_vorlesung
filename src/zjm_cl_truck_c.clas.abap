CLASS zjm_cl_truck_c DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .


  PUBLIC SECTION.

    METHODS display_attributes RETURNING VALUE(attributes) TYPE string.

    METHODS constructor IMPORTING iv_marke           TYPE string
                                  iv_model           TYPE string
                                  iv_production_date TYPE d
                                  iv_horsepower      TYPE i
                                  iv_price           TYPE i.

INTERFACES zjm_if_vihicle.
  PROTECTED SECTION.


  PRIVATE SECTION.

    data mv_marke type string.
    data mv_model type string.
    data mv_production_date type d.
    data mv_horsepower type i.
    DATA mv_price TYPE i.

ENDCLASS.



CLASS zjm_cl_truck_c IMPLEMENTATION.

    METHOD constructor.
        mv_marke = iv_marke.
        mv_model = iv_model.
        mv_production_date = iv_production_date.
        mv_horsepower = iv_horsepower.
        mv_price = iv_price.
    ENDMETHOD.

    METHOD display_attributes.
    attributes = |{ 'Marke:' } { mv_marke } { 'Model:' } { mv_model } { 'Production Date:' } { mv_production_date } { 'Horsepower:' } { mv_horsepower } { 'Price' } { mv_price }|.
  ENDMETHOD.

  METHOD zjm_if_vihicle~play_sound.
    rv_result = 'Truck sounds'.
    ENDMETHOD.
ENDCLASS.
