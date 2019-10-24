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

<div id="Notifications_FulfillmentOrderStatusNotification" class="nested0">

# FulfillmentOrderStatusNotification

<div class="body">

The <span class="keyword parmname">FulfillmentOrderStatus</span>
notification is sent whenever there is a change in the status of a
<span class="ph">Multi-Channel Fulfillment</span> fulfillment order. See
[<span class="keyword parmname">FulfillmentOrderStatus</span>](Notifications_FulfillmentOrderStatusNotification.md#FulfillmentOrderStatusNotification__FulfillmentOrderStatus_row)
for the events that can trigger a status change.

<div class="section">

## Availability

This notification is available in all marketplaces.

</div>

<div class="section">

## Elements

This is the root element of the
[FulfillmentOrderStatusNotification.xsd](http://g-ec2.images-amazon.com/images/G/01/mwsportal/doc/en_US/subscriptions/FulfillmentOrderStatusNotification.xsd)
schema:

<div class="tablenoborder">

| Name                                                                                                                                                                                                                                              | Description                                                                                                                                                                                   |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [FulfillmentOrderStatusNotification](#FulfillmentOrderStatusNotification "The root element of the payload for the notification that is sent when there is a status change for a fulfillment order, fulfillment shipment, or fulfillment return.") | <span class="ph">The root element of the payload for the notification that is sent when there is a status change for a fulfillment order, fulfillment shipment, or fulfillment return.</span> |

</div>

These are the complex elements of the
<span class="keyword parmname">FulfillmentOrderStatus</span>
element:

<div class="tablenoborder">

| Name                                                                                                                           | Description                                                                                                                  |
| ------------------------------------------------------------------------------------------------------------------------------ | ---------------------------------------------------------------------------------------------------------------------------- |
| [FulfillmentReturnItem](#FulfillmentReturnItem "Information about an item that was returned to an Amazon fulfillment center.") | <span class="ph">Information about an item that was returned to an <span class="ph">Amazon fulfillment center</span>.</span> |
| [FulfillmentShipment](#FulfillmentShipment "Delivery and item information for a shipment in a fulfillment order.")             | <span class="ph">Delivery and item information for a shipment in a fulfillment order.</span>                                 |
| [FulfillmentShipmentPackage](#FulfillmentShipmentPackage "Package information for a shipment in a fulfillment order.")         | <span class="ph">Package information for a shipment in a fulfillment order.</span>                                           |

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

The following table shows the child elements of the
<span class="keyword parmname">FulfillmentOrderStatusNotification</span>
element:

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
<td><span class="keyword parmname">EventType</span></td>
<td>Indicates whether the notification contains order, shipment, or return information.
<p><span class="keyword parmname">EventType</span> values:</p>
<ul>
<li>Order - This notification contains information about a fulfillment order.</li>
<li>Shipment - This notification contains information about a fulfillment shipment. For more information, see the <a href="#FulfillmentShipment" class="xref" title="Delivery and item information for a shipment in a fulfillment order.">FulfillmentShipment</a> element.</li>
<li>Return - This notification contains information about a fulfillment return. For more information, see the <a href="#FulfillmentReturnItem" class="xref" title="Information about an item that was returned to an Amazon fulfillment center.">FulfillmentReturnItem</a> element.</li>
</ul>
<p>Required</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">StatusUpdatedDateTime</span></td>
<td>The date and time when the status was last updated. In ISO 8601 format.
<p>Required</p>
<p><span class="ph">Type: xs:dateTime</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">SellerFulfillmentOrderId</span></td>
<td><span class="ph">The fulfillment order identifier that you created and submitted using the <span class="keyword apiname">CreateFulfillmentOrder</span> operation.</span>
<p>Required</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">FulfillmentOrderStatus</span></td>
<td>The current status of the fulfillment order.
<p><span class="keyword parmname">FulfillmentOrderStatus</span> values:</p>
<ul>
<li>Received - The fulfillment order was received by <span class="ph">Amazon MWS</span> and validated. Validation includes determining that the destination address is valid and that Amazon's records indicate that the seller has enough sellable (undamaged) inventory to fulfill the order. The seller can cancel a fulfillment order that has a status of Received.</li>
<li>Invalid - The fulfillment order was received by <span class="ph">Amazon MWS</span> but could not be validated. The reasons for this include an invalid destination address or Amazon's records indicating that the seller does not have enough sellable inventory to fulfill the order. When this happens, the fulfillment order is invalid and no items in the order will ship.</li>
<li>Planning - The fulfillment order has been sent to <span class="ph">Amazon's fulfillment network</span> to begin shipment planning, but no unit in any shipment has been picked from inventory yet. The seller can cancel a fulfillment order that has a status of Planning.</li>
<li>Processing - The process of picking units from inventory has begun on at least one shipment in the fulfillment order. The seller cannot cancel a fulfillment order that has a status of Processing.</li>
<li>Cancelled - The fulfillment order has been cancelled by the seller.</li>
<li>Complete - All item quantities in the fulfillment order have been fulfilled.</li>
<li>CompletePartialled - Some item quantities in the fulfillment order were fulfilled; the rest were either cancelled or unfulfillable.</li>
<li>Unfulfillable - No item quantities in the fulfillment order could be fulfilled because the <span class="ph">Amazon fulfillment center</span> workers found no inventory for those items or found no inventory that was in sellable (undamaged) condition.</li>
</ul>
<p>Required</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">FulfillmentShipment</span></td>
<td><span class="ph">Delivery and item information for a shipment in a fulfillment order.</span>
<p>Optional. Returned only when <span class="keyword parmname">EventType</span> is Shipment.</p>
<p>Type: <a href="#FulfillmentShipment" class="xref" title="Delivery and item information for a shipment in a fulfillment order.">FulfillmentShipment</a></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">FulfillmentReturnItem</span></td>
<td><span class="ph">Information about an item that was returned to an <span class="ph">Amazon fulfillment center</span>.</span>
<p>Optional. Returned only when <span class="keyword parmname">EventType</span> is Return.</p>
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

<span class="ph">Information about an item that was returned to an
<span class="ph">Amazon fulfillment center</span>.</span>

<div class="section">

### FulfillmentReturnItem Elements

The following table shows the child elements of the
<span class="keyword parmname">FulfillmentReturnItem</span> element:

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
<td><span class="keyword parmname">ReceivedDateTime</span></td>
<td>The date and time when the returned item was received by the <span class="ph">Amazon fulfillment center</span>. In <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>.
<p>Required</p>
<p><span class="ph">Type: xs:dateTime</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">ReturnedQuantity</span></td>
<td>The quantity that was returned.
<p>Required</p>
<p><span class="ph">Type: xs:int</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">SellerSKU</span></td>
<td><span class="ph">The seller SKU of the item.</span>
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
[FulfillmentShipment](../fba_outbound/FBAOutbound_Datatypes.md#FulfillmentShipment "Delivery and item information for a shipment in a fulfillment order.")
datatype of the <span class="ph">Fulfillment Outbound Shipment API
section</span>.

The following table shows the child elements of the
<span class="keyword parmname">FulfillmentShipment</span> element:

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
<td><span class="keyword parmname">FulfillmentShipmentStatus</span></td>
<td>The current status of the shipment.
<p><span class="keyword parmname">FulfillmentShipmentStatus</span> values:</p>
<ul>
<li>Pending - The process of picking units from inventory has begun.</li>
<li>Shipped - All packages in the shipment have left the fulfillment center.</li>
<li>CancelledByFulfiller - The <span class="ph">Amazon fulfillment center</span> could not fulfill the shipment as planned. This might be because the inventory was not at the expected location in the fulfillment center. After cancelling the fulfillment order, Amazon immediately creates a new fulfillment shipment and again attempts to fulfill the order.</li>
<li>CancelledBySeller - The shipment was cancelled using the <span class="keyword parmname">CancelFulfillmentOrder</span> operation.</li>
</ul>
<p>Required</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">AmazonShipmentId</span></td>
<td>A shipment identifier assigned by Amazon.
<p>Required</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">EstimatedArrivalDateTime</span></td>
<td>The estimated arrival time of the shipment, in <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>. Note that this value can change over time. If a shipment includes more than one package, <span class="keyword parmname">EstimatedArrivalDateTime</span> applies to all of the packages in the shipment. If the shipment has been cancelled, <span class="keyword parmname">EstimatedArrivalDateTime</span> is not returned.
<p>Required</p>
<p><span class="ph">Type: xs:dateTime</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">FulfillmentShipmentPackageList</span></td>
<td>Contains all the packages in the fulfillment shipment.
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
[FulfillmentShipmentPackage](../fba_outbound/FBAOutbound_Datatypes.md#FulfillmentShipmentPackage "Package information for a shipment in a fulfillment order.")
datatype of the <span class="ph">Fulfillment Outbound Shipment API
section</span>.

The following table shows the child elements of the
<span class="keyword parmname">FulfillmentShipmentPackage</span>
element:

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
<td><span class="keyword parmname">PackageNumber</span></td>
<td>Identifies a package within a shipment.
<p>Required</p>
<p><span class="ph">Type: xs:int</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">CarrierCode</span></td>
<td>Identifies the carrier that will deliver the package.
<p>Required</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">TrackingNumber</span></td>
<td>The tracking number used to obtain tracking and delivery information.
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

[What you should know about the Amazon MWS Subscriptions API
section](../subscriptions/Subscriptions_Overview.md)

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
