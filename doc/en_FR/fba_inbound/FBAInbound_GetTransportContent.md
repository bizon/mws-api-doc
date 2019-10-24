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

<div id="FBAInbound_GetTransportContent" class="nested0">

# GetTransportContent

<div class="body">

<span class="ph">Returns current transportation information about an
inbound shipment.</span>

</div>

<div id="Description" class="topic concept nested1">

## Description

<div class="body conbody">

<div class="section">

The <span class="keyword apiname">GetTransportContent</span> operation
returns current transportation information about an inbound shipment.
This includes the current workflow status for shipments by
Amazon-partnered carriers and the current workflow status for individual
<span class="ph">Small Parcel</span> Delivery packages as they are
processed by the <span class="ph">Amazon fulfillment center</span>. This
also includes the
<span class="keyword parmname">PartneredEstimate</span> response
element, which indicates the estimated shipping cost for an inbound
shipment by an Amazon-partnered carrier. Note that
<span class="keyword parmname">PartneredEstimate</span> will not be
returned unless the
<span class="keyword parmname">TransportStatus</span> value of the
inbound shipment is ESTIMATED, CONFIRMING, or CONFIRMED.
<span class="ph">For more information, see [Using an Amazon-partnered
carrier for your inbound
shipment](../fba_guide/FBAGuide_UsingAmazonCarrierToShip.md) in the
MWS for FBA Sellers guide.</span>

</div>

<div class="section">

### Availability

This operation is available in all marketplaces except Brazil.

</div>

<div class="section">

### Throttling

The <span class="keyword apiname">GetTransportContent</span> operation
has a **maximum request quota** of 30 and a **restore rate** of two
requests every second. <span class="ph">For definitions of throttling
terminology and for a complete explanation of throttling, see
[Throttling: Limits to how often you can submit
requests](../dev_guide/DG_Throttling.md) in the
<span class="ph">Amazon MWS Developer Guide</span>.</span>

</div>

</div>

</div>

<div id="RequestParameters" class="topic reference nested1">

## Request parameters

<div class="body refbody">

<div class="section">

<span class="ph">For more information about the request parameters that
are required for all <span class="ph">Amazon MWS</span> operations, see
[Required request
parameters](../dev_guide/DG_RequiredRequestParameters.md) in the
<span class="ph">Amazon MWS Developer
Guide</span>.</span>

</div>

<div class="tablenoborder">

| Name                                             | Description                                                                                                                                        | Required | Values                                  |
| ------------------------------------------------ | -------------------------------------------------------------------------------------------------------------------------------------------------- | -------- | --------------------------------------- |
| <span class="keyword parmname">ShipmentId</span> | <span class="ph">A shipment identifier originally returned by the <span class="keyword apiname">CreateInboundShipmentPlan</span> operation.</span> | Yes      | <span class="ph">Type: xs:string</span> |

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
<td><span class="keyword parmname">TransportContent</span></td>
<td>Inbound shipment information, including carrier details, shipment status, and the workflow status for a request for shipment with an Amazon-partnered carrier.
<p>Type: <a href="FBAInbound_Datatypes.md#TransportContent" class="xref" title="Inbound shipment information, including carrier details, shipment status, and the workflow status for a request for shipment with an Amazon-partnered carrier.">TransportContent</a></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div id="Examples" class="topic reference nested1">

## Examples

<div class="body refbody">

<div id="Examples__SP_Amazon-patnered_request" class="section">

### Example query request (<span class="ph">Small Parcel</span>, Amazon-partnered carrier shipment)

<span class="ph">For information about standard request requirements,
see [Required request
parameters](../dev_guide/DG_RequiredRequestParameters.md).</span>

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="sectiondiv content">

``` pre codeblock
https://mws.amazonaws.com/FulfillmentInboundShipment/2010-10-01
  ?AWSAccessKeyId=AKIAEIAL5QODNGQCJLSA
  &Action=GetTransportContent
  &MWSAuthToken=amzn.mws.4ea38b7b-f563-7709-4bae-87aeaEXAMPLE
  &SellerId=A135KKEKWF1J56
  &SignatureVersion=2
  &Timestamp=2013-08-09T00%3A46%3A38Z
  &Version=2010-10-01
  &SignatureMethod=HmacSHA256
  &ShipmentId=FBAQF72K
```

[↑ Top](#Examples)

</div>

</div>

<div id="Examples__SP_Amazon-patnered_response" class="section">

### Example response

<span class="ph">For information about standard response formatting, see
[Response format](../dev_guide/DG_ResponseFormat.md).</span>

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="sectiondiv content">

``` pre codeblock
<?xml version="1.0"?>
<GetTransportContentResponse
    xmlns="http://mws.amazonaws.com/FulfillmentInboundShipment/2010-10-01/">
    <GetTransportContentResult>
        <TransportContent>
            <TransportDetails>
                <PartneredSmallParcelData>
                    <PartneredEstimate>
                        <Amount>
                            <CurrencyCode>USD</CurrencyCode>
                            <Value>38.22</Value>
                        </Amount>
                        <VoidDeadline>2013-08-10T00:25:05.650Z</VoidDeadline>
                    </PartneredEstimate>
                    <PackageList>
                        <member>
                            <Weight>
                                <Unit>pounds</Unit>
                                <Value>5.5</Value>
                            </Weight>
                            <TrackingId>1Z8V016A0377769652</TrackingId>
                            <CarrierName>UNITED_PARCEL_SERVICE_INC</CarrierName>
                            <Dimensions>
                                <Unit>inches</Unit>
                                <Height>15</Height>
                                <Width>15</Width>
                                <Length>15</Length>
                            </Dimensions>
                            <PackageStatus>SHIPPED</PackageStatus>
                        </member>
                        <member>
                            <Weight>
                                <Unit>pounds</Unit>
                                <Value>5.5</Value>
                            </Weight>
                            <TrackingId>1Z8V016A0371928464</TrackingId>
                            <CarrierName>UNITED_PARCEL_SERVICE_INC</CarrierName>
                            <Dimensions>
                                <Unit>inches</Unit>
                                <Height>15</Height>
                                <Width>15</Width>
                                <Length>15</Length>
                            </Dimensions>
                            <PackageStatus>SHIPPED</PackageStatus>
                        </member>
                        <member>
                            <Weight>
                                <Unit>pounds</Unit>
                                <Value>5.5</Value>
                            </Weight>
                            <TrackingId>1Z8V016A0360430477</TrackingId>
                            <CarrierName>UNITED_PARCEL_SERVICE_INC</CarrierName>
                            <Dimensions>
                                <Unit>inches</Unit>
                                <Height>15</Height>
                                <Width>15</Width>
                                <Length>15</Length>
                            </Dimensions>
                            <PackageStatus>SHIPPED</PackageStatus>
                        </member>
                    </PackageList>
                </PartneredSmallParcelData>
            </TransportDetails>
            <TransportResult>
                <TransportStatus>CONFIRMED</TransportStatus>
            </TransportResult>
            <TransportHeader>
                <ShipmentType>SP</ShipmentType>
                <ShipmentId>FBAQF72K</ShipmentId>
                <SellerId>A135KKEKWF1J56</SellerId>
                <IsPartnered>true</IsPartnered>
            </TransportHeader>
        </TransportContent>
    </GetTransportContentResult>
    <ResponseMetadata>
        <RequestId>9708430a-4010-478e-aafc-053979329978</RequestId>
    </ResponseMetadata>
</GetTransportContentResponse>
```

[↑
Top](#Examples)

</div>

</div>

<div id="Examples__SP_non-Amazon-patnered_request" class="section">

### Example query request (<span class="ph">Small Parcel</span>, non-Amazon-partnered carrier shipment)

<span class="ph">For information about standard request requirements,
see [Required request
parameters](../dev_guide/DG_RequiredRequestParameters.md).</span>

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="sectiondiv content">

``` pre codeblock
http://mws.amazonaws.com/FulfillmentInboundShipment/2010-10-01
  ?AWSAccessKeyId=AKIAEIAL5QODNGQCJLSA
  &Action=GetTransportContent
  &MWSAuthToken=amzn.mws.4ea38b7b-f563-7709-4bae-87aeaEXAMPLE
  &SellerId=A135KKEKWF1J56
  &SignatureVersion=2
  &Timestamp=2013-08-09T18%3A35%3A08Z
  &Version=2010-10-01
  &SignatureMethod=HmacSHA256
  &ShipmentId=FBAQ6QBP
```

[↑ Top](#Examples)

</div>

</div>

<div id="Examples__SP_non-Amazon-patnered_response" class="section">

### Example response

<span class="ph">For information about standard response formatting, see
[Response format](../dev_guide/DG_ResponseFormat.md).</span>

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="sectiondiv content">

``` pre codeblock
<?xml version="1.0"?>
<GetTransportContentResponse 
    xmlns="http://mws.amazonaws.com/FulfillmentInboundShipment/2010-10-01/">
    <GetTransportContentResult>
        <TransportContent>
            <TransportDetails>
                <NonPartneredSmallParcelData>
                    <PackageList>
                        <member>
                            <TrackingId>1Z6Y68W00342402864</TrackingId>
                            <CarrierName>UNITED PARCEL SERVICE INC</CarrierName>
                            <PackageStatus>SHIPPED</PackageStatus>
                        </member>
                    </PackageList>
                </NonPartneredSmallParcelData>
            </TransportDetails>
            <TransportResult>
                <TransportStatus>WORKING</TransportStatus>
            </TransportResult>
            <TransportHeader>
                <ShipmentType>SP</ShipmentType>
                <ShipmentId>FBAQ6QBP</ShipmentId>
                <SellerId>A135KKEKWF1J56</SellerId>
                <IsPartnered>false</IsPartnered>
            </TransportHeader>
        </TransportContent>
    </GetTransportContentResult>
    <ResponseMetadata>
        <RequestId>89a965c3-1af7-41e3-9152-44cf0affd34b</RequestId>
    </ResponseMetadata>
</GetTransportContentResponse>
```

[↑
Top](#Examples)

</div>

</div>

<div id="Examples__LTL_non-Amazon-patnered_request" class="section">

### Example query request (<span class="ph">Less Than Truckload/Full Truckload (LTL/FTL)</span>, non-Amazon-partnered carrier shipment)

<span class="ph">For information about standard request requirements,
see [Required request
parameters](../dev_guide/DG_RequiredRequestParameters.md).</span>

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="sectiondiv content">

``` pre codeblock
http://mws.amazonaws.com/FulfillmentInboundShipment/2010-10-01
  ?AWSAccessKeyId=AKIAEIAL5QODNGQCJLSA
  &Action=GetTransportContent
  &MWSAuthToken=amzn.mws.4ea38b7b-f563-7709-4bae-87aeaEXAMPLE
  &SellerId=A135KKEKWF1J56
  &SignatureVersion=2
  &Timestamp=2013-08-09T18%3A51%3A01Z
  &Version=2010-10-01
  &SignatureMethod=HmacSHA256
  &ShipmentId=FBAQFGQZ
```

[↑ Top](#Examples)

</div>

</div>

<div id="Examples__LTL_non-Amazon-patnered_response" class="section">

### Example response

<span class="ph">For information about standard response formatting, see
[Response format](../dev_guide/DG_ResponseFormat.md).</span>

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="sectiondiv content">

``` pre codeblock
<?xml version="1.0"?>
<GetTransportContentResponse 
    xmlns="http://mws.amazonaws.com/FulfillmentInboundShipment/2010-10-01/">
    <GetTransportContentResult>
        <TransportContent>
            <TransportDetails>
                <NonPartneredLtlData>
                    <CarrierName>ABF FREIGHT SYSTEM INC</CarrierName>
                    <ProNumber>123456</ProNumber>
                </NonPartneredLtlData>
            </TransportDetails>
            <TransportResult>
                <TransportStatus>WORKING</TransportStatus>
            </TransportResult>
            <TransportHeader>
                <ShipmentType>LTL</ShipmentType>
                <ShipmentId>FBAQFGQZ</ShipmentId>
                <SellerId>A135KKEKWF1J56</SellerId>
                <IsPartnered>false</IsPartnered>
            </TransportHeader>
        </TransportContent>
    </GetTransportContentResult>
    <ResponseMetadata>
        <RequestId>5e2ca38a-9f96-4ef7-ae82-3afb8dc224d4</RequestId>
    </ResponseMetadata>
</GetTransportContentResponse>
```

[↑ Top](#Examples)

</div>

</div>

</div>

</div>

<div id="RelatedTopics" class="topic nested1">

## Related topics

<div class="body">

[Fulfillment Inbound Shipment
API](../fba_inbound/FBAInbound_Overview.md)

[PutTransportContent](../fba_inbound/FBAInbound_PutTransportContent.md)

[EstimateTransportRequest](FBAInbound_EstimateTransportRequest.md "Requests an estimate of the shipping cost for an inbound shipment.")

[ConfirmTransportRequest](FBAInbound_ConfirmTransportRequest.md "Confirms that you accept the Amazon-partnered shipping estimate and you request that the Amazon-partnered carrier ship your inbound shipment.")

[VoidTransportRequest](FBAInbound_VoidTransportRequest.md "Voids a previously-confirmed request to ship your inbound shipment using an Amazon-partnered carrier.")

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
