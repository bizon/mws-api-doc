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

<div id="FBAOutbound_GetPackageTrackingDetails" class="nested0">

# GetPackageTrackingDetails

<div class="body">

<span class="ph">Returns delivery tracking information for a package in
an outbound shipment for a Multi-Channel Fulfillment order.</span>

</div>

<div id="Description" class="topic concept nested1">

## Description

<div class="body conbody">

The <span class="keyword apiname">GetPackageTrackingDetails</span>
operation returns delivery tracking information for a package in an
outbound shipment, based on the
<span class="keyword parmname">PackageNumber</span> that you specify.
This operation returns the current tracking status of the package as
well as a list of tracking events.

<div class="section">

### Availability

This operation is available in all marketplaces except Brazil.

</div>

<div class="section">

### Throttling

The <span class="keyword apiname">GetPackageTrackingDetails</span>
operation has a **maximum request quota** of 30 and a **restore rate**
of two requests every second. <span class="ph">For definitions of
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

| Name                                                | Description                                                                                                                                                                                        | Required | Values                               |
| --------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------- | ------------------------------------ |
| <span class="keyword parmname">PackageNumber</span> | Unencrypted package identifier returned by the [GetFulfillmentOrder](FBAOutbound_GetFulfillmentOrder.md "Returns a fulfillment order based on a specified SellerFulfillmentOrderId.") operation. | Yes      | <span class="ph">Type: xs:int</span> |

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
<td><span class="keyword parmname">PackageNumber</span></td>
<td>The package identifier.
<p><span class="ph">Type: xs:int</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">TrackingNumber</span></td>
<td>The tracking number for the package.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">CarrierCode</span></td>
<td>The name of the carrier.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">CarrierPhoneNumber</span></td>
<td>The phone number of the carrier.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">CarrierURL</span></td>
<td>The URL of the carrier’s website.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">ShipDate</span></td>
<td>The shipping date for the package.
<p><span class="ph">Type: xs:dateTime</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">ShipToAddress</span></td>
<td>The destination city for the package.
<p>Type: <a href="FBAOutbound_Datatypes.md#TrackingAddress" class="xref" title="Address information for tracking the package.">TrackingAddress</a></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">CurrentStatus</span></td>
<td>The current delivery status of the package.
<p><span class="keyword parmname">CurrentStatus</span> values:</p>
<ul>
<li><var class="keyword varname">IN_TRANSIT</var> - In transit to the destination address.</li>
<li><var class="keyword varname">DELIVERED</var> - Delivered to the destination address.</li>
<li><var class="keyword varname">RETURNING</var> - In the process of being returned to <span class="ph">Amazon's fulfillment network</span>.</li>
<li><var class="keyword varname">RETURNED</var> - Returned to <span class="ph">Amazon's fulfillment network</span>.</li>
<li><var class="keyword varname">UNDELIVERABLE</var> - Undeliverable because package was lost or destroyed.</li>
<li><var class="keyword varname">DELAYED</var> - Delayed.</li>
<li><var class="keyword varname">AVAILABLE_FOR_PICKUP</var> - Available for pickup.</li>
<li><var class="keyword varname">CUSTOMER_ACTION </var> - Requires customer action.</li>
</ul>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">SignedForBy</span></td>
<td>The name of the person who signed for the package.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">EstimatedArrivalDate</span></td>
<td>The estimated arrival date.
<p><span class="ph">Type: xs:dateTime</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">TrackingEvents</span></td>
<td>A list of tracking events.
<p>Type: List of <a href="FBAOutbound_Datatypes.md#TrackingEvent" class="xref" title="Information for tracking package deliveries.">TrackingEvent</a></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">AdditionalLocationInfo</span></td>
<td>Additional location information.
<p><span class="keyword parmname">AdditionalLocationInfo</span> values:</p>
<ul>
<li><var class="keyword varname">AS_INSTRUCTED</var> - As instructed.</li>
<li><var class="keyword varname">CARPORT</var> - Carport.</li>
<li><var class="keyword varname">CUSTOMER_PICKUP</var> - Picked up by customer.</li>
<li><var class="keyword varname">DECK</var> - Deck.</li>
<li><var class="keyword varname">DOOR_PERSON</var> - Resident.</li>
<li><var class="keyword varname">FRONT_DESK</var> - Front desk.</li>
<li><var class="keyword varname">FRONT_DOOR</var> - Front door.</li>
<li><var class="keyword varname">GARAGE</var> - Garage.</li>
<li><var class="keyword varname">GUARD</var> - Residential guard.</li>
<li><var class="keyword varname">MAIL_ROOM</var> - Mail room.</li>
<li><var class="keyword varname">MAIL_SLOT</var> - Mail slot.</li>
<li><var class="keyword varname">MAILBOX</var> - Mailbox.</li>
<li><var class="keyword varname">MC_BOY</var> - Delivered to male child.</li>
<li><var class="keyword varname">MC_GIRL</var> - Delivered to female child.</li>
<li><var class="keyword varname">MC_MAN</var> - Delivered to male adult.</li>
<li><var class="keyword varname">MC_WOMAN</var> - Delivered to female adult.</li>
<li><var class="keyword varname">NEIGHBOR</var> - Delivered to neighbor.</li>
<li><var class="keyword varname">OFFICE</var> - Office.</li>
<li><var class="keyword varname">OUTBUILDING</var> - Outbuilding.</li>
<li><var class="keyword varname">PATIO</var> - Patio.</li>
<li><var class="keyword varname">PORCH</var> - Porch.</li>
<li><var class="keyword varname">REAR_DOOR</var> - Rear door.</li>
<li><var class="keyword varname">RECEPTIONIST</var> - Receptionist.</li>
<li><var class="keyword varname">RECEIVER</var> - Resident.</li>
<li><var class="keyword varname">SECURE_LOCATION</var> - Secure location.</li>
<li><var class="keyword varname">SIDE_DOOR</var> - Side door.</li>
</ul>
<p><span class="ph">Type: xs:string</span></p></td>
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
http://mws.amazonservices.com/FulfillmentOutboundShipment/2010-10-01/
  ?Action=GetPackageTrackingDetails
  &Version=2010-10-01
  &AWSAccessKeyId=AKIAJGUEXAMPLEE2NVUA
  &MWSAuthToken=amzn.mws.4ea38b7b-f563-7709-4bae-87aeaEXAMPLE
  &SignatureVersion=2
  &SignatureMethod=HmacSHA256
  &Signature=ZRA9DR5rveSuz%2F1D18AHvoipg2BAev8yblPQ1BbEbfU%3D
  &Timestamp=2010-10-01T02:40:36Z
  &SellerId=A2NKEXAMPLEF53
  &PackageNumber=42343
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
<GetPackageTrackingDetailsResponse xmlns="http://mws.amazonaws.com/
    FulfillmentOutboundShipment/2010-10-01/">
    <GetPackageTrackingDetailsResult>
        <PackageNumber>42343</PackageNumber>
        <TrackingNumber>3A18351E0390447173</TrackingNumber>
        <CarrierCode>UPS</CarrierCode>
        <CarrierPhoneNumber>206-000-0000</CarrierPhoneNumber>
        <CarrierURL>http://www.ups.com/</CarrierURL>
        <ShipDate>2012-03-09T10:27:10Z</ShipDate>
        <ShipToAddress>
            <City>Seattle</City>
            <State>WA</State>
            <Country>US</Country>
        </ShipToAddress>
        <CurrentStatus>DELIVERED</CurrentStatus>
        <SignedForBy>John</SignedForBy>
        <EstimatedArrivalDate>2012-03-09T10:00:00Z</EstimatedArrivalDate>
        <TrackingEvents>
            <member>
                <EventDate>2012-03-09T08:48:53Z</EventDate>
                <EventAddress>
                    <City>Reno</City>
                    <State>NV</State>
                    <Country>US</Country>
                </EventAddress>
                <EventCode>EVENT_202</EventCode>
            </member>
            <member>
                <EventDate>2012-03-10T10:27:10Z</EventDate>
                <EventAddress>
                    <City>Seattle</City>
                    <State>WA</State>
                    <Country>US</Country>
                </EventAddress>
                <EventCode>EVENT_301</EventCode>
            </member>
        </TrackingEvents>
        <AdditionalLocationInfo>FRONT_DESK</AdditionalLocationInfo>
    </GetPackageTrackingDetailsResult>
    <ResponseMetaData>
        <RequestId>5e5e5694-8e76-11df-929f-87c80302f8f6</RequestId>
    </ResponseMetaData>
</GetPackageTrackingDetailsResponse>
```

[↑ Top](#Examples)

</div>

</div>

</div>

</div>

<div id="RelatedTopics" class="topic nested1">

## Related topics

<div class="body">

[What you should know about the Fulfillment Outbound Shipment API
section](FBAOutbound_Overview.md)

[GetFulfillmentOrder](FBAOutbound_GetFulfillmentOrder.md "Returns a fulfillment order based on a specified SellerFulfillmentOrderId.")

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
