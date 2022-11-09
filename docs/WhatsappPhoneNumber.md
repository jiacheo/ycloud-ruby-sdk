# OpenapiClient::WhatsappPhoneNumber

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **phone_number** | **String** | Phone number in [E.164](https://en.wikipedia.org/wiki/E.164) format. | [optional] |
| **display_phone_number** | **String** | Display phone number. | [optional] |
| **waba_id** | **String** | WhatsApp Business Account ID. | [optional] |
| **quality_rating** | [**WhatsappPhoneNumberQualityRating**](WhatsappPhoneNumberQualityRating.md) |  | [optional] |
| **messaging_limit** | **String** | Messaging limits determine the maximum number of business-initiated conversations each phone number can start in a rolling 24-hour period. See also [Messaging Limits](https://developers.facebook.com/docs/whatsapp/messaging-limits#messaging-limits). - &#x60;TIER_50&#x60;: 50 business-initiated conversations in a rolling 24-hour period. - &#x60;TIER_250&#x60;: 250 business-initiated conversations in a rolling 24-hour period. - &#x60;TIER_1K&#x60;: 1K business-initiated conversations with unique customers in a rolling 24-hour period. - &#x60;TIER_10K&#x60;: 10K business-initiated conversations with unique customers in a rolling 24-hour period. - &#x60;TIER_100K&#x60;: 100K business-initiated conversations with unique customers in a rolling 24-hour period. - &#x60;TIER_UNLIMITED&#x60;: An unlimited number of business-initiated conversations in a rolling 24-hour period. | [optional] |
| **verified_name** | **String** | Verified name. | [optional] |
| **code_verification_status** | [**WhatsappPhoneNumberCodeVerificationStatus**](WhatsappPhoneNumberCodeVerificationStatus.md) |  | [optional] |
| **status** | [**WhatsappPhoneNumberStatus**](WhatsappPhoneNumberStatus.md) |  | [optional] |
| **name_status** | [**WhatsappPhoneNumberNameStatus**](WhatsappPhoneNumberNameStatus.md) |  | [optional] |
| **new_name_status** | [**WhatsappPhoneNumberNameStatus**](WhatsappPhoneNumberNameStatus.md) |  | [optional] |
| **decision** | **String** | Decision. See [Phone Number Name Update](https://developers.facebook.com/docs/graph-api/webhooks/reference/whatsapp-business-account/#phone_number_name_update). | [optional] |
| **requested_verified_name** | **String** | Last requested verified name. See [Phone Number Name Update](https://developers.facebook.com/docs/graph-api/webhooks/reference/whatsapp-business-account/#phone_number_name_update). | [optional] |
| **rejection_reason** | **String** | Rejection reason. See [Phone Number Name Update](https://developers.facebook.com/docs/graph-api/webhooks/reference/whatsapp-business-account/#phone_number_name_update). | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::WhatsappPhoneNumber.new(
  phone_number: +16315551111,
  display_phone_number: +1 631-555-1111,
  waba_id: whatsapp-business-account-id,
  quality_rating: null,
  messaging_limit: TIER_1K,
  verified_name: John’s Cake Shop,
  code_verification_status: null,
  status: null,
  name_status: null,
  new_name_status: null,
  decision: null,
  requested_verified_name: null,
  rejection_reason: null
)
```

