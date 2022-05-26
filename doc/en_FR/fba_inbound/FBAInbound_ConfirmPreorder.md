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

<div id="FBAInbound_ConfirmPreorder" class="nested0">

# ConfirmPreorder

<div class="body">

<span class="ph">Confirms a shipment for pre-order. </span>

</div>

<div id="Description" class="topic concept nested1">

## Description

<div class="body conbody">

<div class="section">

The <span class="keyword apiname">ConfirmPreorder</span> operation
confirms a shipment for pre-order. Call this operation after calling the
<a href="FBAInbound_GetPreorderInfo.md" class="xref" title="Returns pre-order information, including dates, that a seller needs before confirming a shipment for pre-order. Also indicates if a shipment has already been confirmed for pre-order.">GetPreorderInfo</a>
operation to get the <span class="keyword parmname">NeedByDate</span>
value and other pre-order information about the shipment. To get a list
of shipments that are confirmed for pre-order, call the <span
class="keyword apiname">ListInboundShipments</span> operation and sort
the result set by the <span
class="keyword parmname">ConfirmedNeedByDate</span> response element.

After a shipment is confirmed for pre-order, the pre-order Buy Box
displays for all of the items in the shipment with release dates on or
after the date in the <span
class="keyword parmname">ConfirmedFulfillableDate</span> response
element. A shipment that is confirmed for pre-order must arrive at an
<span class="ph">Amazon fulfillment center</span> by the date in the
<span class="keyword parmname">ConfirmedNeedByDate</span> response
element to avoid promise breaks.

<div class="note note">

<span class="notetitle">Note:</span> After a shipment is confirmed for
pre-order, items in the shipment with release dates on or after the date
returned in the <span
class="keyword parmname">ConfirmedFulfillableDate</span> response
element are subject to the following restrictions:

-   The
    <a href="FBAInbound_UpdateInboundShipment.md" class="xref" title="Updates an existing inbound shipment.">UpdateInboundShipment</a>
    operation cannot be used to reduce quantity for these items. See the
    **CannotReducePreorderedItemQuantity** error code in
    <a href="FBAInbound_ErrorCodes.md" class="xref">Error codes</a>.
-   The
    <a href="FBAInbound_UpdateInboundShipment.md" class="xref" title="Updates an existing inbound shipment.">UpdateInboundShipment</a>
    operation cannot be used to remove these items from the shipment.
    See the **CannotRemovePreorderedItem** error code in
    <a href="FBAInbound_ErrorCodes.md" class="xref">Error codes</a>.

</div>

</div>

<div class="section">

### Availability

This operation is only available in the US, India, and Japan
marketplaces.

</div>

<div class="section">

### Throttling

The <span class="keyword apiname">ConfirmPreorder</span> operation has a
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

<table id="RequestParameters__RequestParametersTable" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d33211e223" class="entry" data-valign="top" width="28.75536480686695%">Name</th>
<th id="d33211e226" class="entry" data-valign="top" width="27.038626609442062%">Description</th>
<th id="d33211e229" class="entry" data-valign="top" width="14.306151645207441%">Required</th>
<th id="d33211e232" class="entry" data-valign="top" width="29.89985693848355%">Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="28.75536480686695%" headers="d33211e223 "><span class="keyword parmname">ShipmentId</span></td>
<td class="entry" data-valign="top" width="27.038626609442062%" headers="d33211e226 "><span class="ph">A shipment identifier originally returned by the <span class="keyword apiname">CreateInboundShipmentPlan</span> operation.</span></td>
<td class="entry" data-valign="top" width="14.306151645207441%" headers="d33211e229 ">Yes</td>
<td class="entry" data-valign="top" width="29.89985693848355%" headers="d33211e232 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="28.75536480686695%" headers="d33211e223 "><span class="keyword parmname">NeedByDate</span></td>
<td class="entry" data-valign="top" width="27.038626609442062%" headers="d33211e226 ">Date that the shipment must arrive at an <span class="ph">Amazon fulfillment center</span> to avoid delivery promise breaks for pre-ordered items. This comes from the <span class="keyword apiname">GetPreorderInfo</span> operation.</td>
<td class="entry" data-valign="top" width="14.306151645207441%" headers="d33211e229 ">Yes</td>
<td class="entry" data-valign="top" width="29.89985693848355%" headers="d33211e232 ">Must be in YYYY-MM-DD format.
<p><span class="ph">Type: xs:string</span></p></td>
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
<th id="d33211e318" class="entry" data-valign="top" width="24.63054187192118%">Name</th>
<th id="d33211e321" class="entry" data-valign="top" width="75.36945812807882%">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="24.63054187192118%" headers="d33211e318 "><span class="keyword parmname">ConfirmedNeedByDate</span></td>
<td class="entry" data-valign="top" width="75.36945812807882%" headers="d33211e321 ">Date passed in with the <span class="keyword parmname">NeedByDate</span> parameter. The confirmed shipment must arrive at an <span class="ph">Amazon fulfillment center</span> by this date to avoid delivery promise breaks for pre-ordered items. In YYYY-MM-DD format.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="24.63054187192118%" headers="d33211e318 "><span class="keyword parmname">ConfirmedFulfillableDate</span></td>
<td class="entry" data-valign="top" width="75.36945812807882%" headers="d33211e321 ">Date that determines which pre-order items in the shipment are eligible for pre-order. The pre-order Buy Box will appear for any pre-order item in the shipment with a release date on or after this date. In YYYY-MM-DD format.
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
see
<a href="../dev_guide/DG_RequiredRequestParameters.md" class="xref">Required request parameters</a>.</span>

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="sectiondiv content">

``` pre
http://mws.amazonaws.com/FulfillmentInboundShipment/2010-10-01
  ?AWSAccessKeyId=AKIAJGUEXAMPLEE2NVUA
  &Action=ConfirmPreorder
  &MWSAuthToken=amzn.mws.4ea38b7b-f563-7709-4bae-87aeaEXAMPLE
  &SellerId=A2NKEXAMPLEF53
  &SignatureVersion=2
  &Timestamp=2015-11-02T02:40:36Z
  &Version=2010-10-01
  &Signature=ZRA9DR5rveSuz%2F1D18AHvoipg2BAev8yblPQ1BbEbfU%3D
  &SignatureMethod=HmacSHA256
  &ShipmentId=FBA2F3KCQF
  &NeedByDate=2015-12-27
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
<ConfirmPreorderResponse xmlns="http://mws.amazonaws.com/FulfillmentInboundShipment/2010-10-01/">
    <ConfirmPreorderResult>
        <ConfirmedNeedByDate>2015-12-27</ConfirmedNeedByDate>
        <ConfirmedFulfillableDate>2015-12-31</ConfirmedFulfillableDate>
    </ConfirmPreorderResult>
    <ResponseMetadata>
        <RequestId>4a1a7029-462b-4a27-a04c-4cbe0fd107e3</RequestId>
    </ResponseMetadata>
</ConfirmPreorderResponse>
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

<a href="FBAInbound_GetPreorderInfo.md" class="xref" title="Returns pre-order information, including dates, that a seller needs before confirming a shipment for pre-order. Also indicates if a shipment has already been confirmed for pre-order.">GetPreorderInfo</a>

<a href="FBAInbound_UpdateInboundShipment.md" class="xref" title="Updates an existing inbound shipment.">UpdateInboundShipment</a>

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
