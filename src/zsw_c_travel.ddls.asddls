@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection View Travels'
@Search.searchable: true
@Metadata.allowExtensions: true
define root view entity ZSW_C_Travel
provider contract transactional_query
  as projection on ZSW_R_Travel
{
  key TravelUuid,
      TravelId,
      @Consumption.valueHelpDefinition: [{ entity: { name: '/DMO/I_Agency_StdVH', element: 'AgencyID' } }]
      AgencyId,
      @Consumption.valueHelpDefinition: [{ entity: { name: 'Zsw_I_CustomerVH', element: 'CustomerId' } }]
      CustomerId,
      BeginDate,
      EndDate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      BookingFee,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      TotalPrice,
      @Consumption.valueHelpDefinition: [{ entity: { name: 'I_CurrencyStdVH', element: 'Currency' } }]
      CurrencyCode,
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.7
      Description,
      @Consumption.valueHelpDefinition: [{ entity: { name: 'Zsw_I_StatusVH', element: 'Status' } }]
      Status,
      CreatedBy,
      CreatedAt,
      LastChangedBy,
      LastChangedAt,
      
      /* Transient Data */
      CustomerName,
      BeginDateCriticality,
      StatusCriticality,

      /* Associations */
      _Bookings : redirected to composition child ZSW_C_Bookings
}
