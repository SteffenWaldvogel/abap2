@AbapCatalog.sqlViewName: 'ZSW_I_CUSTEXT'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Textelement for customer'
define view ZSW_I_CustomerText as select from /dmo/customer
{
    key customer_id as CustomerId,
    first_name as FirstName,
    last_name as LastName,
    
    concat_with_space(first_name, last_name, 1) as name
}
