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

<div id="FBAOutbound_ListAllFulfillmentOrdersByNextToken"
class="nested0">

# ListAllFulfillmentOrdersByNextToken

<div class="body">

<span class="ph">Returns the next page of fulfillment orders using the
<span class="keyword parmname">NextToken</span> parameter.</span>

</div>

<div id="Description" class="topic concept nested1">

## Description

<div class="body conbody">

The <span
class="keyword apiname">ListAllFulfillmentOrdersByNextToken</span>
operation returns the next page of fulfillment orders using the <span
class="keyword parmname">NextToken</span> value that was returned by
your previous request to either <span
class="keyword apiname">ListAllFulfillmentOrders</span> or <span
class="keyword apiname">ListAllFulfillmentOrdersByNextToken</span>. If
<span class="keyword parmname">NextToken</span> is not returned, there
are no more pages to return.

<div class="section">

### Availability

This operation is available in all marketplaces except Brazil.

</div>

<div class="section">

### Throttling

The <span class="keyword apiname">ListAllFulfillmentOrders</span> and
<span class="keyword apiname">ListAllFulfillmentOrdersByNextToken</span>
operations together share a **maximum request quota** of 30 and a
**restore rate** of two requests every second. <span class="ph">For
definitions of throttling terminology and for a complete explanation of
throttling, see
<a href="../dev_guide/DG_Throttling.md" class="xref">Throttling: Limits to how often you can submit requests</a>
in the <span class="ph">Amazon MWS Developer Guide</span>.</span>

</div>

</div>

</div>

<div id="RequestParameters" class="topic reference nested1">

## Request parameters

<div class="body refbody">

<div class="tablenoborder">

| Name                                            | Description                                                                                                                                                                                                           | Required | Values                                  |
|-------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------|-----------------------------------------|
| <span class="keyword parmname">NextToken</span> | A string token returned in the response of your previous request to either <span class="keyword apiname">ListAllFulfillmentOrders</span> or <span class="keyword apiname">ListAllFulfillmentOrdersByNextToken</span>. | Yes      | <span class="ph">Type: xs:string</span> |

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
<th id="d114363e213" class="entry" data-valign="top" width="25.380710659898476%">Name</th>
<th id="d114363e216" class="entry" data-valign="top" width="74.61928934010153%">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="25.380710659898476%" headers="d114363e213 "><span class="keyword parmname">NextToken</span></td>
<td class="entry" data-valign="top" width="74.61928934010153%" headers="d114363e216 ">A generated string used to pass information to your next request. If <span class="keyword parmname">NextToken</span> is returned, pass the value of <span class="keyword parmname">NextToken</span> to <span class="keyword apiname">ListAllFulfillmentOrdersByNextToken</span>. If <span class="keyword parmname">NextToken</span> is not returned, there are no more fulfillment orders to return.
<p>Optional</p>
<span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="25.380710659898476%" headers="d114363e213 "><span class="keyword parmname">FulfillmentOrders</span></td>
<td class="entry" data-valign="top" width="74.61928934010153%" headers="d114363e216 ">General fulfillment order information, including order status.
<p>Type: List of <a href="FBAOutbound_Datatypes.md#FulfillmentOrder" class="xref" title="General information about a fulfillment order, including its status.">FulfillmentOrder</a></p></td>
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

``` pre
http://mws.amazonaws.com/FulfillmentOutboundShipment/2010-10-01/
  ?Action=ListAllFulfillmentOrdersByNextToken
  &NextToken=H4sIAAAAAAAAAC2MwQqDMBBEfyXsPXU3ITUEEyjFQ6FWUNt7sbEIal
H7%2F3SVwjLLG3iTzeLjoe6n9xAv3ziWyysuIFoPCjGVqCWmDaZOWYckkRNB9B4MgZj4M
Y0euuewRhBxswhZkaQbUk5pZ%2BiA1nK1m%2Bu%2BayXxlmnwyCXffzdkXTiXt%2Fpe5F
WWdBtWeVE%2BTtedkjn8AF4nvJquAAAA
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

``` pre
<?xml version="1.0"?>
<ListAllFulfillmentOrdersByNextTokenResponse
    xmlns="http://mws.amazonaws.com/FulfillmentOutboundShipment/2010-10-01/">
    <NextToken>H4sIAAAAAAAAAC2M0QqCQBBFf2WZ982ZXVeHxRUifMsEs96jVhIq0fX/ab
        VguMw5cG8xidFBGJanXHxY5Dg//Px7ibI0N0YTMacg7g4UYha1VNyRschWGxkTEcTggJBAf
        ByYiG8H/e0VPAi/1ggl5pJ0R8oqbQ3tkDmqrRq2YV6H0XSYRRnvP1wWfdlWdXP
        dH4ukX+nQnM6Xumo3TKbyC+hpQInCAAAA</NextToken>
    <ListAllFulfillmentOrdersByNextTokenResult>
        <FulfillmentOrders>
            <member>
                <ShippingSpeedCategory>Standard</ShippingSpeedCategory>
                <StatusUpdatedDateTime>2011-01-02T07:49:35Z </StatusUpdatedDateTime>
                <SellerFulfillmentOrderId>SampleOrderId </SellerFulfillmentOrderId>
                <DestinationAddress>
                    <PostalCode>98101</PostalCode>
                    <PhoneNumber>123-456-7890</PhoneNumber>
                    <Name>Fred Jones</Name>
                    <CountryCode>US</CountryCode>
                    <Line1>Amazon.com</Line1>
                    <StateOrProvinceCode>WA</StateOrProvinceCode>
                    <City>Seattle</City>
                </DestinationAddress>
                <DisplayableOrderDateTime>2011-01-08T08:00:00Z </DisplayableOrderDateTime>
                <FulfillmentPolicy>FillAllAvailable</FulfillmentPolicy>
                <ReceivedDateTime>2011-01-08T17:23:20Z</ReceivedDateTime>
                <DisplayableOrderId>MinimalOrder</DisplayableOrderId>
                <DisplayableOrderComment>Sample order comment </DisplayableOrderComment>
                <FulfillmentOrderStatus>PROCESSING</FulfillmentOrderStatus>
            </member>
            <member>
                <ShippingSpeedCategory>Standard</ShippingSpeedCategory>
                <StatusUpdatedDateTime>2011-02-20T19:00:07Z </StatusUpdatedDateTime>
                <SellerFulfillmentOrderId>SampleOrderId </SellerFulfillmentOrderId>
                <DestinationAddress>
                    <PostalCode>98101</PostalCode>
                    <PhoneNumber>098-765-4321</PhoneNumber>
                    <Name>Mary Johnson</Name>
                    <CountryCode>US</CountryCode>
                    <Line1>456 7th Ave</Line1>
                    <StateOrProvinceCode>WA</StateOrProvinceCode>
                    <City>Seattle</City>
                </DestinationAddress>
                <DisplayableOrderDateTime>2011-02-25T07:00:00Z </DisplayableOrderDateTime>
                <FulfillmentPolicy>FillAllAvailable</FulfillmentPolicy>
                <ReceivedDateTime>2011-02-25T18:47:49Z</ReceivedDateTime>
                <DisplayableOrderId>SampleOrderID</DisplayableOrderId>
                <DisplayableOrderComment>Sample order comment. </DisplayableOrderComment>
                <FulfillmentOrderStatus>PROCESSING</FulfillmentOrderStatus>
            </member>
        </FulfillmentOrders>
    </ListAllFulfillmentOrdersByNextTokenResult>
    <ResponseMetadata>
        <RequestId>f14964dd-8e79-11df-929f-87c80302f8f6</RequestId>
    </ResponseMetadata>
</ListAllFulfillmentOrdersByNextTokenResponse>
```

<a href="#Examples" class="xref">↑ Top</a>

</div>

</div>

</div>

</div>

<div id="RelatedTopics" class="topic nested1">

## Related topics

<div class="body">

<a href="../dev_guide/DG_NextToken.md" class="xref">Using NextToken to request additional pages</a>

<a href="FBAOutbound_Overview.md" class="xref">What you should know about the Fulfillment Outbound Shipment API section</a>

<a href="FBAOutbound_ListAllFulfillmentOrders.md" class="xref" title="Returns a list of fulfillment orders fulfilled after (or at) a specified date.">ListAllFulfillmentOrders</a>

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
