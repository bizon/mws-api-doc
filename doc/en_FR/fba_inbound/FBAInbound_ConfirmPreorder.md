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
[GetPreorderInfo](FBAInbound_GetPreorderInfo.html "Returns pre-order information, including dates, that a seller needs before confirming a shipment for pre-order. Also indicates if a shipment has already been confirmed for pre-order.")
operation to get the <span class="keyword parmname">NeedByDate</span>
value and other pre-order information about the shipment. To get a list
of shipments that are confirmed for pre-order, call the
<span class="keyword apiname">ListInboundShipments</span> operation and
sort the result set by the
<span class="keyword parmname">ConfirmedNeedByDate</span> response
element.

After a shipment is confirmed for pre-order, the pre-order Buy Box
displays for all of the items in the shipment with release dates on or
after the date in the
<span class="keyword parmname">ConfirmedFulfillableDate</span> response
element. A shipment that is confirmed for pre-order must arrive at an
<span class="ph">Amazon fulfillment center</span> by the date in the
<span class="keyword parmname">ConfirmedNeedByDate</span> response
element to avoid promise breaks.

<div class="note note">

<span class="notetitle">Note:</span> After a shipment is confirmed for
pre-order, items in the shipment with release dates on or after the date
returned in the
<span class="keyword parmname">ConfirmedFulfillableDate</span> response
element are subject to the following restrictions:

  - The
    [UpdateInboundShipment](FBAInbound_UpdateInboundShipment.html "Updates an existing inbound shipment.")
    operation cannot be used to reduce quantity for these items. See the
    **CannotReducePreorderedItemQuantity** error code in [Error
    codes](FBAInbound_ErrorCodes.html).
  - The
    [UpdateInboundShipment](FBAInbound_UpdateInboundShipment.html "Updates an existing inbound shipment.")
    operation cannot be used to remove these items from the shipment.
    See the **CannotRemovePreorderedItem** error code in [Error
    codes](FBAInbound_ErrorCodes.html).

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
and for a complete explanation of throttling, see [Throttling: Limits to
how often you can submit requests](../dev_guide/DG_Throttling.html) in
the <span class="ph">Amazon MWS Developer Guide</span>.</span>

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
<span class="ph">Amazon MWS Developer Guide</span>.</span>

</div>

<div class="tablenoborder">

<table>
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
<td><span class="ph">A shipment identifier originally returned by the <span class="keyword apiname">CreateInboundShipmentPlan</span> operation.</span></td>
<td>Yes</td>
<td><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">NeedByDate</span></td>
<td>Date that the shipment must arrive at an <span class="ph">Amazon fulfillment center</span> to avoid delivery promise breaks for pre-ordered items. This comes from the <span class="keyword apiname">GetPreorderInfo</span> operation.</td>
<td>Yes</td>
<td>Must be in YYYY-MM-DD format.
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
<td><span class="keyword parmname">ConfirmedNeedByDate</span></td>
<td>Date passed in with the <span class="keyword parmname">NeedByDate</span> parameter. The confirmed shipment must arrive at an <span class="ph">Amazon fulfillment center</span> by this date to avoid delivery promise breaks for pre-ordered items. In YYYY-MM-DD format.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">ConfirmedFulfillableDate</span></td>
<td>Date that determines which pre-order items in the shipment are eligible for pre-order. The pre-order Buy Box will appear for any pre-order item in the shipment with a release date on or after this date. In YYYY-MM-DD format.
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
parameters](../dev_guide/DG_RequiredRequestParameters.html).</span>

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="sectiondiv content">

``` pre codeblock
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

[↑ Top](#Examples)

</div>

</div>

</div>

</div>

<div id="RelatedTopics" class="topic nested1">

## Related topics

<div class="body">

[Fulfillment Inbound Shipment
API](../fba_inbound/FBAInbound_Overview.html)

[GetPreorderInfo](FBAInbound_GetPreorderInfo.html "Returns pre-order information, including dates, that a seller needs before confirming a shipment for pre-order. Also indicates if a shipment has already been confirmed for pre-order.")

[UpdateInboundShipment](FBAInbound_UpdateInboundShipment.html "Updates an existing inbound shipment.")

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