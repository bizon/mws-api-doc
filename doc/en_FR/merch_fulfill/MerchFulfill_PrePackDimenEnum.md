<div id="MWSDX_noscript">

JavaScript is currently disabled in your browser.  
To use the Amazon MWS documentation, you must enable JavaScript in your
browser.

</div>

<div id="MWSDX_divtop">

[![Amazon
Services](https://images-na.ssl-images-amazon.com/images/G/08/mwsportal/fr_FR/amazonservices.gif
"Amazon Services")](http://services.amazon.fr)  
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

<div id="MerchFulfill_PrePackDimenEnum" class="nested0">

# PredefinedPackageDimensions enumeration

An enumeration of predefined parcel tokens.

<div id="ReportTypeCategories" class="topic reference nested1">

## PredefinedPackageDimensions enumeration

<div class="body refbody">

<div class="section">

This table contains token values that can be specified using the
<span class="keyword parmname">PredefinedPackageDimensions</span>
request parameter of the
[GetEligibleShippingServices](MerchFulfill_GetEligibleShippingServices.html "Returns a list of shipping service offers.")
and [CreateShipment](MerchFulfill_CreateShipment.md) operations. If
you specify a
<span class="keyword parmname">PredefinedPackageDimensions</span> token,
you are not obligated to use a branded package from a carrier. For
example, if you specify the FedEx\_Box\_10kg token, you do not have to
use that particular package from FedEx. You are only obligated to use a
box that matches the dimensions specified by the token.

<div class="note note">

<span class="notetitle">Note:</span> Please note that carriers can have
restrictions on the type of package allowed for certain ship methods.
Check the carrier website for all details. Example: Flat rate pricing is
available when materials are sent by USPS in a USPS-produced Flat Rate
Envelope or Box.

</div>

</div>

<div id="ReportTypeCategories__ListingsReports" class="section">

<div class="tablenoborder">

| Token                           | Dimensions                 |
| ------------------------------- | -------------------------- |
| FedEx\_Box\_10kg                | 15.81 x 12.94 x 10.19 in   |
| FedEx\_Box\_25kg                | 54.80 x 42.10 x 33.50 in   |
| FedEx\_Box\_Extra\_Large\_1     | 11.88 x 11.00 x 10.75 in   |
| FedEx\_Box\_Extra\_Large\_2     | 15.75 x 14.13 x 6.00 in    |
| FedEx\_Box\_Large\_1            | 17.50 x 12.38 x 3.00 in    |
| FedEx\_Box\_Large\_2            | 11.25 x 8.75 x 7.75 in     |
| FedEx\_Box\_Medium\_1           | 13.25 x 11.50 x 2.38 in    |
| FedEx\_Box\_Medium\_2           | 11.25 x 8.75 x 4.38 in     |
| FedEx\_Box\_Small\_1            | 12.38 x 10.88 x 1.50 in    |
| FedEx\_Box\_Small\_2            | 8.75 x 2.63 x 11.25 in     |
| FedEx\_Envelope                 | 12.50 x 9.50 x 0.80 in     |
| FedEx\_Padded\_Pak              | 11.75 x 14.75 x 2.00 in    |
| FedEx\_Pak\_1                   | 15.50 x 12.00 x 0.80 in    |
| FedEx\_Pak\_2                   | 12.75 x 10.25 x 0.80 in    |
| FedEx\_Tube                     | 38.00 x 6.00 x 6.00 in     |
| FedEx\_XL\_Pak                  | 17.50 x 20.75 x 2.00 in    |
| UPS\_Box\_10kg                  | 41.00 x 33.50 x 26.50 cm   |
| UPS\_Box\_25kg                  | 48.40 x 43.30 x 35.00 cm   |
| UPS\_Express\_Box               | 46.00 x 31.50 x 9.50 cm    |
| UPS\_Express\_Box\_Large        | 18.00 x 13.00 x 3.00 in    |
| UPS\_Express\_Box\_Medium       | 15.00 x 11.00 x 3.00 in    |
| UPS\_Express\_Box\_Small        | 13.00 x 11.00 x 2.00 in    |
| UPS\_Express\_Envelope          | 12.50 x 9.50 x 2.00 in     |
| UPS\_Express\_Hard\_Pak         | 14.75 x 11.50 x 2.00 in    |
| UPS\_Express\_Legal\_Envelope   | 15.00 x 9.50 x 2.00 in     |
| UPS\_Express\_Pak               | 16.00 x 12.75 x 2.00 in    |
| UPS\_Express\_Tube              | 97.00 x 19.00 x 16.50 cm   |
| UPS\_Laboratory\_Pak            | 17.25 x 12.75 x 2.00 in    |
| UPS\_Pad\_Pak                   | 14.75 x 11.00 x 2.00 in    |
| UPS\_Pallet                     | 120.00 x 80.00 x 200.00 cm |
| USPS\_Card                      | 6.00 x 4.25 x 0.01 in      |
| USPS\_Flat                      | 15.00 x 12.00 x 0.75 in    |
| USPS\_FlatRateCardboardEnvelope | 12.50 x 9.50 x 4.00 in     |
| USPS\_FlatRateEnvelope          | 12.50 x 9.50 x 4.00 in     |
| USPS\_FlatRateGiftCardEnvelope  | 10.00 x 7.00 x 4.00 in     |
| USPS\_FlatRateLegalEnvelope     | 15.00 x 9.50 x 4.00 in     |
| USPS\_FlatRatePaddedEnvelope    | 12.50 x 9.50 x 4.00 in     |
| USPS\_FlatRateWindowEnvelope    | 10.00 x 5.00 x 4.00 in     |
| USPS\_LargeFlatRateBoardGameBox | 24.06 x 11.88 x 3.13 in    |
| USPS\_LargeFlatRateBox          | 12.25 x 12.25 x 6.00 in    |
| USPS\_Letter                    | 11.50 x 6.13 x 0.25 in     |
| USPS\_MediumFlatRateBox1        | 11.25 x 8.75 x 6.00 in     |
| USPS\_MediumFlatRateBox2        | 14.00 x 12.00 x 3.50 in    |
| USPS\_RegionalRateBoxA1         | 10.13 x 7.13 x 5.00 in     |
| USPS\_RegionalRateBoxA2         | 13.06 x 11.06 x 2.50 in    |
| USPS\_RegionalRateBoxB1         | 16.25 x 14.50 x 3.00 in    |
| USPS\_RegionalRateBoxB2         | 12.25 x 10.50 x 5.50 in    |
| USPS\_RegionalRateBoxC          | 15.00 x 12.00 x 12.00 in   |
| USPS\_SmallFlatRateBox          | 8.69 x 5.44 x 1.75 in      |
| USPS\_SmallFlatRateEnvelope     | 10.00 x 6.00 x 4.00 in     |

</div>

</div>

</div>

</div>

<div id="RelatedActions" class="topic nested1">

## Related topics

<div class="body">

[Merchant Fulfillment
API](../merch_fulfill/MerchFulfill_Overview.md)

[GetEligibleShippingServices](MerchFulfill_GetEligibleShippingServices.html "Returns a list of shipping service offers.")

[CreateShipment](MerchFulfill_CreateShipment.md)

[PackageDimensions](MerchFulfill_Datatypes.html#PackageDimensions "The dimensions of a package contained in a shipment.")

</div>

</div>

</div>

<div id="MWSDX_footer">

Copyright © 2009-2019 Amazon.com, Inc. or its affiliates. Amazon and
Amazon.com are registered trademarks of Amazon.com, Inc. or its
affiliates. All other trademarks are the property of their respective
owners.

</div>

</div>

</div>

<div style="clear: both;">

</div>

</div>
