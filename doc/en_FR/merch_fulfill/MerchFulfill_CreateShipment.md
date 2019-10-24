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

<div id="MerchFulFill_CreateShipment" class="nested0">

# CreateShipment

<div class="body">

</div>

<div id="Description" class="topic concept nested1">

## Description

<div class="body conbody">

The <span class="keyword apiname">CreateShipment</span> operation
purchases shipping and returns PDF, PNG, or ZPL document data for a
shipping label, depending on the carrier. Amazon compresses the document
data before returning it as a Base64-encoded string. For information
about extracting document data from a compressed file, see [How to
extract a shipping label
file](MerchFulfill_HowToExtractShippingLabel.md). The
<span class="keyword apiname">CreateShipment</span> operation also
returns a Base64-encoded MD5 hash to validate the document data.
<span class="ph">For definitions, see
[Terminology](../merch_fulfill/MerchFulfill_Overview.html#Terminology).</span>
<span class="ph">For more information, see [How to fulfill Seller
Fulfilled Prime orders](MerchFulfill_HowToUseForPrime.md).</span>

<div class="note important">

<span class="importanttitle">Important:</span>

  - The <span class="keyword apiname">CreateShipment</span> operation
    returns a <span class="keyword parmname">ShipmentId</span> value. Be
    sure to store this value for future use, as it is a required request
    parameter for the <span class="keyword apiname">GetShipment</span>
    and <span class="keyword apiname">CancelShipment</span> operations.
  - Do not resize or edit the contents of the shipping labels returned
    by this operation. Carriers might not be able to successfully scan a
    modified label.

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
requests](../dev_guide/DG_Throttling.md) in the
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
<td><span class="keyword parmname">ShipmentRequestDetails</span></td>
<td>Shipment information required for creating a shipment.</td>
<td>Yes</td>
<td>Type: <a href="MerchFulfill_Datatypes.html#ShipmentRequestDetails" class="xref" title="Shipment information required for requesting shipping service offers or for creating a shipment.">ShipmentRequestDetails</a></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">ShippingServiceId</span></td>
<td><span class="ph">An Amazon-defined shipping service identifier. <span class="ph">For definitions, see <a href="../merch_fulfill/MerchFulfill_Overview.html#Terminology" class="xref">Terminology</a>.</span></span>
<p>Get the <span class="keyword parmname">ShippingServiceId</span> value from a previous call to the <span class="keyword apiname">GetEligibleShippingServices</span> operation.</p></td>
<td>Yes</td>
<td><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">ShippingServiceOfferId</span></td>
<td><span class="ph">An Amazon-defined shipping service offer identifier. <span class="ph">For definitions, see <a href="../merch_fulfill/MerchFulfill_Overview.html#Terminology" class="xref">Terminology</a>.</span></span>
<p>Get the <span class="keyword parmname">ShippingServiceOfferId</span> value from a previous call to the <span class="keyword apiname">GetEligibleShippingServices</span> operation.</p></td>
<td>No</td>
<td><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">HazmatType</span></td>
<td><span class="ph">Hazardous materials options for a package.</span>
<p>Consult the terms and conditions for each carrier for more information about hazardous materials.</p></td>
<td>No</td>
<td>Type: <a href="MerchFulfill_Datatypes.html#HazmatType" class="xref" title="Hazardous materials options for a package. Consult the terms and conditions for each carrier for more information on hazardous materials.">HazmatType</a></td>
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
parameters](../dev_guide/DG_RequiredRequestParameters.md).</span>

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="sectiondiv content">

``` pre codeblock
https://mws.amazonservices.com/MerchantFulfillment/2015-06-01
  &Action=CreateShipment
  &SellerId=A09087172RPFTMV0PGAN2
  &SignatureVersion=2
  &Timestamp=2015-09-23T20%3A10%3A56Z
  &Version=2015-06-01
  &Signature=9jIwZLpoKQWja2BlY8TVWHN17UN2x7VIA%2FHib4U4QLA%3D
  &SignatureMethod=HmacSHA256
  &HazmatType=None
  &ShippingServiceId=FEDEX_PTP_PRIORITY_OVERNIGHT
  &ShipmentRequestDetails.AmazonOrderId=903-1713775-3598252
  &ShipmentRequestDetails.LabelCustomization.CustomTextForLabel=ABC123
  &ShipmentRequestDetails.LabelCustomization.StandardIdForLabel=AmazonOrderId
  &ShipmentRequestDetails.MustArriveByDate=2015-09-25T07%3A00%3A00Z
  &ShipmentRequestDetails.PackageDimensions.Length=5
  &ShipmentRequestDetails.PackageDimensions.Width=5
  &ShipmentRequestDetails.PackageDimensions.Height=5
  &ShipmentRequestDetails.PackageDimensions.Unit=inches
  &ShipmentRequestDetails.Weight.Value=10
  &ShipmentRequestDetails.Weight.Unit=ounces
  &ShipmentRequestDetails.ShipDate=2015-09-23T20%3A10%3A56.829Z
  &ShipmentRequestDetails.ShipFromAddress.Name=John%20Doe
  &ShipmentRequestDetails.ShipFromAddress.AddressLine1=1234%20Westlake%20Ave
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
  &ShipmentRequestDetails.ShippingServiceOptions.LabelFormat=ZPL203
  &ShipmentRequestDetails.ItemList.Item.1.OrderItemId=40525960574974
  &ShipmentRequestDetails.ItemList.Item.1.Quantity=2
  &ShipmentRequestDetails.ItemList.Item.1.TransparencyCodeList.TransparencyCode.1=AZ:QFUL6MXBXE3A2EBC0
  &ShipmentRequestDetails.ItemList.Item.1.TransparencyCodeList.TransparencyCode.2=ZA:QFUL6MXBXE3A2EBC0
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
<CreateShipmentResponse xmlns="https://mws.amazonservices.com
    /MerchantFulfillment/2015-06-01">
    <CreateShipmentResult>
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
                <CustomTextForLabel>ABC123</CustomTextForLabel>
                <LabelFormat>ZPL203</LabelFormat>
                <FileContents>
                    <Checksum>DmsWbJpdMPALN3jV4wHOrg==</Checksum>
                    <Contents>H4sIAAAAAAAAAK16WbeqyrLmO2Pc/zBVRLG...
                        ...kI0Ycv76w378UfL6O6ev7UsAwmkWBfL6nycD/Bd+Zx3S8LwAA</Contents>
                    <FileType>application/zpl</FileType>
                    <LabelFormat>ZPL203</LabelFormat>
                </FileContents>
                <Dimensions>
                    <Width>8.50000</Width>
                    <Length>11.00000</Length>
                    <Unit>inches</Unit>
                </Dimensions>
                <StandardIdForLabel>AmazonOrderId</StandardIdForLabel>
            </Label>
            <ShippingService>
                <CarrierName>FEDEX</CarrierName>
                <ShippingServiceOptions>
                    <CarrierWillPickUp>false</CarrierWillPickUp>
                    <DeclaredValue>
                        <CurrencyCode>USD</CurrencyCode>
                        <Amount>10.00</Amount>
                    </DeclaredValue>
                    <DeliveryExperience>DELIVERY_CONFIRMATION </DeliveryExperience>
                </ShippingServiceOptions>
                <ShippingServiceId>FEDEX_PTP_PRIORITY_OVERNIGHT </ShippingServiceId>
                <Rate>
                    <CurrencyCode>USD</CurrencyCode>
                    <Amount>27.81</Amount>
                </Rate>
                <LatestEstimatedDeliveryDate>2015-09-24T10:30:00Z </LatestEstimatedDeliveryDate>
                <EarliestEstimatedDeliveryDate>2015-09-24T10:30:00Z </EarliestEstimatedDeliveryDate>
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
    </CreateShipmentResult>
    <ResponseMetadata>
        <RequestId>adb18f0d-2076-48d4-99ef-fb4b9f892a4e</RequestId>
    </ResponseMetadata>
</CreateShipmentResponse>
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

[GetEligibleShippingServices](MerchFulfill_GetEligibleShippingServices.html "Returns a list of shipping service offers.")

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
