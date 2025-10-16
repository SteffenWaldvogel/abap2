@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Booking view'
define view entity ZSW_R_Booking
  as select from zsw_booking

  association to parent ZSW_R_Travel as _travel on $projection.TravelUuid = _travel.TravelUuid
{
  key booking_uuid  as BookingUuid,
      travel_uuid   as TravelUuid,
      booking_id    as BookingId,
      booking_date  as BookingDate,
      carrier_id    as CarrierId,
      connection_id as ConnectionId,
      flight_date   as FlightDate,
      @Semantics.amount.currencyCode : 'CurrencyCode'
      flight_price  as FlightPrice,
      currency_code as CurrencyCode,

      /* Associations */
      _travel
}
