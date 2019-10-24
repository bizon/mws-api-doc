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

<div id="FBAInbound_ListInboundShipmentsByNextToken" class="nested0">

# ListInboundShipmentsByNextToken

<div class="body">

<span class="ph">Returns the next page of inbound shipments using the
<span class="keyword parmname">NextToken</span> parameter.</span>

</div>

<div id="Description" class="topic concept nested1">

## Description

<div class="body conbody">

<div class="section">

The <span class="keyword apiname">ListInboundShipmentsByNextToken</span>
operation returns the next page of inbound shipments using the
<span class="keyword parmname">NextToken</span> value that was returned
by your previous request to either
<span class="keyword apiname">ListInboundShipments</span> or
<span class="keyword apiname">ListInboundShipmentsByNextToken</span>. If
<span class="keyword parmname">NextToken</span> is not returned, there
are no more pages to return.

</div>

<div class="section">

### Availability

This operation is available in all marketplaces except Brazil.

</div>

<div class="section">

### Throttling

The <span class="keyword apiname">ListInboundShipments</span> and
<span class="keyword apiname">ListInboundShipmentsByNextToken</span>
operations together share a **maximum request quota** of 30 and a
**restore rate** of two requests every second. <span class="ph">For
definitions of throttling terminology and for a complete explanation of
throttling, see [Throttling: Limits to how often you can submit
requests](../dev_guide/DG_Throttling.html) in the
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
parameters](../dev_guide/DG_RequiredRequestParameters.html) in the
<span class="ph">Amazon MWS Developer
Guide</span>.</span>

</div>

<div class="tablenoborder">

| Name                                            | Description                                                                                                                                                                                                   | Required | Values                                  |
| ----------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------- | --------------------------------------- |
| <span class="keyword parmname">NextToken</span> | A string token returned in the response of your previous request to either <span class="keyword apiname">ListInboundShipments</span> or <span class="keyword apiname">ListInboundShipmentsByNextToken</span>. | Yes      | <span class="ph">Type: xs:string</span> |

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
<td><span class="keyword parmname">NextToken</span></td>
<td>A generated string used to pass information to your next request. If <span class="keyword parmname">NextToken</span> is returned, pass the value of <span class="keyword parmname">NextToken</span> to <span class="keyword apiname">ListInboundShipmentsByNextToken</span>. If <span class="keyword parmname">NextToken</span> is not returned, there are no more inbound shipments to return.
<p>Optional</p>
<span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">ShipmentData</span></td>
<td>Information about your inbound shipments. The <span class="keyword parmname">ShipmentData</span> response element does not include item information.
<p>Type: <a href="FBAInbound_Datatypes.html#InboundShipmentInfo" class="xref" title="Information about your inbound shipments. Returned by the ListInboundShipments operation.">InboundShipmentInfo</a></p></td>
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
http://mws.amazonaws.com/FulfillmentInboundShipment/2010-10-01/
  ?Action=ListInboundShipmentsByNextToken
  &Version=2010-10-01
  &AWSAccessKeyId=1QZHP8EXAMPLE1N5R44N
  &MWSAuthToken=amzn.mws.4ea38b7b-f563-7709-4bae-87aeaEXAMPLE
  &SignatureVersion=2
  &SignatureMethod=HmacSHA256
  &Signature=VY6sqvdk01VEG0VEXAMPLEh4oj3
  &Timestamp=2015-12-02T02:40:36Z
  &SellerId=1234567890
  &NextToken=QVYyVTY5NUVaQzBDWHw0ODh8MjAwfCB8IHw1OTM0MDZ8IHwwLDJ8
  IHwgfCB8IHx0cnVl
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
<ListInboundShipmentsByNextTokenResponse xmlns="http://mws.amazonaws.com/FulfillmentInboundShipment/2010-10-01/">
    <ListInboundShipmentsByNextTokenResult>
        <NextToken>QVYyVTY5NUVaQzBDWHw0ODh8MjAwfCB8IHw1OTM0MDZ8IHwwLDJ8
            IHwgfCB8IHx0cnVl</NextToken>
        <ShipmentData>
            <member>
                <ShipFromAddress>
                    <PostalCode>98101</PostalCode>
                    <Name>Joan Doe</Name>
                    <CountryCode>US</CountryCode>
                    <StateOrProvinceCode>WA</StateOrProvinceCode>
                    <AddressLine2>Apt 2</AddressLine2>
                    <AddressLine1>876 Elm St</AddressLine1>
                    <City>Seattle</City>
                </ShipFromAddress>
                <AreCasesRequired>false</AreCasesRequired>
                <ShipmentId>SSF85DGIZZ7PKF</ShipmentId>
                <ShipmentStatus>WORKING</ShipmentStatus>
                <ShipmentName>ExampleShipmentName4</ShipmentName>
                <DestinationFulfillmentCenterId>RNO2
                </DestinationFulfillmentCenterId>
                <LabelPrepType>SELLER_LABEL</LabelPrepType>
            </member>
            <member>
                <ShipFromAddress>
                    <PostalCode>98101</PostalCode>
                    <Name>Joan Doe</Name>
                    <CountryCode>US</CountryCode>
                    <StateOrProvinceCode>WA</StateOrProvinceCode>
                    <AddressLine2>Apt 2</AddressLine2>
                    <AddressLine1>876 Elm St</AddressLine1>
                    <City>Seattle</City>
                </ShipFromAddress>
                <AreCasesRequired>true</AreCasesRequired>
                <ShipmentId>SSF85DGIZZ7PL3</ShipmentId>
                <ShipmentStatus>SHIPPED</ShipmentStatus>
                <ShipmentName>ExampleShipmentName5</ShipmentName>
                <DestinationFulfillmentCenterId>RNO2
                </DestinationFulfillmentCenterId>
                <LabelPrepType>SELLER_LABEL</LabelPrepType>
                <ConfirmedNeedByDate>2015-12-30</ConfirmedNeedByDate>
            </member>
        </ShipmentData>
    </ListInboundShipmentsByNextTokenResult>
    <ResponseMetadata>
        <RequestId>8547a35c-8e70-11df-8af1-5bf2881764d8</RequestId>
    </ResponseMetadata>
</ListInboundShipmentsByNextTokenResponse>
```

[↑ Top](#Examples)

</div>

</div>

</div>

</div>

<div id="RelatedTopics" class="topic nested1">

## Related topics

<div class="body">

[Using NextToken to request additional
pages](../dev_guide/DG_NextToken.html)

[Fulfillment Inbound Shipment
API](../fba_inbound/FBAInbound_Overview.html)

[ListInboundShipments](FBAInbound_ListInboundShipments.html "Returns a list of inbound shipments based on criteria that you specify.")

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