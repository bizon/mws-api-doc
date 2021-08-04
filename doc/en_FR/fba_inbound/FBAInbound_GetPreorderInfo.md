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

<div id="FBAInbound_GetPreorderInfo" class="nested0">

# GetPreorderInfo

<div class="body">

<span class="ph">Returns pre-order information, including dates, that a
seller needs before confirming a shipment for pre-order. Also indicates
if a shipment has already been confirmed for pre-order. </span>

</div>

<div id="Description" class="topic concept nested1">

## Description

<div class="body conbody">

<div class="section">

The <span class="keyword apiname">GetPreorderInfo</span> operation
returns pre-order information, including dates, that a seller needs
before confirming a shipment for pre-order. Call this operation after
creating the shipment using the
<a href="../fba_inbound/FBAInbound_CreateInboundShipment.md" class="xref">CreateInboundShipment</a>
operation. You can also call this operation to find out if a shipment
has already been confirmed for pre-order. To confirm the shipment for
pre-order, call the
<a href="FBAInbound_ConfirmPreorder.md" class="xref" title="Confirms a shipment for pre-order.">ConfirmPreorder</a>
operation.

Pre-orders are available only in India and Japan.

</div>

<div class="section">

### Availability

This operation is only available in the US, India, and Japan
marketplaces.

</div>

<div class="section">

### Throttling

The <span class="keyword apiname">GetPreorderInfo</span> operation has a
**maximum request quota** of 30 and a **restore rate** of two requests
every second. <span class="ph">For definitions of throttling terminology
and for a complete explanation of throttling, see
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

| Name                                             | Description                                                                                                                                        | Required | Values                                  |
|--------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------|----------|-----------------------------------------|
| <span class="keyword parmname">ShipmentId</span> | <span class="ph">A shipment identifier originally returned by the <span class="keyword apiname">CreateInboundShipmentPlan</span> operation.</span> | Yes      | <span class="ph">Type: xs:string</span> |

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
<th id="d67953e225" class="entry" data-valign="top" width="29.239766081871345%">Name</th>
<th id="d67953e228" class="entry" data-valign="top" width="70.76023391812866%">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="29.239766081871345%" headers="d67953e225 "><span class="keyword parmname">ShipmentContainsPreorderableItems</span></td>
<td class="entry" data-valign="top" width="70.76023391812866%" headers="d67953e228 ">Indicates whether the shipment contains items that have been enabled for pre-order. For more information about enabling items for pre-order, see the Seller Central Help (<a href="https://sellercentral.amazon.in/gp/help/201851750" class="xref">IN</a>) (<a href="https://sellercentral.amazon.co.jp/gp/help/201851750" class="xref">JP</a>).
<p><span class="ph">Type: xs:boolean</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="29.239766081871345%" headers="d67953e225 "><span class="keyword parmname">NeedByDate</span></td>
<td class="entry" data-valign="top" width="70.76023391812866%" headers="d67953e228 ">Date that the shipment would need to arrive at an <span class="ph">Amazon fulfillment center</span> to avoid delivery promise breaks for pre-ordered items if this shipment is later confirmed for pre-order. See <a href="FBAInbound_ConfirmPreorder.md" class="xref" title="Confirms a shipment for pre-order.">ConfirmPreorder</a>. In YYYY-MM-DD format.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="29.239766081871345%" headers="d67953e225 "><span class="keyword parmname">ConfirmedFulfillableDate</span></td>
<td class="entry" data-valign="top" width="70.76023391812866%" headers="d67953e228 ">Date that determines which pre-order items in the shipment are eligible for pre-order. If this shipment is confirmed for pre-order with a subsequent call to the <span class="keyword apiname">ConfirmPreorder</span> operation, the pre-order Buy Box will appear for any pre-order items in the shipment with a release date on or after this date. Call the <a href="FBAInbound_ListInboundShipmentItems.md" class="xref" title="Returns a list of items in a specified inbound shipment, or a list of items that were updated within a specified time frame.">ListInboundShipmentItems</a> operation to get the release dates for the pre-order items in this shipment. In YYYY-MM-DD format.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="29.239766081871345%" headers="d67953e225 "><span class="keyword parmname">ShipmentConfirmedForPreorder</span></td>
<td class="entry" data-valign="top" width="70.76023391812866%" headers="d67953e228 ">Indicates whether this shipment has been confirmed for pre-order.
<p><span class="ph">Type: xs:boolean</span></p></td>
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
  ?AWSAccessKeyId=AKIAJGUEXAMPLEE2NVUA
  &Action=GetPreorderInfo
  &MWSAuthToken=amzn.mws.4ea38b7b-f563-7709-4bae-87aeaEXAMPLE
  &SellerId=A2NKEXAMPLEF53
  &SignatureVersion=2
  &Timestamp=2015-11-02T02:40:36Z
  &Version=2010-10-01
  &Signature=ZRA9DR5rveSuz%2F1D18AHvoipg2BAev8yblPQ1BbEbfU%3D
  &SignatureMethod=HmacSHA256
  &ShipmentId=FBA2F3KCQF
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
<GetPreorderInfoResponse xmlns="http://mws.amazonaws.com/FulfillmentInboundShipment/2010-10-01/">
    <GetPreorderInfoResult>
        <ShipmentContainsPreorderableItems>true
        </ShipmentContainsPreorderableItems>
        <NeedByDate>2015-12-27</NeedByDate>
        <ConfirmedFulfillableDate>2015-12-31</ConfirmedFulfillableDate>
        <ShipmentConfirmedForPreorder>true</ShipmentConfirmedForPreorder>
    </GetPreorderInfoResult>
    <ResponseMetadata>
        <RequestId>4a1a7029-462b-4a27-a04c-4cbe0fd107e3</RequestId>
    </ResponseMetadata>
</GetPreorderInfoResponse>
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

<a href="FBAInbound_ConfirmPreorder.md" class="xref" title="Confirms a shipment for pre-order.">ConfirmPreorder</a>

<a href="../fba_inbound/FBAInbound_CreateInboundShipment.md" class="xref">CreateInboundShipment</a>

<a href="FBAInbound_ListInboundShipmentItems.md" class="xref" title="Returns a list of items in a specified inbound shipment, or a list of items that were updated within a specified time frame.">ListInboundShipmentItems</a>

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
