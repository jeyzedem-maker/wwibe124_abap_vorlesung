CLASS zjm_cl_car_c DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS display_attributes RETURNING VALUE(attributes) TYPE string.

    METHODS constructor IMPORTING iv_marke           TYPE String
                                  iv_model           TYPE String
                                  iv_production_date TYPE d
                                  iv_horsepower      TYPE i
                                  iv_price           TYPE i.
    INTERFACES zjm_if_vihicle.
  PROTECTED SECTION.
  PRIVATE SECTION.

    DATA mv_marke TYPE string.

    DATA mv_model TYPE string.

    DATA mv_production_date TYPE d.

    DATA mv_horsepower TYPE i.

    DATA mv_price TYPE i.

ENDCLASS.



CLASS zjm_cl_car_c IMPLEMENTATION.

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
    rv_result = 'Car Sound'.
  ENDMETHOD.
ENDCLASS.
