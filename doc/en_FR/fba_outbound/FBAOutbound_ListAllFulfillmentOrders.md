<div id="MWSDX_noscript">

JavaScript is currently disabled in your browser.  
To use the Amazon MWS documentation, you must enable JavaScript in your
browser.

</div>

<div id="MWSDX_divtop">

[![Amazon
Services](https://images-na.ssl-images-amazon.com/images/G/08/mwsportal/fr_FR/amazonservices.gif "Amazon Services")](http://services.amazon.fr)  
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

<div id="FBAOutbound_ListAllFulfillmentOrders" class="nested0">

ListAllFulfillmentOrders
========================

<div class="body">

<span class="ph">Returns a list of fulfillment orders fulfilled after
(or at) a specified date.</span>

</div>

<div id="Description" class="topic concept nested1">

Description
-----------

<div class="body conbody">

The <span class="keyword apiname">ListAllFulfillmentOrders</span>
operation returns a list of fulfillment orders that were updated after
(or at) a specified date. This operation returns general fulfillment
order information but does not return item-level or shipment-level
information.

The <span class="keyword apiname">ListAllFulfillmentOrders</span>
operation returns a maximum of 50 fulfillment orders. If there are
additional fulfillment orders to return, <span
class="keyword parmname">NextToken</span> is returned in the response.
To retrieve all of the fulfillment orders, pass the value of <span
class="keyword parmname">NextToken</span> to the <span
class="keyword apiname">ListInboundShipmentItemsByNextToken</span>
operation and repeat until <span
class="keyword parmname">NextToken</span> is no longer returned.

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

Request parameters
------------------

<div class="body refbody">

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
<td><span class="keyword parmname">QueryStartDateTime</span></td>
<td>A date used for selecting fulfillment orders that were last updated after (or at) a specified time. An update is defined as any change in fulfillment order status, including the creation of a new fulfillment order.</td>
<td>No</td>
<td>Default: Now minus 36 hours
<p>In <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>.</p>
<p><span class="ph">Type: xs:dateTime</span></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div id="ResponseElements" class="topic reference nested1">

Response elements
-----------------

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
<td>A generated string used to pass information to your next request. If <span class="keyword parmname">NextToken</span> is returned, pass the value of <span class="keyword parmname">NextToken</span> to <span class="keyword apiname">ListAllFulfillmentOrdersByNextToken</span>. If <span class="keyword parmname">NextToken</span> is not returned, there are no more fulfillment orders to return.
<p>Optional</p>
<span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">FulfillmentOrders</span></td>
<td>General fulfillment order information, including order status.
<p>Type: List of <a href="FBAOutbound_Datatypes.md#FulfillmentOrder" class="xref" title="General information about a fulfillment order, including its status.">FulfillmentOrder</a></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div id="Examples" class="topic reference nested1">

Examples
--------

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

    http://mws.amazonaws.com/FulfillmentOutboundShipment/2010-10-01/
      ?Action=ListAllFulfillmentOrders
      &Version=2010-10-01
      &AWSAccessKeyId=AKIAJGUEXAMPLEE2NVUA
      &MWSAuthToken=amzn.mws.4ea38b7b-f563-7709-4bae-87aeaEXAMPLE
      &SignatureVersion=2
      &SignatureMethod=HmacSHA256
      &Signature=ZRA9DR5rveSuz%2F1D18AHvoipg2BAev8yblPQ1BbEbfU%3D
      &Timestamp=2010-10-01T02:40:36Z
      &SellerId=A2NKEXAMPLEF53
      &QueryStartDateTime=2008-11-05T06%3A00%3A00Z

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

    <?xml version="1.0"?>
    <ListAllFulfillmentOrdersResponse
        xmlns="http://mws.amazonaws.com/FulfillmentOutboundShipment/2010-10-01/">
        <ListAllFulfillmentOrdersResult>
            <NextToken>H4sIAAAAAAAAAC2MwQqDMBBEfyXsPXU3ITUEEyjFQ6FWUNt7sbEI
                alH7/3SVwjLLG3iTzeLjoe6n9xAv3ziWyysuIFoPCjGVqCWmDaZOWYckkRNB9B4MgZj
                4MY0euuewRhBxswhZkaQbUk5pZ+iA1nK1m+u+ayXxlmnwyCXffzdkXTiXt/pe5FWWdB
                tWeVE+Ttedkjn8AF4nvJquAAAA</NextToken>
            <FulfillmentOrders>
                <member>
                    <ShippingSpeedCategory>Standard</ShippingSpeedCategory>
                    <StatusUpdatedDateTime>2011-01-28T23:48:48Z </StatusUpdatedDateTime>
                    <NotificationEmailList>
                        <member>o8c2EXAMPLsfr7o@marketplace.amazon.com</member>
                    </NotificationEmailList>
                    <SellerFulfillmentOrderId>extern_id_1154539615776 </SellerFulfillmentOrderId>
                    <DestinationAddress>
                        <PostalCode>98101</PostalCode>
                        <PhoneNumber>321-098-7654</PhoneNumber>
                        <Name>Jane Adams</Name>
                        <CountryCode>US</CountryCode>
                        <Line1>123 Oak St.</Line1>
                        <StateOrProvinceCode>WA</StateOrProvinceCode>
                        <City>Seattle</City>
                        <Line2>Apt. 321</Line2>
                    </DestinationAddress>
                    <DisplayableOrderDateTime>2011-02-05T17:26:56Z </DisplayableOrderDateTime>
                    <FulfillmentPolicy>FillOrKill</FulfillmentPolicy>
                    <ReceivedDateTime>2011-02-06T17:26:56Z</ReceivedDateTime>
                    <DisplayableOrderId>test_displayable_id</DisplayableOrderId>
                    <DisplayableOrderComment>Sample comment text. </DisplayableOrderComment>
                    <FulfillmentOrderStatus>PROCESSING</FulfillmentOrderStatus>
                </member>
                <member>
                    <ShippingSpeedCategory>Standard</ShippingSpeedCategory>
                    <StatusUpdatedDateTime>2011-03-05T18:48:53Z </StatusUpdatedDateTime>
                    <SellerFulfillmentOrderId>external-order-ebaytime1154557376014 </SellerFulfillmentOrderId>
                    <DestinationAddress>
                        <PostalCode>98104</PostalCode>
                        <PhoneNumber>123-123-4567</PhoneNumber>
                        <Name>George Jones</Name>
                        <CountryCode>US</CountryCode>
                        <Line1>2345 5th Ave</Line1>
                        <StateOrProvinceCode>WA</StateOrProvinceCode>
                        <City>Seattle</City>
                    </DestinationAddress>
                    <DisplayableOrderDateTime>2011-03-11T18:48:52Z </DisplayableOrderDateTime>
                    <FulfillmentPolicy>FillAllAvailable</FulfillmentPolicy>
                    <ReceivedDateTime>2011-03-03T18:48:53Z</ReceivedDateTime>
                    <DisplayableOrderId>test-order-test-1159210132812 </DisplayableOrderId>
                    <DisplayableOrderComment>Sample order comment. </DisplayableOrderComment>
                    <FulfillmentOrderStatus>PLANNING</FulfillmentOrderStatus>
                </member>
            </FulfillmentOrders>
        </ListAllFulfillmentOrdersResult>
        <ResponseMetadata>
            <RequestId>7e9c8d48-8e79-11df-929f-87c80302f8f6</RequestId>
        </ResponseMetadata>
    </ListAllFulfillmentOrdersResponse>

<a href="#Examples" class="xref">↑ Top</a>

</div>

</div>

</div>

</div>

<div id="RelatedTopics" class="topic nested1">

Related topics
--------------

<div class="body">

<a href="FBAOutbound_Overview.md" class="xref">What you should know about the Fulfillment Outbound Shipment API section</a>

<a href="../dev_guide/DG_NextToken.md" class="xref">Using NextToken to request additional pages</a>

<a href="FBAOutbound_ListAllFulfillmentOrdersByNextToken.md" class="xref" title="Returns the next page of fulfillment orders using the NextToken parameter.">ListAllFulfillmentOrdersByNextToken</a>

<a href="FBAOutbound_GetFulfillmentOrder.md" class="xref" title="Returns a fulfillment order based on a specified SellerFulfillmentOrderId.">GetFulfillmentOrder</a>

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
