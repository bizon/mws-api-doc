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

<div id="Notifications_FBAOutboundShipmentStatusNotification"
class="nested0">

FBAOutboundShipmentStatusNotification
=====================================

<div class="body">

The <span class="keyword parmname">FBAOutboundShipmentStatus</span>
notification is sent whenever Amazon creates or cancels a <span
class="ph">Fulfillment by Amazon</span> shipment for a seller.

<div class="section">

Availability
------------

This notification is available only in the Brazil marketplace.

</div>

<div class="section">

Elements
--------

This is the root element of the
<a href="https://m.media-amazon.com/images/G/01/mwsportal/doc/en_US/subscriptions/FBAOutboundShipmentStatusNotification.xsd" class="xref">FBAOutboundShipmentStatusNotification.xsd</a>
schema:

<div class="tablenoborder">

| Name                                                                                                                                                                                                                                        | Description                                                                                                                                                                 |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| <a href="#FBAOutboundShipmentStatusNotification" class="xref" title="The root element of the payload that is sent when Amazon creates or cancels an Fulfillment by Amazon shipment for a seller.">FBAOutboundShipmentStatusNotification</a> | <span class="ph">The root element of the payload that is sent when Amazon creates or cancels an <span class="ph">Fulfillment by Amazon</span> shipment for a seller.</span> |

</div>

</div>

</div>

<div id="FBAOutboundShipmentStatusNotification" class="topic nested1">

FBAOutboundShipmentStatusNotification
-------------------------------------

<div class="body">

<span class="ph">The root element of the payload that is sent when
Amazon creates or cancels an <span class="ph">Fulfillment by
Amazon</span> shipment for a seller.</span>

<div class="section">

### FBAOutboundShipmentStatusNotification Elements

The following table shows the child elements of the <span
class="keyword parmname">FBAOutboundShipmentStatusNotification</span>
element:

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
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
<td><span class="keyword parmname">AmazonOrderId</span></td>
<td>The Amazon-defined order identifier.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">AmazonShipmentId</span></td>
<td>The Amazon-defined shipment identifier.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">ShipmentStatus</span></td>
<td>The shipment status. <span class="keyword parmname">ShipmentStatus</span> values: <var class="keyword varname">Created</var>, <var class="keyword varname">Cancelled</var>.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="RelatedTopics" class="topic nested1">

Related topics
--------------

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
