@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Booking view Projection'
@Metadata.allowExtensions: true

define view entity ZSW_C_Bookings
  as projection on ZSW_R_Booking

{
  key BookingUuid,
      TravelUuid,
      BookingId,
      BookingDate,
      CarrierId,
      ConnectionId,
      FlightDate,
      FlightPrice,
      CurrencyCode,
      /* Associations */
      _travel : redirected to parent ZSW_C_Travel
}
