CLASS zsw_cl_travelgenerator DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zsw_cl_travelgenerator IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    DATA ls_travel TYPE zsw_travel_a.
    DATA lt_travel TYPE TABLE OF zsw_travel_a.

    DATA ls_booking TYPE zsw_booking.
    DATA lt_booking TYPE TABLE OF zsw_booking.

    " Delete  Travels
    DELETE FROM zsw_travel_a.
    out->write( |Deleted Travels: { sy-dbcnt }| ).

    DELETE FROM zsw_booking.
    out->write( |Deleted Bookings: { sy-dbcnt }| ).


    " Create Travels
    ls_travel-agency_id = '000001'.
    ls_travel-begin_date = '20231007'.
    ls_travel-booking_fee = '40.95'.
    ls_travel-client = sy-mandt.
    ls_travel-created_by = 'GENERATOR'.
    ls_travel-customer_id = '000004'.
    ls_travel-description = 'Kurztripp Hamburg'.
    ls_travel-end_date = '20231003'.
    ls_travel-last_changed_by = 'GENERATOR'.
    ls_travel-status = 'B'.
    ls_travel-total_price = '650.50'.
    ls_travel-travel_id = '0000001'.
    ls_travel-travel_uuid = cl_system_uuid=>create_uuid_x16_static(  ).
    GET TIME STAMP FIELD ls_travel-created_at.
    GET TIME STAMP FIELD ls_travel-last_changed_at.
    ls_travel-currency_code = 'EUR'.
    APPEND ls_travel TO lt_travel.

    " Create Booking
    ls_booking-booking_date  = '20230807'.
    ls_booking-booking_id    = '3861'.
    ls_booking-booking_uuid  = cl_system_uuid=>create_uuid_x16_static( ).
    ls_booking-carrier_id    = 'LH'.
    ls_booking-client        = sy-mandt.
    ls_booking-connection_id = '0300'.
    ls_booking-currency_code = 'EUR'.
    ls_booking-flight_date   = ls_travel-begin_date.
    ls_booking-flight_price  = '304.00'.
    ls_booking-travel_uuid   = ls_travel-travel_uuid.
    APPEND ls_booking TO lt_booking.

    " Create Booking
    ls_booking-booking_date  = '20230807'.
    ls_booking-booking_id    = '2947'.
    ls_booking-booking_uuid  = cl_system_uuid=>create_uuid_x16_static( ).
    ls_booking-carrier_id    = 'LH'.
    ls_booking-client        = sy-mandt.
    ls_booking-connection_id = '0350'.
    ls_booking-currency_code = 'EUR'.
    ls_booking-flight_date   = ls_travel-end_date.
    ls_booking-flight_price  = '305.55'.
    ls_booking-travel_uuid   = ls_travel-travel_uuid.
    APPEND ls_booking TO lt_booking.

    " Create Booking
    ls_booking-booking_date  = '20221204'.
    ls_booking-booking_id    = '0021'.
    ls_booking-booking_uuid  = cl_system_uuid=>create_uuid_x16_static( ).
    ls_booking-carrier_id    = 'LH'.
    ls_booking-client        = sy-mandt.
    ls_booking-connection_id = '0400'.
    ls_booking-currency_code = 'USD'.
    ls_booking-flight_date   = ls_travel-begin_date.
    ls_booking-flight_price  = '150.46'.
    ls_booking-travel_uuid   = ls_travel-travel_uuid.
    APPEND ls_booking TO lt_booking.

    " Create Booking
    ls_booking-booking_date  = '20221204'.
    ls_booking-booking_id    = '0095'.
    ls_booking-booking_uuid  = cl_system_uuid=>create_uuid_x16_static( ).
    ls_booking-carrier_id    = 'LH'.
    ls_booking-client        = sy-mandt.
    ls_booking-connection_id = '0401'.
    ls_booking-currency_code = 'USD'.
    ls_booking-flight_date   = ls_travel-end_date.
    ls_booking-flight_price  = '160.55'.
    ls_booking-travel_uuid   = ls_travel-travel_uuid.
    APPEND ls_booking TO lt_booking.

    ls_travel-agency_id = '000023'.
    ls_travel-begin_date = '20241007'.
    ls_travel-booking_fee = '150.00'.
    ls_travel-client = sy-mandt.
    ls_travel-created_by = 'GENERATOR'.
    ls_travel-currency_code = 'EUR'.
    ls_travel-customer_id = '000005'.
    ls_travel-description = 'Kurztripp Malle'.
    ls_travel-end_date = '20241003'.
    ls_travel-last_changed_by = 'GENERATOR'.
    ls_travel-status = 'P'.
    ls_travel-total_price = '750.50'.
    ls_travel-travel_id = '0000002'.
    ls_travel-travel_uuid = cl_system_uuid=>create_uuid_x16_static(  ).
    GET TIME STAMP FIELD ls_travel-created_at.
    GET TIME STAMP FIELD ls_travel-last_changed_at.

    APPEND ls_travel TO lt_travel.


    ls_travel-agency_id = '000053'.
    ls_travel-begin_date = '20251007'.
    ls_travel-booking_fee = '150.00'.
    ls_travel-client = sy-mandt.
    ls_travel-created_by = 'GENERATOR'.
    ls_travel-currency_code = 'USD'.
    ls_travel-customer_id = '000048'.
    ls_travel-description = 'Kurztripp Italien'.
    ls_travel-end_date = '20251003'.
    ls_travel-last_changed_by = 'GENERATOR'.
    ls_travel-status = 'B'.
    ls_travel-total_price = '1250.50'.
    ls_travel-travel_id = '0000003'.
    ls_travel-travel_uuid = cl_system_uuid=>create_uuid_x16_static(  ).
    GET TIME STAMP FIELD ls_travel-created_at.
    GET TIME STAMP FIELD ls_travel-last_changed_at.

    APPEND ls_travel TO lt_travel.


    ls_travel-agency_id = '000023'.
    ls_travel-begin_date = '20221007'.
    ls_travel-booking_fee = '550.00'.
    ls_travel-client = sy-mandt.
    ls_travel-created_by = 'GENERATOR'.
    ls_travel-currency_code = 'SGD'.
    ls_travel-customer_id = '000063'.
    ls_travel-description = 'Kurztripp New York'.
    ls_travel-end_date = '20221003'.
    ls_travel-last_changed_by = 'GENERATOR'.
    ls_travel-status = 'N'.
    ls_travel-total_price = '2750.50'.
    ls_travel-travel_id = '0000004'.
    ls_travel-travel_uuid = cl_system_uuid=>create_uuid_x16_static(  ).
    GET TIME STAMP FIELD ls_travel-created_at.
    GET TIME STAMP FIELD ls_travel-last_changed_at.

    APPEND ls_travel TO lt_travel.

    INSERT zsw_travel_a FROM TABLE @lt_travel.
    out->write( |Inserted Travels: { sy-dbcnt }| ).

    INSERT zsw_booking FROM TABLE @lt_booking.
    out->write( |Inserted Bookings: { sy-dbcnt }| ).

  ENDMETHOD.

ENDCLASS.
