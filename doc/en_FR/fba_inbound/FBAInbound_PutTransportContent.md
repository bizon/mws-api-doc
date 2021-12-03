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

<div id="FBAInbound_PutTransportContent" class="nested0">

# PutTransportContent

<div class="body">

<span class="ph">Sends transportation information to Amazon about an
inbound shipment.</span>

</div>

<div id="Description" class="topic concept nested1">

## Description

<div class="body conbody">

<div class="section">

The <span class="keyword apiname">PutTransportContent</span> operation
sends transportation information to Amazon about an inbound shipment.
This includes whether an inbound shipment is a <span class="ph">Small
Parcel</span> or <span class="ph">Less Than Truckload/Full Truckload
(LTL/FTL)</span> delivery, and whether you intend to use an
Amazon-partnered carrier. Note that only sellers in the Amazon European
marketplaces (France, Germany, Italy, Spain, and the United Kingdom) and
in the United States can use an Amazon-partnered carrier when creating
inbound shipments using <span class="ph">Amazon Marketplace Web Service
(Amazon MWS)</span>.

</div>

<div class="section">

### Amazon-partnered carrier shipments

<div class="note important">

<span class="importanttitle">Important:</span>

-   Before using an Amazon-partnered carrier for an inbound shipment,
    you must read the Seller Central Help about Amazon's Partnered
    Carrier Program to help ensure that you successfully follow the
    program instructions and guidelines
    (<a href="https://sellercentral.amazon.co.uk/gp/help/201119120" class="xref">Europe</a>)
    (<a href="https://sellercentral.amazon.com/gp/help/201119120" class="xref">US</a>).
-   In the EU region, before using an Amazon-partnered carrier for an
    inbound shipment, you must first review and accept the terms and
    conditions of the carrier and the terms and conditions of Amazon's
    Partnered Carrier Program. You can do this on
    <a href="https://sellercentral.amazon.co.uk/gp/help/201119120" class="xref">Seller Central</a>.
    If you attempt to use <span class="ph">Amazon Marketplace Web
    Service (Amazon MWS)</span> to create an inbound shipment using an
    Amazon-partnered carrier before accepting these terms and
    conditions, the service returns an error.

</div>

If you want to use an Amazon-partnered carrier for an inbound shipment,
you can call the <span
class="keyword apiname">PutTransportContent</span> operation to submit
the transportation details that are required to get shipping costs.
After calling the <span
class="keyword apiname">PutTransportContent</span> operation, you can
call the <span class="keyword apiname">EstimateTransportRequest</span>
operation to get an estimate of the shipping cost of an inbound shipment
using an Amazon-partnered carrier. <span class="ph">For more
information, see
<a href="../fba_guide/FBAGuide_UsingAmazonCarrierToShip.md" class="xref">Using an Amazon-partnered carrier for your inbound shipment</a>
in the MWS for FBA Sellers guide.</span>

</div>

<div class="section">

### Non-Amazon-partnered carrier shipments

</div>

<div class="section">

If you use a non-Amazon-partnered carrier for your inbound shipment, you
can call the <span class="keyword apiname">PutTransportContent</span>
operation to send Amazon the shipment tracking numbers for your inbound
shipment. Calling the <span
class="keyword apiname">PutTransportContent</span> operation:

-   Helps Amazon process your inbound shipment at the Amazon fulfillment
    center faster and more accurately.
-   Provides Amazon with your shipment tracking numbers so that you can
    subsequently call the <span
    class="keyword apiname">GetTransportContent</span> operation to get
    the shipment status for your <span class="ph">Small Parcel</span>
    shipments.

For more information, see
<a href="../fba_guide/FBAGuide_SendShipTrackNumbers.md" class="xref">Step 6 - Send shipment tracking numbers to Amazon</a>
in the MWS for FBA Sellers guide.

</div>

<div class="section">

### Availability

This operation is available in all marketplaces except Brazil.

</div>

<div class="section">

### Throttling

The <span class="keyword apiname">PutTransportContent</span> operation
has a **maximum request quota** of 30 and a **restore rate** of two
requests every second. <span class="ph">For definitions of throttling
terminology and for a complete explanation of throttling, see
<a href="../dev_guide/DG_Throttling.md" class="xref">Throttling: Limits to how often you can submit requests</a>
in the <span class="ph">Amazon MWS Developer Guide</span>.</span>

</div>

</div>

</div>

<div id="RequestParameters" class="topic reference nested1">

## Request parameters

<div class="body refbody">

<div class="section">

<span class="ph">For more information about the request parameters that
are required for all <span class="ph">Amazon MWS</span> operations, see
<a href="../dev_guide/DG_RequiredRequestParameters.md" class="xref">Required request parameters</a>
in the <span class="ph">Amazon MWS Developer Guide</span>.</span>

</div>

<div class="tablenoborder">

<table id="RequestParameters__RequestParametersTable" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d78124e241" class="entry" data-valign="top" width="24.458874458874455%">Name</th>
<th id="d78124e244" class="entry" data-valign="top" width="21.645021645021643%">Description</th>
<th id="d78124e247" class="entry" data-valign="top" width="23.160173160173162%">Required</th>
<th id="d78124e250" class="entry" data-valign="top" width="30.735930735930733%">Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="24.458874458874455%" headers="d78124e241 "><span class="keyword parmname">ShipmentId</span></td>
<td class="entry" data-valign="top" width="21.645021645021643%" headers="d78124e244 "><span class="ph">A shipment identifier originally returned by the <span class="keyword apiname">CreateInboundShipmentPlan</span> operation.</span></td>
<td class="entry" data-valign="top" width="23.160173160173162%" headers="d78124e247 ">Yes</td>
<td class="entry" data-valign="top" width="30.735930735930733%" headers="d78124e250 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="24.458874458874455%" headers="d78124e241 "><span class="keyword parmname">IsPartnered</span></td>
<td class="entry" data-valign="top" width="21.645021645021643%" headers="d78124e244 ">Indicates whether a <span class="keyword apiname">PutTransportContent</span> request is for an Amazon-partnered carrier.</td>
<td class="entry" data-valign="top" width="23.160173160173162%" headers="d78124e247 ">Yes</td>
<td class="entry" data-valign="top" width="30.735930735930733%" headers="d78124e250 "><span class="keyword parmname">IsPartnered</span> values:
<ul>
<li><var class="keyword varname">true</var> – Request is for an Amazon-partnered carrier.</li>
<li><var class="keyword varname">false</var> – Request is for a non-Amazon-partnered carrier.</li>
</ul>
<p><span class="ph">Type: xs:boolean</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="24.458874458874455%" headers="d78124e241 "><span class="keyword parmname">ShipmentType</span></td>
<td class="entry" data-valign="top" width="21.645021645021643%" headers="d78124e244 ">Specifies the carrier shipment type in a <span class="keyword apiname">PutTransportContent</span> request.</td>
<td class="entry" data-valign="top" width="23.160173160173162%" headers="d78124e247 ">Yes</td>
<td class="entry" data-valign="top" width="30.735930735930733%" headers="d78124e250 "><span class="keyword parmname">ShipmentType</span> values:
<ul>
<li><var class="keyword varname">SP</var> – <span class="ph">Small Parcel</span></li>
<li><var class="keyword varname">LTL</var> – <span class="ph">Less Than Truckload/Full Truckload (LTL/FTL)</span></li>
</ul>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="24.458874458874455%" headers="d78124e241 "><span class="keyword parmname">TransportDetails</span></td>
<td class="entry" data-valign="top" width="21.645021645021643%" headers="d78124e244 ">Information required to create an Amazon-partnered carrier shipping estimate, or to alert the <span class="ph">Amazon fulfillment center</span> to the arrival of an inbound shipment by a non-Amazon-partnered carrier.</td>
<td class="entry" data-valign="top" width="23.160173160173162%" headers="d78124e247 ">Yes</td>
<td class="entry" data-valign="top" width="30.735930735930733%" headers="d78124e250 ">Type: <a href="FBAInbound_Datatypes.md#TransportDetailInput" class="xref" title="Information required to create an Amazon-partnered carrier shipping estimate, or to alert the Amazon fulfillment center to the arrival of an inbound shipment by a non-Amazon-partnered carrier.">TransportDetailInput</a></td>
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
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d78124e420" class="entry" data-valign="top" width="25.839793281653744%">Name</th>
<th id="d78124e423" class="entry" data-valign="top" width="74.16020671834626%">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr id="ResponseElements__ResponseElementsRow_TransportResult" class="odd row">
<td class="entry" data-valign="top" width="25.839793281653744%" headers="d78124e420 "><span class="keyword parmname">TransportResult</span></td>
<td class="entry" data-valign="top" width="74.16020671834626%" headers="d78124e423 ">Workflow status for a shipment with an Amazon-partnered carrier.
<p>Type: <a href="FBAInbound_Datatypes.md#TransportResult" class="xref" title="The workflow status for a shipment with an Amazon-partnered carrier.">TransportResult</a></p></td>
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
http://mws.amazonaws.com/FulfillmentInboundShipment/2010-10-01
  ?AWSAccessKeyId=AKIAEIAEXAMPLEQCJLSA
  &Action=PutTransportContent
  &MWSAuthToken=amzn.mws.4ea38b7b-f563-7709-4bae-87aeaEXAMPLE
  &SellerId=A13EXAMPLE1J56
  &SignatureVersion=2
  &Timestamp=2013-08-09T22%3A52%3A25Z
  &Version=2010-10-01
  &SignatureMethod=HmacSHA256
  &ShipmentId=FBAQ6QBP
  &IsPartnered=false
  &ShipmentType=SP
  &TransportDetails.NonPartneredSmallParcelData.
CarrierName=DHL%20EXPRESS%20%28USA%29%20INC
  &TransportDetails.NonPartneredSmallParcelData.
PackageList.member.1.TrackingId=A135KKEKWF1J5666
```

<a href="#Examples" class="xref">↑ Top</a>

</div>

</div>

<div class="section">

### Example response (Success)

<span class="ph">For information about standard response formatting, see
<a href="../dev_guide/DG_ResponseFormat.md" class="xref">Response format</a>.</span>

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="sectiondiv content">

``` pre
<?xml version="1.0"?>
<PutTransportContentResponse 
    xmlns="http://mws.amazonaws.com/FulfillmentInboundShipment/2010-10-01/">
    <PutTransportContentResult>
        <TransportResult>
            <TransportStatus>WORKING</TransportStatus>
        </TransportResult>
    </PutTransportContentResult>
    <ResponseMetadata>
        <RequestId>616f4f53-973e-4bb3-8dd3-0b46978a45c5</RequestId>
    </ResponseMetadata>
</PutTransportContentResponse>
```

<a href="#Examples" class="xref">↑ Top</a>

</div>

</div>

<div class="section">

### Example error response (InvalidParameterValue)

<span class="ph">For information about standard response formatting, see
<a href="../dev_guide/DG_ResponseFormat.md" class="xref">Response format</a>.</span>

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="sectiondiv content">

``` pre
<?xml version="1.0"?>
<ErrorResponse xmlns="http://mws.amazonaws.com/FulfillmentInboundShipment/2010-10-01/">;
    <Error>
        <Type>Sender</Type>
        <Code>InvalidParameterValue</Code>
        <Message>Maximum request size was exceeded</Message>
    </Error>
    <RequestID>79e44ae7-b6f0-4154-a3ad-3b95298ff084</RequestID>
</ErrorResponse>
```

<a href="#Examples" class="xref">↑ Top</a>

</div>

</div>

</div>

</div>

<div id="RelatedTopics" class="topic nested1">

## Related topics

<div class="body">

<a href="../fba_inbound/FBAInbound_Overview.md" class="xref">Fulfillment Inbound Shipment API</a>

<a href="../fba_inbound/FBAInbound_GetTransportContent.md" class="xref">GetTransportContent</a>

<a href="FBAInbound_EstimateTransportRequest.md" class="xref" title="Requests an estimate of the shipping cost for an inbound shipment.">EstimateTransportRequest</a>

<a href="FBAInbound_ConfirmTransportRequest.md" class="xref" title="Confirms that you accept the Amazon-partnered shipping estimate and you request that the Amazon-partnered carrier ship your inbound shipment.">ConfirmTransportRequest</a>

<a href="FBAInbound_VoidTransportRequest.md" class="xref" title="Voids a previously-confirmed request to ship your inbound shipment using an Amazon-partnered carrier.">VoidTransportRequest</a>

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
