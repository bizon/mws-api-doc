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
shipping service offer that meets your requirements, then specify the
<span class="keyword parmname">ShippingServiceId</span> value and the
optional <span class="keyword parmname">ShippingServiceOfferId</span>
value associated with this shipping service offer in a subsequent call
to the [CreateShipment](MerchFulfill_CreateShipment.md) operation.
<span class="ph">For definitions, see
[Terminology](../merch_fulfill/MerchFulfill_Overview.html#Terminology).</span>
<span class="ph">For more information, see [How to fulfill Seller
Fulfilled Prime orders](MerchFulfill_HowToUseForPrime.md).</span>

<div class="section">

### Availability

This operation is only available in the Mexico, US, Germany, and UK
marketplaces.

</div>

<div class="section">

### Throttling

<span class="ph">This operation has a maximum request quota of 10 and a
restore rate of five requests every second. For definitions of
throttling terminology and for a complete explanation of throttling, see
[Throttling: Limits to how often you can submit
requests](../dev_guide/DG_Throttling.md) in the
<span class="ph">Amazon MWS Developer
Guide</span>.</span>

</div>

</div>

</div>

<div id="RequestParameters" class="topic reference nested1">

## Request parameters

<div class="body refbody">

<div class="tablenoborder">

| Name                                                         | Description                                                           | Required | Values                                                                                                                                                                                |
| ------------------------------------------------------------ | --------------------------------------------------------------------- | -------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| <span class="keyword parmname">ShipmentRequestDetails</span> | Shipment information required for requesting shipping service offers. | Yes      | Type: [ShipmentRequestDetails](MerchFulfill_Datatypes.html#ShipmentRequestDetails "Shipment information required for requesting shipping service offers or for creating a shipment.") |

</div>

</div>

</div>

<div id="ResponseElements" class="topic reference nested1">

## Response elements

<div class="body refbody">

<div class="tablenoborder">

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><span class="keyword parmname">ShippingServiceList</span></td>
<td>A list of shipping services offers.
<p>Type: List of <a href="MerchFulfill_Datatypes.html#ShippingService" class="xref" title="A shipping service offer made by a carrier.">ShippingService</a></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">TemporarilyUnavailableCarrierList</span></td>
<td>A list of carriers who are temporarily unavailable, most likely due to a service outage experienced by the carrier. To use a carrier that is on this list, retry at a later time.
<p>Type: List of <a href="MerchFulfill_Datatypes.html#TemporarilyUnavailableCarrier" class="xref" title="A carrier who is temporarily unavailable, most likely due to a service outage experienced by the carrier.">TemporarilyUnavailableCarrier</a></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">TermsAndConditionsNotAcceptedCarrierList</span></td>
<td>A list of carriers whose terms and conditions have not been accepted by the seller. The seller must accept Amazon's terms and conditions and the terms and conditions of any carrier from which they want to purchase shipping labels. The seller can do this on Seller Central (<a href="https://sellercentral.amazon.co.uk/gp/shipping-manager/terms-and-conditions.html" class="xref">Europe</a>) (<a href="https://sellercentral.amazon.com/gp/shipping-manager/terms-and-conditions.html" class="xref">US</a>).
<p>Type: List of <a href="MerchFulfill_Datatypes.html#TemporarilyUnavailableCarrier" class="xref" title="A carrier who is temporarily unavailable, most likely due to a service outage experienced by the carrier.">TemporarilyUnavailableCarrier</a></p></td>
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
see [Required request
parameters](../dev_guide/DG_RequiredRequestParameters.md).</span>

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="sectiondiv content">

``` pre codeblock
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
  &ShipmentRequestDetails.ShippingServiceOptions.DeliveryExperience
=DeliveryConfirmationWithoutSignature
  &ShipmentRequestDetails.ShippingServiceOptions.CarrierWillPickUp=false
  &ShipmentRequestDetails.ShippingServiceOptions.DeclaredValue.CurrencyCode
=USD
  &ShipmentRequestDetails.ShippingServiceOptions.DeclaredValue.Amount=10.00
  &ShipmentRequestDetails.ItemList.Item.1.OrderItemId=28207139993814
  &ShipmentRequestDetails.ItemList.Item.1.Quantity=1
```

[↑ Top](#Examples)

</div>

</div>

<div class="section">

### Example response

<span class="ph">For information about standard response formatting, see
[Response format](../dev_guide/DG_ResponseFormat.md).</span>

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="sectiondiv content">

``` pre codeblock
<?xml version="1.0"?>
<GetEligibleShippingServicesResponse xmlns="https://mws.amazonservices.com
    /MerchantFulfillment/2015-06-01">
    <GetEligibleShippingServicesResult>
        <ShippingServiceList>
            <ShippingService>
                <AvailableLabelFormats>
                  <LabelFormat>PDF</LabelFormat>
                  <LabelFormat>ShippingServiceDefault</LabelFormat>
                  <LabelFormat>ZPL203</LabelFormat>
                </AvailableLabelFormats>
                <CarrierName>FEDEX</CarrierName>
                <ShippingServiceOptions>
                    <CarrierWillPickUp>false</CarrierWillPickUp>
                    <DeclaredValue>
                        <CurrencyCode>USD</CurrencyCode>
                        <Amount>10.00</Amount>
                    </DeclaredValue>
                    <DeliveryExperience>DeliveryConfirmationWithoutSignature
                    </DeliveryExperience>
                </ShippingServiceOptions>
                <ShippingServiceId>FEDEX_PTP_PRIORITY_OVERNIGHT</ShippingServiceId>
                <Rate>
                    <CurrencyCode>USD</CurrencyCode>
                    <Amount>27.81</Amount>
                </Rate>
                <LatestEstimatedDeliveryDate>2015-09-24T10:30:00Z
                </LatestEstimatedDeliveryDate>
                <EarliestEstimatedDeliveryDate>2015-09-24T10:30:00Z
                </EarliestEstimatedDeliveryDate>
                <ShippingServiceOfferId>HDDUKqtQVFetpBZAqx5c1yaCZ9vuFfND0kudyw3lLWCa3
mN2+zUOsRCAZS2oYt0ey6fXKdOAucmYVXR9LAkU9P8hOWw6qYvxYfGr3QxB6dif9iACvBG7fTm0y3
x5aKoyyj7mlrrOUEutSK4PbpMepC3deb5GjoVHIIdeKhVZYRU=</ShippingServiceOfferId>
                <ShipDate>2015-09-23T19:32:08.727Z</ShipDate>
                <ShippingServiceName>FedEx Priority Overnight</ShippingServiceName>
            </ShippingService>
            <ShippingService>
                <AvailableLabelFormats>
                  <LabelFormat>PDF</LabelFormat>
                  <LabelFormat>ShippingServiceDefault</LabelFormat>
                  <LabelFormat>ZPL203</LabelFormat>
                </AvailableLabelFormats>
                <CarrierName>FEDEX</CarrierName>
                <ShippingServiceOptions>
                    <CarrierWillPickUp>false</CarrierWillPickUp>
                    <DeclaredValue>
                        <CurrencyCode>USD</CurrencyCode>
                        <Amount>10.00</Amount>
                    </DeclaredValue>
                    <DeliveryExperience>DeliveryConfirmationWithoutSignature
                    </DeliveryExperience>
                </ShippingServiceOptions>
                <ShippingServiceId>FEDEX_PTP_STANDARD_OVERNIGHT</ShippingServiceId>
                <Rate>
                    <CurrencyCode>USD</CurrencyCode>
                    <Amount>26.57</Amount>
                </Rate>
                <LatestEstimatedDeliveryDate>2015-09-24T20:00:00Z
                </LatestEstimatedDeliveryDate>
                <EarliestEstimatedDeliveryDate>2015-09-24T20:00:00Z
                </EarliestEstimatedDeliveryDate>
                <ShippingServiceOfferId>HDDUKqtQVFetpBZAqx5c1yaCZ9vuFfND0kudyw3lLWCa3
mN2+zUOsRCAZS2oYt0elYmXI8AA2YaB4Q0etqj8XeAkNr4oeJBer1ZX9y4YQN+jHo37NejjUkmDTD
TxHRbtUIKRYtC9pDb7UCg/VJRff5NpQHcMmBbY/Q/tFdxYM5c=</ShippingServiceOfferId>
                <ShipDate>2015-09-23T19:32:08.727Z</ShipDate>
                <ShippingServiceName>FedEx Standard Overnight</ShippingServiceName>
            </ShippingService>
            <ShippingService>
                <AvailableLabelFormats>
                  <LabelFormat>PNG</LabelFormat>
                  <LabelFormat>ShippingServiceDefault</LabelFormat>
                </AvailableLabelFormats>
                <CarrierName>UPS</CarrierName>
                <ShippingServiceOptions>
                    <CarrierWillPickUp>false</CarrierWillPickUp>
                    <DeclaredValue>
                        <CurrencyCode>USD</CurrencyCode>
                        <Amount>10.00</Amount>
                    </DeclaredValue>
                    <DeliveryExperience>DeliveryConfirmationWithoutSignature
                    </DeliveryExperience>
                </ShippingServiceOptions>
                <ShippingServiceId>UPS_PTP_GND</ShippingServiceId>
                <Rate>
                    <CurrencyCode>USD</CurrencyCode>
                    <Amount>6.89</Amount>
                </Rate>
                <LatestEstimatedDeliveryDate>2015-09-25T06:00:00Z
                </LatestEstimatedDeliveryDate>
                <EarliestEstimatedDeliveryDate>2015-09-25T06:00:00Z
                </EarliestEstimatedDeliveryDate>
                <ShippingServiceOfferId>HDDUKqtQVFetpBZAqx5c12nyrBg+Utzz6zmIwjhbP5DEb
C2ZiP0hJRCyAda4ne5EiFGyivXnPjg4kMabInnyVrqdSXRj9TCk88N3BHctTV4lY+0YW647Dm0ahK
hTc4vU9OqMqYLWbnESwE/V/iydXw==</ShippingServiceOfferId>
                <ShipDate>2015-09-23T19:32:08.727Z</ShipDate>
                <ShippingServiceName>UPS Ground</ShippingServiceName>
            </ShippingService>
            <ShippingService>
                <AvailableLabelFormats>
                  <LabelFormat>PNG</LabelFormat>
                  <LabelFormat>ShippingServiceDefault</LabelFormat>
                </AvailableLabelFormats>
                <CarrierName>UPS</CarrierName>
                <ShippingServiceOptions>
                    <CarrierWillPickUp>false</CarrierWillPickUp>
                    <DeclaredValue>
                        <CurrencyCode>USD</CurrencyCode>
                        <Amount>10.00</Amount>
                    </DeclaredValue>
                    <DeliveryExperience>DeliveryConfirmationWithoutSignature
                    </DeliveryExperience>
                </ShippingServiceOptions>
                <ShippingServiceId>UPS_PTP_NEXT_DAY_AIR_SAVER</ShippingServiceId>
                <Rate>
                    <CurrencyCode>USD</CurrencyCode>
                    <Amount>22.91</Amount>
                </Rate>
                <LatestEstimatedDeliveryDate>2015-09-25T06:00:00Z
                </LatestEstimatedDeliveryDate>
                <EarliestEstimatedDeliveryDate>2015-09-25T06:00:00Z
                </EarliestEstimatedDeliveryDate>
                <ShippingServiceOfferId>HDDUKqtQVFetpBZAqx5c12nyrBg+Utzz6zmIwjhbP5AI
OD5oqRXbXz/IF3ZW5Q10AweW6+i5eN09ZqJR1mzQzFPPfKibDD4Rp4AgmbgfThY8CFviXQhKSKsU
aEdmFUlijYAwbgH9yJ7QHoA7K6+C2Qv6VrhsAhuOJWrI87rqSTA=</ShippingServiceOfferId>
                <ShipDate>2015-09-23T19:32:08.727Z</ShipDate>
                <ShippingServiceName>UPS Next Day Air Saver</ShippingServiceName>
            </ShippingService>
        </ShippingServiceList>
        <TemporarilyUnavailableCarrierList>
            <TemporarilyUnavailableCarrier>
                <CarrierName>USPS</CarrierName>
            </TemporarilyUnavailableCarrier>
        </TemporarilyUnavailableCarrierList>
    </GetEligibleShippingServicesResult>
    <ResponseMetadata>
        <RequestId>5b7997fb-efd1-495b-b7db-03ecfa691038</RequestId>
    </ResponseMetadata>
</GetEligibleShippingServicesResponse>
```

[↑ Top](#Examples)

</div>

</div>

</div>

</div>

<div id="RelatedTopics" class="topic nested1">

## Related topics

<div class="body">

[Merchant Fulfillment API](../merch_fulfill/MerchFulfill_Overview.md)

[How to fulfill Seller Fulfilled Prime
orders](MerchFulfill_HowToUseForPrime.md)

[CreateShipment](MerchFulfill_CreateShipment.md)

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
