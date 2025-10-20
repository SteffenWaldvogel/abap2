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
      AgencyId,
      CustomerId,
      BeginDate,
      EndDate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      BookingFee,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      TotalPrice,
      CurrencyCode,
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.7
      Description,
      Status,
      CreatedBy,
      CreatedAt,
      LastChangedBy,
      LastChangedAt,

      /* Associations */
      _Bookings : redirected to composition child ZSW_C_Bookings
}
