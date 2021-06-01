<div id="MWSDX_noscript">

JavaScript is currently disabled in your browser.  
To use the Amazon MWS documentation, you must enable JavaScript in your
browser.

</div>

<div id="MWSDX_divtop">

[![Amazon
Services](https://images-na.ssl-images-amazon.com/images/G/08/mwsportal/fr_FR/amazonservices.gif "Amazon Services")](http://services.amazon.fr)

<div id="MWSDX_search">

<span id="MWSDX_searchlbl">Search:</span>

</div>

  
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

This table contains token values that can be specified using the <span
class="keyword parmname">PredefinedPackageDimensions</span> request
parameter of the
<a href="MerchFulfill_GetEligibleShippingServices.md" class="xref" title="Returns a list of shipping service offers.">GetEligibleShippingServices</a>
and
<a href="MerchFulfill_CreateShipment.md" class="xref">CreateShipment</a>
operations. If you specify a <span
class="keyword parmname">PredefinedPackageDimensions</span> token, you
are not obligated to use a branded package from a carrier. For example,
if you specify the `FedEx_Box_10kg` token, you do not have to use that
particular package from FedEx. You are only obligated to use a box that
matches the dimensions specified by the token.

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

| Token                            | Dimensions                 |
|----------------------------------|----------------------------|
| `FedEx_Box_10kg`                 | 15.81 x 12.94 x 10.19 in   |
| `FedEx_Box_25kg`                 | 54.80 x 42.10 x 33.50 in   |
| `FedEx_Box_Extra_Large_1`        | 11.88 x 11.00 x 10.75 in   |
| `FedEx_Box_Extra_Large_2`        | 15.75 x 14.13 x 6.00 in    |
| `FedEx_Box_Large_1`              | 17.50 x 12.38 x 3.00 in    |
| `FedEx_Box_Large_2`              | 11.25 x 8.75 x 7.75 in     |
| `FedEx_Box_Medium_1`             | 13.25 x 11.50 x 2.38 in    |
| `FedEx_Box_Medium_2`             | 11.25 x 8.75 x 4.38 in     |
| `FedEx_Box_Small_1`              | 12.38 x 10.88 x 1.50 in    |
| `FedEx_Box_Small_2`              | 8.75 x 2.63 x 11.25 in     |
| `FedEx_Envelope`                 | 12.50 x 9.50 x 0.80 in     |
| `FedEx_Padded_Pak`               | 11.75 x 14.75 x 2.00 in    |
| `FedEx_Pak_1`                    | 15.50 x 12.00 x 0.80 in    |
| `FedEx_Pak_2`                    | 12.75 x 10.25 x 0.80 in    |
| `FedEx_Tube`                     | 38.00 x 6.00 x 6.00 in     |
| `FedEx_XL_Pak`                   | 17.50 x 20.75 x 2.00 in    |
| `UPS_Box_10kg`                   | 41.00 x 33.50 x 26.50 cm   |
| `UPS_Box_25kg`                   | 48.40 x 43.30 x 35.00 cm   |
| `UPS_Express_Box`                | 46.00 x 31.50 x 9.50 cm    |
| `UPS_Express_Box_Large`          | 18.00 x 13.00 x 3.00 in    |
| `UPS_Express_Box_Medium`         | 15.00 x 11.00 x 3.00 in    |
| `UPS_Express_Box_Small`          | 13.00 x 11.00 x 2.00 in    |
| `UPS_Express_Envelope`           | 12.50 x 9.50 x 2.00 in     |
| `UPS_Express_Hard_Pak`           | 14.75 x 11.50 x 2.00 in    |
| `UPS_Express_Legal_Envelope`     | 15.00 x 9.50 x 2.00 in     |
| `UPS_Express_Pak`                | 16.00 x 12.75 x 2.00 in    |
| `UPS_Express_Tube`               | 97.00 x 19.00 x 16.50 cm   |
| `UPS_Laboratory_Pak`             | 17.25 x 12.75 x 2.00 in    |
| `UPS_Pad_Pak`                    | 14.75 x 11.00 x 2.00 in    |
| `UPS_Pallet`                     | 120.00 x 80.00 x 200.00 cm |
| `USPS_Card`                      | 6.00 x 4.25 x 0.01 in      |
| `USPS_Flat`                      | 15.00 x 12.00 x 0.75 in    |
| `USPS_FlatRateCardboardEnvelope` | 12.50 x 9.50 x 4.00 in     |
| `USPS_FlatRateEnvelope`          | 12.50 x 9.50 x 4.00 in     |
| `USPS_FlatRateGiftCardEnvelope`  | 10.00 x 7.00 x 4.00 in     |
| `USPS_FlatRateLegalEnvelope`     | 15.00 x 9.50 x 4.00 in     |
| `USPS_FlatRatePaddedEnvelope`    | 12.50 x 9.50 x 4.00 in     |
| `USPS_FlatRateWindowEnvelop`e    | 10.00 x 5.00 x 4.00 in     |
| `USPS_LargeFlatRateBoardGameBox` | 24.06 x 11.88 x 3.13 in    |
| `USPS_LargeFlatRateBox`          | 12.25 x 12.25 x 6.00 in    |
| `USPS_Letter`                    | 11.50 x 6.13 x 0.25 in     |
| `USPS_MediumFlatRateBox1`        | 11.25 x 8.75 x 6.00 in     |
| `USPS_MediumFlatRateBox2`        | 14.00 x 12.00 x 3.50 in    |
| `USPS_RegionalRateBoxA1`         | 10.13 x 7.13 x 5.00 in     |
| `USPS_RegionalRateBoxA2`         | 13.06 x 11.06 x 2.50 in    |
| `USPS_RegionalRateBoxB1`         | 16.25 x 14.50 x 3.00 in    |
| `USPS_RegionalRateBoxB2`         | 12.25 x 10.50 x 5.50 in    |
| `USPS_RegionalRateBoxC`          | 15.00 x 12.00 x 12.00 in   |
| `USPS_SmallFlatRateBox`          | 8.69 x 5.44 x 1.75 in      |
| `USPS_SmallFlatRateEnvelope`     | 10.00 x 6.00 x 4.00 in     |

</div>

</div>

</div>

</div>

<div id="RelatedActions" class="topic nested1">

## Related topics

<div class="body">

<a href="../merch_fulfill/MerchFulfill_Overview.md" class="xref">Merchant Fulfillment API</a>

<a href="MerchFulfill_GetEligibleShippingServices.md" class="xref" title="Returns a list of shipping service offers.">GetEligibleShippingServices</a>

<a href="MerchFulfill_CreateShipment.md" class="xref">CreateShipment</a>

<a href="MerchFulfill_Datatypes.md#PackageDimensions" class="xref" title="The dimensions of a package contained in a shipment.">PackageDimensions</a>

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
