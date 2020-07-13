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

<div id="FBAInbound_ListInboundShipmentItems" class="nested0">

# ListInboundShipmentItems

<div class="body">

<span class="ph">Returns a list of items in a specified inbound
shipment, or a list of items that were updated within a specified time
frame.</span>

</div>

<div id="Description" class="topic concept nested1">

## Description

<div class="body conbody">

<div class="section">

The <span class="keyword apiname">ListInboundShipmentItems</span>
operation returns a list of items contained in an inbound shipment that
you specify with a <span class="keyword parmname">ShipmentId</span>.
Alternatively, if you submit the
<span class="keyword parmname">LastUpdatedAfter</span> and
<span class="keyword parmname">LastUpdatedBefore</span> request
parameters, the
<span class="keyword apiname">ListInboundShipmentItems</span> operation
returns inbound shipment items based on when the items were last
updated. Note that if you specify the
<span class="keyword parmname">ShipmentId</span>, then the
<span class="keyword parmname">LastUpdatedAfter</span> and
<span class="keyword parmname">LastUpdatedBefore</span> request
parameters are ignored.

You can obtain <span class="keyword parmname">ShipmentId</span> values
for a list of inbound shipments by submitting the
<span class="keyword apiname">ListInboundShipments</span> operation.

The <span class="keyword apiname">ListInboundShipmentItems</span>
operation returns a maximum of 200 inbound shipment items. If there are
additional inbound shipment items to return,
<span class="keyword parmname">NextToken</span> is returned in the
response. To retrieve all of the inbound shipment items, pass the value
of <span class="keyword parmname">NextToken</span> to the
<span class="keyword apiname">ListInboundShipmentItemsByNextToken</span>
operation and repeat until
<span class="keyword parmname">NextToken</span> is no longer returned.

</div>

<div class="section">

### Availability

This operation is available in all marketplaces except Brazil.

</div>

<div class="section">

### Throttling

The <span class="keyword apiname">ListInboundShipmentItems</span> and
<span class="keyword apiname">ListInboundShipmentItemsByNextToken</span>
operations together share a **maximum request quota** of 30 and a
**restore rate** of two requests every second. <span class="ph">For
definitions of throttling terminology and for a complete explanation of
throttling, see [Throttling: Limits to how often you can submit
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
<span class="ph">Amazon MWS Developer Guide</span>.</span>

</div>

<div class="tablenoborder">

<table id="RequestParameters__RequestParametersTable" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
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
<td>A shipment identifier used for selecting items in a specific inbound shipment.</td>
<td>Yes, if <span class="keyword parmname">LastUpdatedAfter</span> and <span class="keyword parmname">LastUpdatedBefore</span> are not specified. If <span class="keyword parmname">ShipmentId</span> is specified, <span class="keyword parmname">LastUpdatedBefore</span> and <span class="keyword parmname">LastUpdatedAfter</span> are ignored.</td>
<td><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">LastUpdatedAfter</span></td>
<td>A date used for selecting inbound shipment items that were last updated after (or at) a specified time. The selection includes updates made by Amazon and by the seller.</td>
<td>Yes, if <span class="keyword parmname">ShipmentId</span> is not specified.
<p>If <span class="keyword parmname">LastUpdatedBefore</span> is specified, then <span class="keyword parmname">LastUpdatedAfter</span> must be specified.</p></td>
<td>Must be earlier than <span class="keyword parmname">LastUpdatedBefore</span>.
<p>In <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>.</p>
<p><span class="ph">Type: xs:dateTime</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">LastUpdatedBefore</span></td>
<td>A date used for selecting inbound shipment items that were last updated before (or at) a specified time. The selection includes updates made by Amazon and by the seller.</td>
<td>Yes, if <span class="keyword parmname">ShipmentId</span> is not specified.
<p>If <span class="keyword parmname">LastUpdatedAfter</span> is specified, then <span class="keyword parmname">LastUpdatedBefore</span> must be specified.</p></td>
<td>Must be later than <span class="keyword parmname">LastUpdatedAfter</span>.
<p>In <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>.</p>
<p><span class="ph">Type: xs:dateTime</span></p></td>
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

<table id="ResponseElements__ResponseElementsTable" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
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
<td>A generated string used to pass information to your next request. If <span class="keyword parmname">NextToken</span> is returned, pass the value of <span class="keyword parmname">NextToken</span> to <span class="keyword apiname">ListInboundShipmentItemsByNextToken</span>. If <span class="keyword parmname">NextToken</span> is not returned, there are no more inbound shipments to return.
<p>Optional</p>
<span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">ItemData</span></td>
<td>Item information for an inbound shipment. Includes <span class="keyword parmname">ShipmentId</span>, <span class="keyword parmname">SellerSKU</span>, <span class="keyword parmname">FulfillmentNetworkSKU</span>, <span class="keyword parmname">QuantityShipped</span>, and <span class="keyword parmname">QuantityReceived</span>.
<p>Type: <a href="FBAInbound_Datatypes.md#InboundShipmentItem" class="xref" title="Item information for an inbound shipment. Submitted with a call to the CreateInboundShipment or UpdateInboundShipment operation.">InboundShipmentItem</a></p></td>
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
http://mws.amazonaws.com/FulfillmentInboundShipment/2010-10-01/
  ?Action=ListInboundShipmentItems
  &Version=2010-10-01
  &AWSAccessKeyId=1QZHP81EXAMPLEN5R44N
  &MWSAuthToken=amzn.mws.4ea38b7b-f563-7709-4bae-87aeaEXAMPLE
  &SignatureVersion=2
  &SignatureMethod=HmacSHA256
  &Signature=VY6sqvdk01VeEXAMPLEG0Vh4oj3
  &Timestamp=2015-12-01T02:40:36Z
  &SellerId=1234567890
  &ShipmentId=SSF85DGIZZ3OF1
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
<ListInboundShipmentItemsResponse xmlns="http://mws.amazonaws.com/FulfillmentInboundShipment/2010-10-01/">
    <ListInboundShipmentItemsResult>
        <ItemData>
            <member>
                <ShipmentId>SSF85DGIZZ3OF1</ShipmentId>
                <SellerSKU>SampleSKU1</SellerSKU>
                <QuantityShipped>3</QuantityShipped>
                <QuantityInCase>0</QuantityInCase>
                <QuantityReceived>0</QuantityReceived>
                <FulfillmentNetworkSKU>B000FADVPQ</FulfillmentNetworkSKU>
                <ReleaseDate>2014-12-31</ReleaseDate>
            </member>
            <member>
                <ShipmentId>SSF85DGIZZ3OF1</ShipmentId>
                <SellerSKU>SampleSKU2</SellerSKU>
                <QuantityShipped>10</QuantityShipped>
                <QuantityInCase>0</QuantityInCase>
                <QuantityReceived>0</QuantityReceived>
                <FulfillmentNetworkSKU>B0011VECH4</FulfillmentNetworkSKU>
            </member>
        </ItemData>
    </ListInboundShipmentItemsResult>
    <ResponseMetadata>
        <RequestId>ffce8932-8e69-11df-8af1-5bf2881764d8</RequestId>
    </ResponseMetadata>
</ListInboundShipmentItemsResponse>
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
pages](../dev_guide/DG_NextToken.md)

[Fulfillment Inbound Shipment
API](../fba_inbound/FBAInbound_Overview.md)

[ListInboundShipmentsByNextToken](FBAInbound_ListInboundShipmentsByNextToken.md "Returns the next page of inbound shipments using the NextToken parameter.")

[ListInboundShipments](FBAInbound_ListInboundShipments.md "Returns a list of inbound shipments based on criteria that you specify.")

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
