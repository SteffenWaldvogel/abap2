@AbapCatalog.sqlViewName: 'ZSW_I_STATVH'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Status Interface View'
define view ZSW_I_StatusVH as select from DDCDS_CUSTOMER_DOMAIN_VALUE_T( p_domain_name: '/DMO/STATUS' )
{

@UI.hidden: true
    key domain_name,
    @UI.hidden: true
    key value_position,
    @UI.hidden: true
    key language,
    @EndUserText: { label: 'Status', quickInfo: 'Status' }
    value_low as Status,
    @EndUserText: { label: 'Status text', quickInfo: 'Status Text' }
    text as StatusText
}

where language = $session.system_language
