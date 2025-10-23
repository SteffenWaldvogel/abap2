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
      @Consumption.valueHelpDefinition: [{ entity: { name: '/DMO/I_Carrier_StdVH', element: 'AirlineID' } }]
      CarrierId,
      ConnectionId,
      FlightDate,
      FlightPrice,
      @Consumption.valueHelpDefinition: [{ entity: { name: 'I_CurrencyStdVH', element: 'Currency' } }]
      CurrencyCode,
      /* Associations */
      _travel : redirected to parent ZSW_C_Travel
}
