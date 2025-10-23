@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Basic View travel'
define root view entity ZSW_R_Travel
  as select from zsw_travel_a
  composition [0..*] of ZSW_R_Booking      as _Bookings
  association [1..1] to ZSW_I_CustomerText as _CustomerText on $projection.CustomerId = _CustomerText.CustomerId
{
  key travel_uuid     as TravelUuid,
      travel_id       as TravelId,
      agency_id       as AgencyId,
      @ObjectModel.text.element: ['CustomerName']
      customer_id     as CustomerId,
      begin_date      as BeginDate,
      end_date        as EndDate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      booking_fee     as BookingFee,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      total_price     as TotalPrice,
      currency_code   as CurrencyCode,
      description     as Description,
      status          as Status,

      /* Administrative Data */
      @Semantics.user.createdBy: true
      created_by         as CreatedBy,
      @Semantics.systemDateTime.createdAt: true
      created_at         as CreatedAt,
      @Semantics.user.lastChangedBy: true
      last_changed_by    as LastChangedBy,
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed_at    as LastChangedAt,
      
      /* Transient Data */
      _CustomerText.name as CustomerName,
      case when dats_days_between($session.user_date, begin_date) >= 14 then 3
           when dats_days_between($session.user_date, begin_date) >= 7 then 2
           when dats_days_between($session.user_date, begin_date) >= 0 then 1
           else 0
      end                as BeginDateCriticality,
      case status when 'B' then 3
                  when 'N' then 0
                  when 'X' then 1
                  else 0
      end                as StatusCriticality,

      /* Associations */
      _Bookings
}
