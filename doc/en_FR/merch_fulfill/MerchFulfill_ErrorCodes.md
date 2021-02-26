<div id="MWSDX_noscript">

JavaScript is currently disabled in your browser.  
To use the Amazon MWS documentation, you must enable JavaScript in your
browser.

</div>

<div id="MWSDX_divtop">

[![Amazon
Services](https://images-na.ssl-images-amazon.com/images/G/08/mwsportal/fr_FR/amazonservices.gif "Amazon Services")](http://services.amazon.fr)  
<span id="MWSDX_titlebar">[Amazon Marketplace Web Service (Amazon MWS)
Documentation](https://developer.amazonservices.fr/gp/mws/docs.html)</span>

</div>

<div id="MWSDX_divbottom">

<div id="MWSDX_divleft">

<div id="MWSDX_toc">

</div>

</div>

<div id="MWSDX_divright">

<div id="MWSDX_content">

<span id="MWSDX_breadcrumbs">[Amazon MWS
Documentation](https://developer.amazonservices.fr/gp/mws/docs.html)</span>

<div id="MerchFulfill_ErrorCodes" class="nested0">

Error codes
===========

<div class="body">

The following table describes the various error codes that the <span
class="ph">Merchant Fulfillment service</span> can return. For
descriptions of error codes that are common to all <span
class="ph">Amazon Marketplace Web Service (Amazon MWS)</span> services,
see
<a href="../dev_guide/DG_Errors.md" class="xref">Error Messages</a> in
the <span class="ph">Amazon MWS Developer Guide</span>.

<div class="tablenoborder">

| Error code                                                                 | HTTP status code | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
|----------------------------------------------------------------------------|------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| <span class="keyword parmname">InsufficientFunds</span>                    | 400              | The requested shipping label purchase was rejected because of insufficient funds in the seller's account.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| <span class="keyword parmname">InvalidRequest</span>                       | 400              | Request has missing or invalid parameters and cannot be parsed.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| <span class="keyword parmname">InvalidShipFromAddress</span>               | 400              | The specified <span class="keyword parmname">ShipFromAddress</span> value is invalid. Specify a valid address.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| <span class="keyword parmname">InvalidShippingServiceOfferId</span>        | 400              | The specified <span class="keyword parmname">ShippingServiceOfferId</span> value is invalid. Specify a <span class="keyword parmname">ShippingServiceOfferId</span> value returned by a previous call to the <span class="keyword apiname">GetEligibleShippingServices</span> operation.                                                                                                                                                                                                                                                                                                                                                                                             |
| <span class="keyword parmname">LabelCancelWindowExpired</span>             | 400              | The cancellation window for requesting a label refund has expired. <span class="ph">Cancellation policies vary by carrier. For more information about carrier cancellation policies, see the Seller Central Help.</span>                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| <span class="keyword parmname">LabelFormatNotSupported</span>              | 400              | The requested `LabelFormat` does not match the available formats.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| <span class="keyword parmname">ShipmentAlreadyExists</span>                | 400              | One or more items specified in a call to the <span class="keyword apiname">CreateShipment</span> operation have already shipped. Specify only unshipped items. A <span class="keyword parmname">ShipmentId</span> is returned in the <span class="keyword parmname">Message</span> element of the error message for each specified item that has already shipped.                                                                                                                                                                                                                                                                                                                    |
| <span class="keyword parmname">ShipmentRequestDetailsTooRestrictive</span> | 400              | The specified <span class="keyword parmname">ShipmentRequestDetails</span> and <span class="keyword parmname">ShippingServiceId</span> values are so restrictive that no shipping service offer is available that can fulfill the request. Try calling the <span class="keyword apiname">CreateShipment</span> operation again with less restrictive values. Or first call the <span class="keyword apiname">GetEligibleShippingServices</span> operation to see if there are any shipping service offers available that match the <span class="keyword parmname">ShipmentRequestDetails</span> and <span class="keyword parmname">ShippingServiceId</span> values that you specify. |
| <span class="keyword parmname">ShippingServiceOfferNotAvailable</span>     | 400              | The specified <span class="keyword parmname">ShippingServiceOfferId</span> value is no longer valid. This could be because the shipping rate changed since you got the <span class="keyword parmname">ShippingServiceOfferId</span> value with a previous call to the <span class="keyword apiname">GetEligibleShippingServices</span> operation. Call the <span class="keyword apiname">GetEligibleShippingServices</span> operation again to get a new <span class="keyword parmname">ShippingServiceOfferId</span> value.                                                                                                                                                         |
| <span class="keyword parmname">TermsAndConditionsNotAccepted</span>        | 403              | The seller has not yet agreed to Amazon's or the carrier's terms and conditions. The seller can accept terms and conditions in Seller Central.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| <span class="keyword parmname">InvalidState</span>                         | 404              | The request cannot be applied to the shipment in its current state (for example, a shipment in the `RefundApplied` state cannot be canceled).                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| <span class="keyword parmname">ItemsNotInOrder</span>                      | 404              | Items specified in a call to the <span class="keyword apiname">CreateShipment</span> operation are not part of the order specified in the same call.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| <span class="keyword parmname">RegionNotSupported</span>                   | 404              | The order specified is from a marketplace where the <span class="ph">Merchant Fulfillment service</span> is not supported.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| <span class="keyword parmname">ResourceNotFound</span>                     | 404              | The resource specified (such as <span class="keyword parmname">ShipmentId</span> or <span class="keyword parmname">AmazonOrderId</span>) does not exist.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| <span class="keyword parmname">ShippingServiceNotAvailable</span>          | 404              | The shipping service specified does not exist or is not available for the specified parameters (for example, <span class="keyword parmname">Weight</span>).                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |

</div>

</div>

</div>

<div id="MWSDX_footer">

Copyright © 2009-2020 Amazon.com, Inc. or its affiliates. Amazon and
Amazon.com are registered trademarks of Amazon.com, Inc. or its
affiliates. All other trademarks are the property of their respective
owners.

</div>

</div>

</div>

<div style="clear: both;">

</div>

</div>
