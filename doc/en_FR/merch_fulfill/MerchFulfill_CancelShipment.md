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

<div id="MerchFulFill_CancelShipment" class="nested0">

# CancelShipment

<div class="body">

<span class="ph">Cancels an existing shipment.</span>

</div>

<div id="Description" class="topic concept nested1">

## Description

<div class="body conbody">

The <span class="keyword apiname">CancelShipment</span> operation
cancels an existing shipment and requests a refund for the
<span class="keyword parmname">ShipmentId</span> value that you specify.
<span class="ph">Get the
<span class="keyword parmname">ShipmentId</span> value from a previous
call to the [CreateShipment](MerchFulfill_CreateShipment.html)
operation.</span>

Canceling a shipment only succeeds if the cancellation window has not
expired and if the shipment has not previously been canceled.
<span class="ph">Cancellation policies vary by carrier. For more
information about carrier cancellation policies, see the Seller Central
Help.</span> <span class="ph">For more information, see [How to fulfill
Seller Fulfilled Prime
orders](MerchFulfill_HowToUseForPrime.html).</span>

<div class="section">

### Creating new shipments after canceling

<div class="p">

These are conditions where you can create new shipments after canceling
existing shipments:

  - If only a single shipment was created to fulfill an order, you can
    cancel the shipment and then create a new shipment for that order
    using the <span class="keyword apiname">CancelShipment</span>
    operation.
  - If multiple shipments were created to fulfill an order, you can
    cancel the shipments, but cannot create new shipments using the
    <span class="ph">Merchant Fulfillment service</span>. You will need
    to either create new shipments in Seller Central or arrange for
    shipping by contacting a carrier directly.

</div>

</div>

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
requests](../dev_guide/DG_Throttling.html) in the
<span class="ph">Amazon MWS Developer Guide</span>.</span>

</div>

</div>

</div>

<div id="RequestParameters" class="topic reference nested1">

## Request parameters

<div class="body refbody">

<div class="tablenoborder">

<table>
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Description</th>
<th>Required</th>
<th>Values</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><span class="keyword parmname">ShipmentId</span></td>
<td><span id="RequestParameters__d37953e202" class="ph">An Amazon-defined shipment identifier.</span>
<p><span id="RequestParameters__d37953e205" class="ph">Get the <span class="keyword parmname">ShipmentId</span> value from a previous call to the <a href="MerchFulfill_CreateShipment.html" class="xref">CreateShipment</a> operation.</span></p></td>
<td>Yes</td>
<td><span class="ph">Type: xs:string</span></td>
</tr>
</tbody>
</table>

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
<td><span class="keyword parmname">Shipment</span></td>
<td><span class="ph">The details of a shipment, including the shipment status.</span>
<div class="p">
<div class="note note">
<span class="notetitle">Note:</span> Calls to the <span class="keyword apiname">CreateShipment</span>, <span class="keyword apiname">GetShipment</span>, and <span class="keyword apiname">CancelShipment</span> operations return empty <span class="keyword parmname">Phone</span> and <span class="keyword parmname">Email</span> elements in the <span class="keyword parmname">ShipToAddress</span> response element.
</div>
Type: <a href="MerchFulfill_Datatypes.html#Shipment" class="xref" title="The details of a shipment, including the shipment status.">Shipment</a>
</div></td>
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
parameters](../dev_guide/DG_RequiredRequestParameters.html).</span>

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="sectiondiv content">

``` pre codeblock
https://mws.amazonservices.com/MerchantFulfillment/2015-06-01
  &Action=CancelShipment
  &SellerId=A09087172RPFTMV0PGAN2
  &SignatureVersion=2
  &Timestamp=2015-09-23T20%3A35%3A05Z
  &Version=2015-06-01
  &Signature=HHLRMvGAu0ANINFbjPE7nvEH6IGK%2FxPsLGayAg2WekE%3D
  &SignatureMethod=HmacSHA256
  &ShipmentId=6f77095e-9f75-47eb-aaab-a42d5428fa1a
```

[↑ Top](#Examples)

</div>

</div>

<div class="section">

### Example response

<span class="ph">For information about standard response formatting, see
[Response format](../dev_guide/DG_ResponseFormat.html).</span>

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="sectiondiv content">

``` pre codeblock
<?xml version="1.0"?>
<CancelShipmentResponse xmlns="https://mws.amazonservices.com
/MerchantFulfillment/2015-06-01">
  <CancelShipmentResult>
    <Shipment>
      <Insurance>
        <CurrencyCode>USD</CurrencyCode>
        <Amount>10.00</Amount>
      </Insurance>
      <ShipToAddress>
        <City>Seattle</City>
        <Phone/>
        <CountryCode>US</CountryCode>
        <PostalCode>98121-2778</PostalCode>
        <Name>Jane Smith</Name>
        <AddressLine1>321 Main St</AddressLine1>
        <StateOrProvinceCode>WA</StateOrProvinceCode>
        <Email/>
      </ShipToAddress>
      <AmazonOrderId>903-1713775-3598252</AmazonOrderId>
      <Weight>
        <Value>10</Value>
        <Unit>oz</Unit>
      </Weight>
      <Label>
        <FileContents>
          <Checksum>DmsWbJpdMPALN3jV4wHOrg==</Checksum>
          <Contents>H4sIAAAAAAAAAK16WbeqyrLmO2Pc/zBVRLG...
...kI0Ycv76w378UfL6O6ev7UsAwmkWBfL6nycD/Bd+Zx3S8LwAA</Contents>
          <FileType>application/pdf</FileType>
        </FileContents>
        <Dimensions>
          <Width>8.50000</Width>
          <Length>11.00000</Length>
          <Unit>inches</Unit>
        </Dimensions>
      </Label>
      <ShippingService>
        <CarrierName>FEDEX</CarrierName>
        <ShippingServiceOptions>
          <CarrierWillPickUp>false</CarrierWillPickUp>
          <DeclaredValue>
            <CurrencyCode>USD</CurrencyCode>
            <Amount>10.00</Amount>
          </DeclaredValue>
          <DeliveryExperience>DELIVERY_CONFIRMATION
          </DeliveryExperience>
        </ShippingServiceOptions>
        <ShippingServiceId>FEDEX_PTP_PRIORITY_OVERNIGHT
        </ShippingServiceId>
        <Rate>
          <CurrencyCode>USD</CurrencyCode>
          <Amount>27.81</Amount>
        </Rate>
        <LatestEstimatedDeliveryDate>2015-09-24T10:30:00Z
        </LatestEstimatedDeliveryDate>
        <EarliestEstimatedDeliveryDate>2015-09-24T10:30:00Z
        </EarliestEstimatedDeliveryDate>
        <ShippingServiceOfferId>HDDUKqtQVFetpBZAqx5c1yaCZ9vuFfND0kudyw3lLWCa
3mN2+zUOsRCAZS2oYt0ey6fXKdOAucmYVXR9LAkU9O9eys9V3FJCgvQ+vAqm4bSAzHVH04vD8oLy
oUPKqxa8Otbek97Z85LFUSsfcUf8frNRMEfNLP8t5RyLXa4ZOjc=</ShippingServiceOfferId>
        <ShipDate>2015-09-23T20:10:56.829Z</ShipDate>
        <ShippingServiceName>FedEx Priority OvernightÂ®</ShippingServiceName>
      </ShippingService>
      <PackageDimensions>
        <Width>5</Width>
        <Length>5</Length>
        <Unit>inches</Unit>
        <Height>5</Height>
      </PackageDimensions>
      <CreatedDate>2015-09-23T20:11:12.908Z</CreatedDate>
      <ShipFromAddress>
        <City>Seattle</City>
        <Phone>2061234567</Phone>
        <CountryCode>US</CountryCode>
        <PostalCode>98121</PostalCode>
        <Name>John Doe</Name>
        <AddressLine1>1234 Westlake Ave</AddressLine1>
        <StateOrProvinceCode>WA</StateOrProvinceCode>
      </ShipFromAddress>
      <ShipmentId>6f77095e-9f75-47eb-aaab-a42d5428fa1a</ShipmentId>
      <ItemList>
        <Item>
          <OrderItemId>40525960574974</OrderItemId>
          <Quantity>1</Quantity>
        </Item>
      </ItemList>
      <Status>Purchased</Status>
      <TrackingId>794657111237</TrackingId>
    </Shipment>
  </CancelShipmentResult>
  <ResponseMetadata>
    <RequestId>adb18f0d-2076-48d4-99ef-fb4b9f892a4e</RequestId>
  </ResponseMetadata>
</CancelShipmentResponse>
```

[↑ Top](#Examples)

</div>

</div>

</div>

</div>

<div id="RelatedTopics" class="topic nested1">

## Related topics

<div class="body">

[Merchant Fulfillment API](../merch_fulfill/MerchFulfill_Overview.html)

[CreateShipment](MerchFulfill_CreateShipment.html)

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