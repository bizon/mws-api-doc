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

<div id="FBAInbound_ListInboundShipmentItemsByNextToken" class="nested0">

# ListInboundShipmentItemsByNextToken

<div class="body">

<span class="ph">Returns the next page of inbound shipment items using
the <span class="keyword parmname">NextToken</span> parameter.</span>

</div>

<div id="Description" class="topic concept nested1">

## Description

<div class="body conbody">

<div class="section">

The
<span class="keyword apiname">ListInboundShipmentItemsByNextToken</span>
operation returns the next page of inbound shipment items using the
<span class="keyword parmname">NextToken</span> value that was returned
by your previous request to either
<span class="keyword apiname">ListInboundShipmentItems</span> or
<span class="keyword apiname">ListInboundShipmentItemsByNextToken</span>.
If <span class="keyword parmname">NextToken</span> is not returned,
there are no more pages to return.

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

| Name                                            | Description                                                                                                                                                                                                           | Required | Values                                  |
| ----------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------- | --------------------------------------- |
| <span class="keyword parmname">NextToken</span> | A string token returned in the response of your previous request to either <span class="keyword apiname">ListInboundShipmentItems</span> or <span class="keyword apiname">ListInboundShipmentItemsByNextToken</span>. | Yes      | <span class="ph">Type: xs:string</span> |

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
<td>A generated string used to pass information to your next request. If <span class="keyword parmname">NextToken</span> is returned, pass the value of <span class="keyword parmname">NextToken</span> to <span class="keyword apiname">ListInboundShipmentItemsByNextToken</span>. If <span class="keyword parmname">NextToken</span> is not returned, there are no more inbound shipments to return.
<p>Optional</p>
<span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">ItemData</span></td>
<td>Item information for an inbound shipment. Includes <span class="keyword parmname">ShipmentId</span>, <span class="keyword parmname">SellerSKU</span>, <span class="keyword parmname">FulfillmentNetworkSKU</span>, <span class="keyword parmname">QuantityShipped</span>, and <span class="keyword parmname">QuantityReceived</span>.
<p>Type: <a href="FBAInbound_Datatypes.html#InboundShipmentItem" class="xref" title="Item information for an inbound shipment. Submitted with a call to the CreateInboundShipment or UpdateInboundShipment operation.">InboundShipmentItem</a></p></td>
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
https://mws.amazonaws.com/FulfillmentInboundShipment/2010-10-01
?AWSAccessKeyId=AKIAEIAL5QODNGQCJLSA
&Action=ListInboundShipmentItemsByNextToken
&SellerId=A135KKEKWF1J56
&SignatureVersion=2
&Timestamp=2015-11-29T22%3A26%3A46Z
&Version=2010-10-01
&Signature=uVKj7aPg9n31AS2%2FOhVeWkGsLTHwEELnJ8AjD%2F9qbms%3D
&SignatureMethod=HmacSHA256
&NextToken=TOKEN
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
<?xml version="1.0" encoding="UTF-8"?>
<ListInboundShipmentItemsByNextTokenResponse
  xmlns="http://mws.amazonaws.com/FulfillmentInboundShipment/2010-10-01/">
  <ListInboundShipmentItemsByNextTokenResult>
    <ItemData>
      <member>
        <QuantityShipped>2</QuantityShipped>
        <ShipmentId>FBA0000001</ShipmentId>
        <FulfillmentNetworkSKU>FNSKU1</FulfillmentNetworkSKU>
        <SellerSKU>SKU00001</SellerSKU>
        <QuantityReceived>0</QuantityReceived>
        <QuantityInCase>0</QuantityInCase>
        <PrepDetailsList>
          <PrepDetails>
            <PrepInstruction>Taping</PrepInstruction>
            <PrepOwner>AMAZON</PrepOwner> 
          </PrepDetails>
          <PrepDetails>
            <PrepInstruction>Polybagging</PrepInstruction>
            <PrepOwner>AMAZON</PrepOwner> 
          </PrepDetails>
        </PrepDetailsList>
      </member>
    </ItemData>
</ListInboundShipmentItemsByNextTokenResult>
<ResponseMetadata>
  <RequestId>9581f746-c8fb-42ca-ad20-42f8a5333a1b</RequestId>
</ResponseMetadata>
</ListInboundShipmentItemsByNextTokenResponse>
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

[ListInboundShipmentItems](FBAInbound_ListInboundShipmentItems.html "Returns a list of items in a specified inbound shipment, or a list of items that were updated within a specified time frame.")

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