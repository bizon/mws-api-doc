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

<div id="Subscriptions_NotificationType" class="nested0">

# NotificationType enumeration

<div class="body">

The following table lists the notification types that you can subscribe
to:

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d325621e60" class="entry" data-valign="top" width="50%">Notification</th>
<th id="d325621e63" class="entry" data-valign="top" width="50%">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="50%" headers="d325621e60 "><span class="keyword parmname">AnyOfferChanged</span>
<p>Enumeration value: <samp class="ph codeph">AnyOfferChanged</samp></p>
<p>XSD: <a href="https://m.media-amazon.com/images/G/01/mwsportal/doc/en_US/subscriptions/AnyOfferChangedNotification._CB467003493_.xsd" class="xref">AnyOfferChangedNotification.xsd</a></p></td>
<td class="entry" data-valign="top" width="50%" headers="d325621e63 "><p>The <span class="keyword parmname">AnyOfferChanged</span> notification is sent whenever there is a listing change for any of the top 20 offers, by condition (new or used), or if the external price (the price from other retailers) changes for an item that you sell. The top 20 offers are determined by the landed price, which is the price plus shipping minus Amazon Points. If multiple sellers are charging the same landed price, the results will be returned in random order.</p>
<p>You will only receive <span class="keyword parmname">AnyOfferChanged</span> notifications for items for which you have active offers. You cannot subscribe to notifications for items for which you do not have active offers.</p>
<p>For more information, see <a href="../notifications/Notifications_AnyOfferChangedNotification.md" class="xref">AnyOfferChangedNotification</a> in the <span class="ph">Amazon MWS</span> <span class="ph">Push Notifications</span> Reference.</p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="50%" headers="d325621e60 "><span class="keyword parmname">FeedProcessingFinished</span>
<p>Enumeration value: <samp class="ph codeph">FeedProcessingFinished</samp></p>
<p>XSD: <a href="https://m.media-amazon.com/images/G/01/mwsportal/doc/en_US/subscriptions/FeedProcessingFinishedNotification.xsd" class="xref">FeedProcessingFinishedNotification.xsd</a></p></td>
<td class="entry" data-valign="top" width="50%" headers="d325621e63 "><p><span class="ph">The <span class="keyword parmname">FeedProcessingFinished</span> notification is sent whenever any feed that you have submitted using the <span class="ph">Feeds API section</span> reaches a feed processing status of <var class="keyword varname">DONE</var> or <var class="keyword varname">CANCELLED</var>.</span></p>
<p>For more information, see <a href="../notifications/Notifications_FeedProcessingFinishedNotification.md" class="xref">FeedProcessingFinishedNotification</a> in the <span class="ph">Push Notifications</span> Reference.</p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="50%" headers="d325621e60 "><span class="keyword parmname">FBAOutboundShipmentStatus</span>
<p>Enumeration value: <samp class="ph codeph">FBAOutboundShipmentStatus</samp></p>
<p>XSD: <a href="https://m.media-amazon.com/images/G/01/mwsportal/doc/en_US/subscriptions/FBAOutboundShipmentStatusNotification.xsd" class="xref">FBAOutboundShipmentStatusNotification.xsd</a></p></td>
<td class="entry" data-valign="top" width="50%" headers="d325621e63 "><p>The <span class="keyword parmname">FBAOutboundShipmentStatus</span> notification is sent whenever Amazon creates or cancels a <span class="ph">Fulfillment by Amazon</span> shipment for a seller.</p>
<p>For more information, see <a href="../notifications/Notifications_FBAOutboundShipmentStatusNotification.md" class="xref">FBAOutboundShipmentStatusNotification</a> in the <span class="ph">Push Notifications</span> Reference.</p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="50%" headers="d325621e60 "><span class="keyword parmname">FeePromotion</span>
<p>Enumeration value: <samp class="ph codeph">FeePromotion</samp></p>
<p>XSD: <a href="http://g-ec2.images-amazon.com/images/G/01/mwsportal/doc/en_US/subscriptions/FeePromotionNotification.xsd" class="xref">FeePromotionNotification.xsd</a></p></td>
<td class="entry" data-valign="top" width="50%" headers="d325621e63 "><p><span class="ph">Sellers using <span class="ph">Amazon MWS</span> can benefit from time-limited fee promotions. To receive notification of available fee promotions, sellers must subscribe to <span class="keyword parmname">FeePromotion</span> notification. When the seller initially signs up for the subscription and <var class="keyword varname">isEnabled</var> is set to <em>true</em>, the seller receives all currently active promotions. Each promotion is sent as a single message. Subsequent promotion notifications are sent when the promotion becomes active. </span></p>
<p>For more information, see <a href="../notifications/Notifications_FeePromotionNotification.md" class="xref">FeePromotionNotification</a> in the <span class="ph">Amazon MWS</span> <span class="ph">Push Notifications</span> Reference.</p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="50%" headers="d325621e60 "><span class="keyword parmname">FulfillmentOrderStatus</span>
<p>Enumeration value: <samp class="ph codeph">FulfillmentOrderStatus</samp></p>
<p>XSD: <a href="http://g-ec2.images-amazon.com/images/G/01/mwsportal/doc/en_US/subscriptions/FulfillmentOrderStatusNotification.xsd" class="xref">FulfillmentOrderStatusNotification.xsd</a></p></td>
<td class="entry" data-valign="top" width="50%" headers="d325621e63 "><p>The <span class="keyword parmname">FulfillmentOrderStatus</span> notification is sent whenever there is a change in the status of a <span class="ph">Multi-Channel Fulfillment</span> fulfillment order. See <a href="../notifications/Notifications_FulfillmentOrderStatusNotification.md#FulfillmentOrderStatusNotification__FulfillmentOrderStatus_row" class="xref"><span class="keyword parmname">FulfillmentOrderStatus</span></a> for the events that can trigger a status change.</p>
<p>This notification is only for <span class="ph">Multi-Channel Fulfillment</span> orders where you use your FBA inventory to fulfill orders not sold on Amazon. To track FBA inventory sold on Amazon, use the <a href="../reports/Reports_ReportType.md#ReportTypeCategories__FBAReports" class="xref">MWS Reports API</a>.</p>
<p>For more information, see <a href="../notifications/Notifications_FulfillmentOrderStatusNotification.md" class="xref">FulfillmentOrderStatusNotification</a> in the <span class="ph">Amazon MWS</span> <span class="ph">Push Notifications</span> Reference.</p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="50%" headers="d325621e60 "><span class="keyword parmname">ReportProcessingFinished</span>
<p>Enumeration value: <samp class="ph codeph">ReportProcessingFinished</samp></p>
<p>XSD: <a href="https://m.media-amazon.com/images/G/01/mwsportal/doc/en_US/subscriptions/ReportProcessingFinishedNotification.xsd" class="xref">ReportProcessingFinishedNotification.xsd</a></p></td>
<td class="entry" data-valign="top" width="50%" headers="d325621e63 "><p><span class="ph">The <span class="keyword parmname">ReportProcessingFinished</span> notification is sent whenever any report that you have requested using the <span class="ph">Reports API section</span> reaches a report processing status of <var class="keyword varname">DONE</var>, <var class="keyword varname">CANCELLED</var>, or <var class="keyword varname">DONE_NO_DATA</var>.</span></p>
<p>For more information, see <a href="../notifications/Notifications_ReportProcessingFinishedNotification.md" class="xref">ReportProcessingFinishedNotification</a> in the <span class="ph">Amazon MWS</span> <span class="ph">Push Notifications</span> Reference.</p></td>
</tr>
</tbody>
</table>

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
