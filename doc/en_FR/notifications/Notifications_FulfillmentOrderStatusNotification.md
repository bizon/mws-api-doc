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
<span id="MWSDX_dep_notice"></span>

### Deprecation Notice:

Amazon Marketplace Web Service (MWS) will no longer be available after
**December 31, 2023**. All MWS developers must migrate to Selling
Partner API (SP-API) to avoid service disruptions. Refer to the
[Migration
Hub](https://developer-docs.amazon.com/sp-api/page/migration-hub) for
more information.

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

<div id="Notifications_FulfillmentOrderStatusNotification"
class="nested0">

# FulfillmentOrderStatusNotification

<div class="body">

The <span class="keyword parmname">FulfillmentOrderStatus</span>
notification is sent whenever there is a change in the status of a <span
class="ph">Multi-Channel Fulfillment</span> fulfillment order. See
<a href="Notifications_FulfillmentOrderStatusNotification.md#FulfillmentOrderStatusNotification__FulfillmentOrderStatus_row" class="xref"><span class="keyword parmname">FulfillmentOrderStatus</span></a>
for the events that can trigger a status change.

<div class="section">

## Availability

This notification is available in all marketplaces.

</div>

<div class="section">

## Elements

This is the root element of the
<a href="http://g-ec2.images-amazon.com/images/G/01/mwsportal/doc/en_US/subscriptions/FulfillmentOrderStatusNotification.xsd" class="xref">FulfillmentOrderStatusNotification.xsd</a>
schema:

<div class="tablenoborder">

| Name                                                                                                                                                                                                                                                                            | Description                                                                                                                                                                                   |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| <a href="#FulfillmentOrderStatusNotification" class="xref" title="The root element of the payload for the notification that is sent when there is a status change for a fulfillment order, fulfillment shipment, or fulfillment return.">FulfillmentOrderStatusNotification</a> | <span class="ph">The root element of the payload for the notification that is sent when there is a status change for a fulfillment order, fulfillment shipment, or fulfillment return.</span> |

</div>

These are the complex elements of the <span
class="keyword parmname">FulfillmentOrderStatus</span> element:

<div class="tablenoborder">

| Name                                                                                                                                                         | Description                                                                                                                  |
|--------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------|
| <a href="#FulfillmentReturnItem" class="xref" title="Information about an item that was returned to an Amazon fulfillment center.">FulfillmentReturnItem</a> | <span class="ph">Information about an item that was returned to an <span class="ph">Amazon fulfillment center</span>.</span> |
| <a href="#FulfillmentShipment" class="xref" title="Delivery and item information for a shipment in a fulfillment order.">FulfillmentShipment</a>             | <span class="ph">Delivery and item information for a shipment in a fulfillment order.</span>                                 |
| <a href="#FulfillmentShipmentPackage" class="xref" title="Package information for a shipment in a fulfillment order.">FulfillmentShipmentPackage</a>         | <span class="ph">Package information for a shipment in a fulfillment order.</span>                                           |

</div>

</div>

</div>

<div id="FulfillmentOrderStatusNotification" class="topic nested1">

## FulfillmentOrderStatusNotification

<div class="body">

<span class="ph">The root element of the payload for the notification
that is sent when there is a status change for a fulfillment order,
fulfillment shipment, or fulfillment return.</span>

<div class="section">

### FulfillmentOrderStatusNotification Elements

The following table shows the child elements of the <span
class="keyword parmname">FulfillmentOrderStatusNotification</span>
element:

<div class="tablenoborder">

<table id="FulfillmentOrderStatusNotification__table_v4j_lkj_ll" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d199347e303" class="entry" data-valign="top" width="50%">Name</th>
<th id="d199347e306" class="entry" data-valign="top" width="50%">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="50%" headers="d199347e303 "><span class="keyword parmname">EventType</span></td>
<td class="entry" data-valign="top" width="50%" headers="d199347e306 ">Indicates whether the notification contains order, shipment, or return information.
<p><span class="keyword parmname">EventType</span> values:</p>
<ul>
<li><var class="keyword varname">Order</var> - This notification contains information about a fulfillment order.</li>
<li><var class="keyword varname">Shipment</var> - This notification contains information about a fulfillment shipment. For more information, see the <a href="#FulfillmentShipment" class="xref" title="Delivery and item information for a shipment in a fulfillment order.">FulfillmentShipment</a> element.</li>
<li><var class="keyword varname">Return</var> - This notification contains information about a fulfillment return. For more information, see the <a href="#FulfillmentReturnItem" class="xref" title="Information about an item that was returned to an Amazon fulfillment center.">FulfillmentReturnItem</a> element.</li>
</ul>
<p>Required</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="50%" headers="d199347e303 "><span class="keyword parmname">StatusUpdatedDateTime</span></td>
<td class="entry" data-valign="top" width="50%" headers="d199347e306 ">The date and time when the status was last updated. In ISO 8601 format.
<p>Required</p>
<p><span class="ph">Type: xs:dateTime</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="50%" headers="d199347e303 "><span class="keyword parmname">SellerFulfillmentOrderId</span></td>
<td class="entry" data-valign="top" width="50%" headers="d199347e306 "><span class="ph">The fulfillment order identifier that you created and submitted using the <span class="keyword apiname">CreateFulfillmentOrder</span> operation.</span>
<p>Required</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr id="FulfillmentOrderStatusNotification__FulfillmentOrderStatus_row" class="even row">
<td class="entry" data-valign="top" width="50%" headers="d199347e303 "><span class="keyword parmname">FulfillmentOrderStatus</span></td>
<td class="entry" data-valign="top" width="50%" headers="d199347e306 ">The current status of the fulfillment order.
<p><span class="keyword parmname">FulfillmentOrderStatus</span> values:</p>
<ul>
<li><var class="keyword varname">Received</var> - The fulfillment order was received by <span class="ph">Amazon MWS</span> and validated. Validation includes determining that the destination address is valid and that Amazon's records indicate that the seller has enough sellable (undamaged) inventory to fulfill the order. The seller can cancel a fulfillment order that has a status of <var class="keyword varname">Received</var>.</li>
<li><var class="keyword varname">Invalid</var> - The fulfillment order was received by <span class="ph">Amazon MWS</span> but could not be validated. The reasons for this include an invalid destination address or Amazon's records indicating that the seller does not have enough sellable inventory to fulfill the order. When this happens, the fulfillment order is invalid and no items in the order will ship.</li>
<li><var class="keyword varname">Planning</var> - The fulfillment order has been sent to <span class="ph">Amazon's fulfillment network</span> to begin shipment planning, but no unit in any shipment has been picked from inventory yet. The seller can cancel a fulfillment order that has a status of <var class="keyword varname">Planning</var>.</li>
<li><var class="keyword varname">Processing</var> - The process of picking units from inventory has begun on at least one shipment in the fulfillment order. The seller cannot cancel a fulfillment order that has a status of <var class="keyword varname">Processing</var>.</li>
<li><var class="keyword varname">Cancelled</var> - The fulfillment order has been cancelled by the seller.</li>
<li><var class="keyword varname">Complete</var> - All item quantities in the fulfillment order have been fulfilled.</li>
<li><var class="keyword varname">CompletePartialled</var> - Some item quantities in the fulfillment order were fulfilled; the rest were either cancelled or unfulfillable.</li>
<li><var class="keyword varname">Unfulfillable</var> - No item quantities in the fulfillment order could be fulfilled because the <span class="ph">Amazon fulfillment center</span> workers found no inventory for those items or found no inventory that was in sellable (undamaged) condition.</li>
</ul>
<p>Required</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="50%" headers="d199347e303 "><span class="keyword parmname">FulfillmentShipment</span></td>
<td class="entry" data-valign="top" width="50%" headers="d199347e306 "><span class="ph">Delivery and item information for a shipment in a fulfillment order.</span>
<p>Optional. Returned only when <span class="keyword parmname">EventType</span> is <var class="keyword varname">Shipment</var>.</p>
<p>Type: <a href="#FulfillmentShipment" class="xref" title="Delivery and item information for a shipment in a fulfillment order.">FulfillmentShipment</a></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="50%" headers="d199347e303 "><span class="keyword parmname">FulfillmentReturnItem</span></td>
<td class="entry" data-valign="top" width="50%" headers="d199347e306 "><span class="ph">Information about an item that was returned to an <span class="ph">Amazon fulfillment center</span>.</span>
<p>Optional. Returned only when <span class="keyword parmname">EventType</span> is <var class="keyword varname">Return</var>.</p>
<p>Type: <a href="#FulfillmentReturnItem" class="xref" title="Information about an item that was returned to an Amazon fulfillment center.">FulfillmentReturnItem</a></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="FulfillmentReturnItem" class="topic nested1">

## FulfillmentReturnItem

<div class="body">

<span class="ph">Information about an item that was returned to an <span
class="ph">Amazon fulfillment center</span>.</span>

<div class="section">

### FulfillmentReturnItem Elements

The following table shows the child elements of the <span
class="keyword parmname">FulfillmentReturnItem</span> element:

<div class="tablenoborder">

<table id="FulfillmentReturnItem__table_k3g_gdb_54" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d199347e627" class="entry" data-valign="top" width="50%">Name</th>
<th id="d199347e630" class="entry" data-valign="top" width="50%">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="50%" headers="d199347e627 "><span class="keyword parmname">ReceivedDateTime</span></td>
<td class="entry" data-valign="top" width="50%" headers="d199347e630 ">The date and time when the returned item was received by the <span class="ph">Amazon fulfillment center</span>. In <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>.
<p>Required</p>
<p><span class="ph">Type: xs:dateTime</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="50%" headers="d199347e627 "><span class="keyword parmname">ReturnedQuantity</span></td>
<td class="entry" data-valign="top" width="50%" headers="d199347e630 ">The quantity that was returned.
<p>Required</p>
<p><span class="ph">Type: xs:int</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="50%" headers="d199347e627 "><span class="keyword parmname">SellerSKU</span></td>
<td class="entry" data-valign="top" width="50%" headers="d199347e630 "><span class="ph">The seller SKU of the item.</span>
<p>Required</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="FulfillmentShipment" class="topic nested1">

## FulfillmentShipment

<div class="body">

<span class="ph">Delivery and item information for a shipment in a
fulfillment order.</span>

<div class="section">

### FulfillmentShipment Elements

The <span class="keyword parmname">FulfillmentShipment</span> element
contains a subset of the information contained in the
<a href="../fba_outbound/FBAOutbound_Datatypes.md#FulfillmentShipment" class="xref" title="Delivery and item information for a shipment in a fulfillment order.">FulfillmentShipment</a>
datatype of the <span class="ph">Fulfillment Outbound Shipment API
section</span>.

The following table shows the child elements of the <span
class="keyword parmname">FulfillmentShipment</span> element:

<div class="tablenoborder">

<table id="FulfillmentShipment__table_abj_4db_54" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d199347e762" class="entry" data-valign="top" width="50%">Name</th>
<th id="d199347e765" class="entry" data-valign="top" width="50%">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="50%" headers="d199347e762 "><span class="keyword parmname">FulfillmentShipmentStatus</span></td>
<td class="entry" data-valign="top" width="50%" headers="d199347e765 ">The current status of the shipment.
<p><span class="keyword parmname">FulfillmentShipmentStatus</span> values:</p>
<ul>
<li><var class="keyword varname">Pending</var> - The process of picking units from inventory has begun.</li>
<li><var class="keyword varname">Shipped</var> - All packages in the shipment have left the fulfillment center.</li>
<li><var class="keyword varname">CancelledByFulfiller</var> - The <span class="ph">Amazon fulfillment center</span> could not fulfill the shipment as planned. This might be because the inventory was not at the expected location in the fulfillment center. After cancelling the fulfillment order, Amazon immediately creates a new fulfillment shipment and again attempts to fulfill the order.</li>
<li><var class="keyword varname">CancelledBySeller</var> - The shipment was cancelled using the <span class="keyword parmname">CancelFulfillmentOrder</span> operation.</li>
</ul>
<p>Required</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="50%" headers="d199347e762 "><span class="keyword parmname">AmazonShipmentId</span></td>
<td class="entry" data-valign="top" width="50%" headers="d199347e765 ">A shipment identifier assigned by Amazon.
<p>Required</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="50%" headers="d199347e762 "><span class="keyword parmname">EstimatedArrivalDateTime</span></td>
<td class="entry" data-valign="top" width="50%" headers="d199347e765 ">The estimated arrival time of the shipment, in <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>. Note that this value can change over time. If a shipment includes more than one package, <span class="keyword parmname">EstimatedArrivalDateTime</span> applies to all of the packages in the shipment. If the shipment has been cancelled, <span class="keyword parmname">EstimatedArrivalDateTime</span> is not returned.
<p>Required</p>
<p><span class="ph">Type: xs:dateTime</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="50%" headers="d199347e762 "><span class="keyword parmname">FulfillmentShipmentPackageList</span></td>
<td class="entry" data-valign="top" width="50%" headers="d199347e765 ">Contains all the packages in the fulfillment shipment.
<p>Optional</p>
<p>Type: List of <a href="#FulfillmentShipmentPackage" class="xref" title="Package information for a shipment in a fulfillment order.">FulfillmentShipmentPackage</a></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="FulfillmentShipmentPackage" class="topic nested1">

## FulfillmentShipmentPackage

<div class="body">

<span class="ph">Package information for a shipment in a fulfillment
order.</span>

<div class="section">

### FulfillmentShipmentPackage Elements

The <span class="keyword parmname">FulfillmentShipmentPackage</span>
element contains a subset of the information contained in the
<a href="../fba_outbound/FBAOutbound_Datatypes.md#FulfillmentShipmentPackage" class="xref" title="Package information for a shipment in a fulfillment order.">FulfillmentShipmentPackage</a>
datatype of the <span class="ph">Fulfillment Outbound Shipment API
section</span>.

The following table shows the child elements of the <span
class="keyword parmname">FulfillmentShipmentPackage</span> element:

<div class="tablenoborder">

<table id="FulfillmentShipmentPackage__table_mtb_vdb_54" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d199347e951" class="entry" data-valign="top" width="50%">Name</th>
<th id="d199347e954" class="entry" data-valign="top" width="50%">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="50%" headers="d199347e951 "><span class="keyword parmname">PackageNumber</span></td>
<td class="entry" data-valign="top" width="50%" headers="d199347e954 ">Identifies a package within a shipment.
<p>Required</p>
<p><span class="ph">Type: xs:int</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="50%" headers="d199347e951 "><span class="keyword parmname">CarrierCode</span></td>
<td class="entry" data-valign="top" width="50%" headers="d199347e954 ">Identifies the carrier that will deliver the package.
<p>Required</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="50%" headers="d199347e951 "><span class="keyword parmname">TrackingNumber</span></td>
<td class="entry" data-valign="top" width="50%" headers="d199347e954 ">The tracking number used to obtain tracking and delivery information.
<p>Required</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="RelatedTopics" class="topic nested1">

## Related topics

<div class="body">

<a href="../subscriptions/Subscriptions_Overview.md" class="xref">What you should know about the Amazon MWS Subscriptions API section</a>

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
