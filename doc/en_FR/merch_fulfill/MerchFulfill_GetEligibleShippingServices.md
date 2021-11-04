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

<div id="MerchFulFill_GetEligibleShippingServices" class="nested0">

# GetEligibleShippingServices

<div class="body">

<span class="ph">Returns a list of shipping service offers.</span>

</div>

<div id="Description" class="topic concept nested1">

## Description

<div class="body conbody">

The <span class="keyword apiname">GetEligibleShippingServices</span>
operation returns a list of shipping service offers that satisfy the
shipment request details that you specify. Use this operation to find a
shipping service offer that meets your requirements. If the shipping
service offer that you choose requires additional seller inputs (when
<span
class="keyword parmname">RequiresAdditionalSellerInputs</span>=`true`),
you must call the
<a href="MerchFulfill_GetAdditionalSellerInputs.md" class="xref" title="Returns a list of additional seller inputs that are required from the seller to purchase the shipping service that you specify.">GetAdditionalSellerInputs</a>
operation to find out which additional seller inputs are required.
Specify the <span class="keyword parmname">ShippingServiceId</span>
associated with the shipping service that you want. Get the required
additional seller input values from the seller and use them as input to
the
<a href="MerchFulfill_CreateShipment.md" class="xref">CreateShipment</a>
operation. Specify the <span
class="keyword parmname">ShippingServiceId</span> value, the additional
seller inputs (if required), and the optional <span
class="keyword parmname">ShippingServiceOfferId</span> value associated
with this shipping service offer. <span class="ph">For definitions, see
<a href="../merch_fulfill/MerchFulfill_Overview.md#Terminology" class="xref">Terminology</a>.</span>

<div class="section">

### Availability

This operation is only available in the Canada, US, Mexico, Spain, UK,
France, Germany, Italy, and India marketplaces.

</div>

<div class="section">

### Throttling

<span class="ph">This operation has a maximum request quota of 10 and a
restore rate of five requests every second. For definitions of
throttling terminology and for a complete explanation of throttling, see
<a href="../dev_guide/DG_Throttling.md" class="xref">Throttling: Limits to how often you can submit requests</a>
in the <span class="ph">Amazon MWS Developer Guide</span>.</span>

</div>

</div>

</div>

<div id="RequestParameters" class="topic reference nested1">

## Request parameters

<div class="body refbody">

<div class="tablenoborder">

| Name                                                         | Description                                                                                     | Required | Values                                                                                                                                                                                                              |
|--------------------------------------------------------------|-------------------------------------------------------------------------------------------------|----------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| <span class="keyword parmname">ShipmentRequestDetails</span> | Shipment information required for requesting shipping service offers.                           | Yes      | Type: <a href="MerchFulfill_Datatypes.md#ShipmentRequestDetails" class="xref" title="Shipment information required for requesting shipping service offers or for creating a shipment.">ShipmentRequestDetails</a> |
| <span class="keyword parmname">ShippingOfferingFilter</span> | <span class="ph">Specifies particular requirements for eligible shipping service offers.</span> | No       | Type: <a href="MerchFulfill_Datatypes.md#ShippingOfferingFilter" class="xref" title="Specifies particular requirements for eligible shipping service offers.">ShippingOfferingFilter</a>                          |

</div>

</div>

</div>

<div id="ResponseElements" class="topic reference nested1">

## Response elements

<div class="body refbody">

<div class="tablenoborder">

<table id="ResponseElements__ResponseElementsTable" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d183756e278" class="entry" data-valign="top">Name</th>
<th id="d183756e281" class="entry" data-valign="top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" headers="d183756e278 "><span class="keyword parmname">ShippingServiceList</span></td>
<td class="entry" data-valign="top" headers="d183756e281 ">A list of shipping services offers.
<p>Type: List of <a href="MerchFulfill_Datatypes.md#ShippingService" class="xref" title="A shipping service offer made by a carrier.">ShippingService</a></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" headers="d183756e278 "><span class="keyword parmname">RejectedShippingServiceList</span></td>
<td class="entry" data-valign="top" headers="d183756e281 ">A list of ineligible shipping services.
<p>Type: List of <a href="MerchFulfill_Datatypes.md#RejectedShippingService" class="xref" title="A shipping service that is ineligible based on the specified ShipmentRequestDetails information.">RejectedShippingService</a></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" headers="d183756e278 "><span class="keyword parmname">TemporarilyUnavailableCarrierList</span></td>
<td class="entry" data-valign="top" headers="d183756e281 ">A list of carriers who are temporarily unavailable, most likely due to a service outage experienced by the carrier. To use a carrier that is on this list, retry at a later time.
<p>Type: List of <a href="MerchFulfill_Datatypes.md#TemporarilyUnavailableCarrier" class="xref" title="A carrier who is temporarily unavailable, most likely due to a service outage experienced by the carrier.">TemporarilyUnavailableCarrier</a></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" headers="d183756e278 "><span class="keyword parmname">TermsAndConditionsNotAcceptedCarrierList</span></td>
<td class="entry" data-valign="top" headers="d183756e281 ">A list of carriers whose terms and conditions have not been accepted by the seller. The seller must accept Amazon's terms and conditions and the terms and conditions of any carrier from which they want to purchase shipping labels. The seller can do this on Seller Central (<a href="https://sellercentral.amazon.co.uk/gp/shipping-manager/terms-and-conditions.html" class="xref">Europe</a>) (<a href="https://sellercentral.amazon.com/gp/shipping-manager/terms-and-conditions.html" class="xref">US</a>).
<p>Type: List of <a href="MerchFulfill_Datatypes.md#TemporarilyUnavailableCarrier" class="xref" title="A carrier who is temporarily unavailable, most likely due to a service outage experienced by the carrier.">TemporarilyUnavailableCarrier</a></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div id="Examples" class="topic reference nested1">

## Examples

<div class="body refbody">

<div class="section">

### Example query request

<span class="ph">For information about standard request requirements,
see
<a href="../dev_guide/DG_RequiredRequestParameters.md" class="xref">Required request parameters</a>.</span>

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="sectiondiv content">

For domestic shipping
(`&ShippingOfferingFilter.IncludeComplexShippingOptions=false`)

``` pre
https://mws.amazonservices.com/MerchantFulfillment/2015-06-01
  &Action=GetEligibleShippingServices
  &SellerId=A09087172RPFTMV0PGAN2
  &SignatureVersion=2
  &Timestamp=2015-09-23T18%3A36%3A26Z
  &Version=2015-06-01
  &Signature=vMf6thsqGxfVy2EZBsH5sBPJxQe6VzKL9jli8eS7tvM%3D
  &SignatureMethod=HmacSHA256
  &ShipmentRequestDetails.AmazonOrderId=903-9939455-1336669
  &ShipmentRequestDetails.MustArriveByDate=2015-09-28T07%3A00%3A00Z
  &ShipmentRequestDetails.PackageDimensions.Length=5
  &ShipmentRequestDetails.PackageDimensions.Width=5
  &ShipmentRequestDetails.PackageDimensions.Height=5
  &ShipmentRequestDetails.PackageDimensions.Unit=inches
  &ShipmentRequestDetails.Weight.Value=10
  &ShipmentRequestDetails.Weight.Unit=ounces
  &ShipmentRequestDetails.ShipDate=2015-09-23T19%3A32%3A08.727Z
  &ShipmentRequestDetails.ShipFromAddress.Name=John%20Doe
  &ShipmentRequestDetails.ShipFromAddress.AddressLine1=1234%20Westlake%20Ave%20N
  &ShipmentRequestDetails.ShipFromAddress.City=Seattle
  &ShipmentRequestDetails.ShipFromAddress.StateOrProvinceCode=WA
  &ShipmentRequestDetails.ShipFromAddress.PostalCode=98121
  &ShipmentRequestDetails.ShipFromAddress.CountryCode=US
  &ShipmentRequestDetails.ShipFromAddress.Email=example%40example.com
  &ShipmentRequestDetails.ShipFromAddress.Phone=2061234567
  &ShipmentRequestDetails.ShippingServiceOptions.DeliveryExperience=DeliveryConfirmationWithoutSignature
  &ShipmentRequestDetails.ShippingServiceOptions.CarrierWillPickUp=false
  &ShipmentRequestDetails.ShippingServiceOptions.DeclaredValue.CurrencyCode=USD
  &ShipmentRequestDetails.ShippingServiceOptions.DeclaredValue.Amount=10.00
  &ShipmentRequestDetails.ItemList.Item.1.OrderItemId=28207139993814
  &ShipmentRequestDetails.ItemList.Item.1.Quantity=1
  &ShippingOfferingFilter.IncludeComplexShippingOptions=false
```

For international shipping
(`&ShippingOfferingFilter.IncludeComplexShippingOptions=true`)

``` pre
https://mws.amazonservices.com/MerchantFulfillment/2015-06-01
  &Action=GetEligibleShippingServices
  &SellerId= A46VPI2LR4OTS
  &SignatureVersion=2
  &Timestamp=2019-08-07T18%3A28%3A06Z
  &Version=2015-06-01
  &Signature=upzMoYiuk61LuT3eMkSnSqLHQJHoZfFX3iwxjeV%2F3Qg%3D
  &SignatureMethod=HmacSHA256
  &ShipmentRequestDetails.AmazonOrderId=922-2942641-9412606
  &ShipmentRequestDetails.MustArriveByDate=2019-09-10T07%3A00%3A00Z
  &ShipmentRequestDetails.PackageDimensions.Length=15
  &ShipmentRequestDetails.PackageDimensions.Width=5
  &ShipmentRequestDetails.PackageDimensions.Height=5
  &ShipmentRequestDetails.PackageDimensions.Unit=centimeters
  &ShipmentRequestDetails.Weight.Value=10
  &ShipmentRequestDetails.Weight.Unit=grams
  &ShipmentRequestDetails.ShipDate=2019-08-08T07%3A00%3A00Z
  &ShipmentRequestDetails.ShipFromAddress.Name=Shenzhen%20Address
  &ShipmentRequestDetails.ShipFromAddress.AddressLine1=test%20address
  &ShipmentRequestDetails.ShipFromAddress.City=Shenzhen
  &ShipmentRequestDetails.ShipFromAddress.StateOrProvinceCode=Guangdong
  &ShipmentRequestDetails.ShipFromAddress.PostalCode=510810
  &ShipmentRequestDetails.ShipFromAddress.CountryCode=CN
  &ShipmentRequestDetails.ShipFromAddress.Email=example%40example.com
  &ShipmentRequestDetails.ShipFromAddress.Phone=555-555-5555
  &ShipmentRequestDetails.ShippingServiceOptions.DeliveryExperience=DeliveryConfirmationWithoutSignature
  &ShipmentRequestDetails.ShippingServiceOptions.CarrierWillPickUp=true
  &ShipmentRequestDetails.ShippingServiceOptions.LabelFormat=ShippingServiceDefault
  &ShipmentRequestDetails.ItemList.Item.1.OrderItemId=26249797786670
  &ShipmentRequestDetails.ItemList.Item.1.Quantity=1
  &ShippingOfferingFilter.IncludePackingSlipWithLabel=false
  &ShippingOfferingFilter.IncludeComplexShippingOptions=true
```

<a href="#Examples" class="xref">↑ Top</a>

</div>

</div>

<div class="section">

### Example response

<span class="ph">For information about standard response formatting, see
<a href="../dev_guide/DG_ResponseFormat.md" class="xref">Response format</a>.</span>

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="sectiondiv content">

For shipping that does not require additional seller inputs.

``` pre
<?xml version="1.0"?>
<GetEligibleShippingServicesResponse
    xmlns="https://mws.amazonservices.com/MerchantFulfillment/2015-06-01">
    <GetEligibleShippingServicesResult>
        <ShippingServiceList>
            <ShippingService>
                <ShippingServiceName>UPS Ground</ShippingServiceName>
                <CarrierName>UPS</CarrierName>
                <ShippingServiceId>UPS_PTP_GND</ShippingServiceId>
                <ShippingServiceOfferId>ly51yzA1nAXlJzmYlKaH+7WbKOWz2BTujIOPx5PU8luilmZYK/JFhbx177aKey8MdZcG90uABbT5q8WAgPI+uxcxx/XDtIbI7c161j5spbfsiPTwIJg4Bk66bnP6Ip+JJtuSU5++rAdv4mzXvKpisLGYGrc+FuJvBAjTersJhq4=</ShippingServiceOfferId>
                <ShipDate>10/16/2018 07:41:12</ShipDate>
                <EarliestEstimatedDeliveryDate>10/18/2018 02:00:00</EarliestEstimatedDeliveryDate>
                <LatestEstimatedDeliveryDate>10/18/2018 02:00:00</LatestEstimatedDeliveryDate>
                <Rate>
                    <CurrencyCode>USD</CurrencyCode>
                    <Amount>16.83</Amount>
                </Rate>
                <ShippingServiceOptions>
                    <DeliveryExperience>DeliveryConfirmationWithoutSignature</DeliveryExperience>
                    <CarrierWillPickUp>False</CarrierWillPickUp>
                </ShippingServiceOptions>
                <AvailableLabelFormats>
                    <LabelFormat>ZPL203</LabelFormat>
                    <LabelFormat>ShippingServiceDefault</LabelFormat>
                    <LabelFormat>PDF</LabelFormat>
                    <LabelFormat>PNG</LabelFormat>
                </AvailableLabelFormats>
                <RequiresAdditionalSellerInputs>False</RequiresAdditionalSellerInputs>
            </ShippingService>
        </ShippingServiceList>
        <RejectedShippingServiceList>
            <RejectedShippingService>
                <CarrierName>UPS</CarrierName>
                <ShippingServiceId>UPS_PTP_3DS</ShippingServiceId>
                <RejectionReasonCode>INELIGIBLE</RejectionReasonCode>
                <RejectionReasonMessage>This ship method is not eligible for this
                    order.</RejectionReasonMessage>
                <ShippingServiceName>UPS Three Day Saver</ShippingServiceName>
            </RejectedShippingService>
        </RejectedShippingServiceList>
        <TemporarilyUnavailableCarrierList>
            <TemporarilyUnavailableCarrier>
                <CarrierName>DYNAMEX</CarrierName>
            </TemporarilyUnavailableCarrier>
            <TemporarilyUnavailableCarrier>
                <CarrierName>USPS</CarrierName>
            </TemporarilyUnavailableCarrier>
            <TemporarilyUnavailableCarrier>
                <CarrierName>DHLECOMMERCE</CarrierName>
            </TemporarilyUnavailableCarrier>
            <TemporarilyUnavailableCarrier>
                <CarrierName>SELF_DELIVERY</CarrierName>
            </TemporarilyUnavailableCarrier>
            <TemporarilyUnavailableCarrier>
                <CarrierName>ONTRAC</CarrierName>
            </TemporarilyUnavailableCarrier>
            <TemporarilyUnavailableCarrier>
                <CarrierName>DHLMX</CarrierName>
            </TemporarilyUnavailableCarrier>
            <TemporarilyUnavailableCarrier>
                <CarrierName>DHLM</CarrierName>
            </TemporarilyUnavailableCarrier>
            <TemporarilyUnavailableCarrier>
                <CarrierName>FEDEX</CarrierName>
            </TemporarilyUnavailableCarrier>
        </TemporarilyUnavailableCarrierList>
        <TermsAndConditionsNotAcceptedCarrierList>
            <TermsAndConditionsNotAcceptedCarrier>
                <CarrierName>AMZN_US</CarrierName>
            </TermsAndConditionsNotAcceptedCarrier>
            <TermsAndConditionsNotAcceptedCarrier>
                <CarrierName>ONTRAC</CarrierName>
            </TermsAndConditionsNotAcceptedCarrier>
        </TermsAndConditionsNotAcceptedCarrierList>
    </GetEligibleShippingServicesResult>
    <ResponseMetadata>
        <RequestId>5b7997fb-efd1-495b-b7db-03ecfa691038</RequestId>
    </ResponseMetadata>
</GetEligibleShippingServicesResponse>
```

For shipping that requires additional seller inputs.

``` pre
<?xml version="1.0"?>
<GetEligibleShippingServicesResponse
    xmlns="https://mws.amazonservices.com/MerchantFulfillment/2015-06-01">
    <GetEligibleShippingServicesResult>
        <ShippingServiceList>
            <ShippingService>
                <EarliestEstimatedDeliveryDate>2019-08-27T18:00:00Z</EarliestEstimatedDeliveryDate>
                <AvailableLabelFormats>
                    <LabelFormat>ShippingServiceDefault</LabelFormat>
                    <LabelFormat>PDF</LabelFormat>
                </AvailableLabelFormats>
                <ShipDate>2019-08-08T07:00:00Z</ShipDate>
                <RequiresAdditionalSellerInputs>true</RequiresAdditionalSellerInputs>
                <AvailableFormatOptionsForLabel>
                    <LabelFormatOption>
                        <IncludePackingSlipWithLabel>false</IncludePackingSlipWithLabel>
                        <LabelFormat>ShippingServiceDefault</LabelFormat>
                    </LabelFormatOption>
                    <LabelFormatOption>
                        <IncludePackingSlipWithLabel>false</IncludePackingSlipWithLabel>
                        <LabelFormat>PDF</LabelFormat>
                    </LabelFormatOption>
                </AvailableFormatOptionsForLabel>
                <ShippingServiceName>CHINA_POST_E_EMS</ShippingServiceName>
                <CarrierName>CHINA_POST</CarrierName>
                <ShippingServiceOptions>
                    <CarrierWillPickUp>true</CarrierWillPickUp>
                    <DeliveryExperience>DeliveryConfirmationWithoutSignature</DeliveryExperience>
                </ShippingServiceOptions>
                <ShippingServiceId>CHINA_POST_E_EMS</ShippingServiceId>
                <Rate>
                    <CurrencyCode>CNY</CurrencyCode>
                    <Amount>90.00</Amount>
                </Rate>
                <LatestEstimatedDeliveryDate>2019-08-27T18:00:00Z</LatestEstimatedDeliveryDate>
                <ShippingServiceOfferId>NH0sNBYSrqUP2+5yJdI14yLsCwFfk2413sYQHKbp0ILv8xkJemzkFK/wgUXeC9y4j6dNKuYn3EpQh7YJSc4gvPUfNDsISoAi9tCikbPjI5KOajdY75KvPLXPEC57Od/gAlOQv07JravlVU6oURFoVtc8nwZDviBPfA43owEPmxPglPTttIuS9LfcI0ky/kIP/OT7h+acfQj8JxAtomwX1WUYGZSbzkSL9c6ic5CAeriif1Kr0k8Y0RuloSZs2ZQwOv//nLvV3ZCZic8vU8cGVGHExM9sMKamBDopoh0Kx2JHcDwWHDcKB+lOntkABC84</ShippingServiceOfferId>
            </ShippingService>
        </ShippingServiceList>
        <RejectedShippingServiceList>
            <RejectedShippingService>
                <CarrierName>CHINA_POST</CarrierName>
                <ShippingServiceId>CHINA_POST_E_PACKET</ShippingServiceId>
                <RejectionReasonCode>INELIGIBLE</RejectionReasonCode>
                <RejectionReasonMessage>This ship method is not eligible for this
                    order.</RejectionReasonMessage>
                <ShippingServiceName>China Post e-Packet</ShippingServiceName>
            </RejectedShippingService>
        </RejectedShippingServiceList>
        <TermsAndConditionsNotAcceptedCarrierList>
            <TermsAndConditionsNotAcceptedCarrier>
                <CarrierName>DHL</CarrierName>
            </TermsAndConditionsNotAcceptedCarrier>
        </TermsAndConditionsNotAcceptedCarrierList>
        <TemporarilyUnavailableCarrierList>
            <TemporarilyUnavailableCarrier>
                <CarrierName>DPD</CarrierName>
            </TemporarilyUnavailableCarrier>
        </TemporarilyUnavailableCarrierList>
    </GetEligibleShippingServicesResult>
    <ResponseMetadata>
        <RequestId>5b7997fb-efd1-495b-b7db-03ecfa691038</RequestId>
    </ResponseMetadata>
</GetEligibleShippingServicesResponse>
```

<a href="#Examples" class="xref">↑ Top</a>

</div>

</div>

</div>

</div>

<div id="RelatedTopics" class="topic nested1">

## Related topics

<div class="body">

<a href="../merch_fulfill/MerchFulfill_Overview.md" class="xref">Merchant Fulfillment API</a>

<a href="MerchFulfill_HowToUseForPrime.md" class="xref">How to fulfill Seller Fulfilled Prime orders</a>

<a href="MerchFulfill_GetAdditionalSellerInputs.md" class="xref" title="Returns a list of additional seller inputs that are required from the seller to purchase the shipping service that you specify.">GetAdditionalSellerInputs</a>

<a href="MerchFulfill_CreateShipment.md" class="xref">CreateShipment</a>

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
