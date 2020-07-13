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

<div id="Notifications_Overview" class="nested0">

# What you should know about Amazon MWS push notifications

<div class="body">

The <span class="ph">Amazon MWS</span> push notifications enable you to
receive information that is relevant to your business with Amazon
without having to poll the <span class="ph">Amazon MWS</span> service.
Instead, the information is sent directly to you when an event occurs to
which you are subscribed. For more information about how to subscribe to
receive notifications, see [Subscriptions
Overview](../subscriptions/Subscriptions_Overview.md) in the
<span class="ph">Amazon MWS</span> <span class="ph">Subscriptions API
section</span> reference.

The following table describes the <span class="ph">Amazon MWS</span>
push notifications:

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead>
<tr class="header">
<th>Operation</th>
<th>Description</th>
<th>Availability</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><a href="Notifications_AnyOfferChangedNotification.md" class="xref">AnyOfferChangedNotification</a>
<p>XSD: <a href="http://g-ec2.images-amazon.com/images/G/01/mwsportal/doc/en_US/subscriptions/AnyOfferChangedNotification.xsd" class="xref">AnyOfferChangedNotification.xsd</a></p></td>
<td><p>The <span class="keyword parmname">AnyOfferChanged</span> notification is sent whenever there is a listing change for any of the top 20 offers, by condition (new or used), or if the external price (the price from other retailers) changes for an item that you sell. The top 20 offers are determined by the landed price, which is the price plus shipping minus Amazon Points. If multiple sellers are charging the same landed price, the results will be returned in random order.</p>
<p>You will only receive <span class="keyword parmname">AnyOfferChanged</span> notifications for items for which you have active offers. You cannot subscribe to notifications for items for which you do not have active offers.</p></td>
<td><span class="ph">All marketplaces.</span></td>
</tr>
<tr class="even">
<td><a href="Notifications_FeedProcessingFinishedNotification.md" class="xref">FeedProcessingFinishedNotification</a>
<p>XSD: <a href="https://m.media-amazon.com/images/G/01/mwsportal/doc/en_US/subscriptions/FeedProcessingFinishedNotification.xsd" class="xref">FeedProcessingFinishedNotification.xsd</a></p></td>
<td><span class="ph">The <span class="keyword parmname">FeedProcessingFinished</span> notification is sent whenever any feed that you have submitted using the <span class="ph">Feeds API section</span> reaches a feed processing status of <var class="keyword varname">DONE</var> or <var class="keyword varname">CANCELLED</var>.</span></td>
<td><span class="ph">All marketplaces.</span></td>
</tr>
<tr class="odd">
<td><a href="Notifications_FeePromotionNotification.md" class="xref">FeePromotionNotification</a>
<p>XSD: <a href="http://g-ec2.images-amazon.com/images/G/01/mwsportal/doc/en_US/subscriptions/FeePromotionNotification.xsd" class="xref">FeePromotionNotification.xsd</a></p></td>
<td><span class="ph">Sellers using <span class="ph">Amazon MWS</span> can benefit from time-limited fee promotions. To receive notification of available fee promotions, sellers must subscribe to <span class="keyword parmname">FeePromotion</span> notification. When the seller initially signs up for the subscription and <var class="keyword varname">isEnabled</var> is set to <em>true</em>, the seller receives all currently active promotions. Each promotion is sent as a single message. Subsequent promotion notifications are sent when the promotion becomes active. </span></td>
<td><span class="ph">All marketplaces.</span></td>
</tr>
<tr class="even">
<td><a href="Notifications_FBAOutboundShipmentStatusNotification.md" class="xref">FBAOutboundShipmentStatusNotification</a>
<p>XSD: <a href="https://m.media-amazon.com/images/G/01/mwsportal/doc/en_US/subscriptions/FBAOutboundShipmentStatusNotification.xsd" class="xref">FBAOutboundShipmentStatusNotification.xsd</a></p></td>
<td><p>The <span class="keyword parmname">FBAOutboundShipmentStatus</span> notification is sent whenever Amazon creates or cancels a <span class="ph">Fulfillment by Amazon</span> shipment for a seller.</p></td>
<td><span class="ph">All marketplaces except Brazil and China.</span></td>
</tr>
<tr class="odd">
<td><a href="Notifications_FulfillmentOrderStatusNotification.md" class="xref">FulfillmentOrderStatusNotification</a>
<p>XSD: <a href="http://g-ec2.images-amazon.com/images/G/01/mwsportal/doc/en_US/subscriptions/FulfillmentOrderStatusNotification.xsd" class="xref">FulfillmentOrderStatusNotification.xsd</a></p></td>
<td><p>The <span class="keyword parmname">FulfillmentOrderStatus</span> notification is sent whenever there is a change in the status of a <span class="ph">Multi-Channel Fulfillment</span> fulfillment order. See <a href="Notifications_FulfillmentOrderStatusNotification.md#FulfillmentOrderStatusNotification__FulfillmentOrderStatus_row" class="xref"><span class="keyword parmname">FulfillmentOrderStatus</span></a> for the events that can trigger a status change.</p></td>
<td><span class="ph">All marketplaces.</span></td>
</tr>
<tr class="even">
<td><a href="Notifications_ReportProcessingFinishedNotification.md" class="xref">ReportProcessingFinishedNotification</a>
<p>XSD: <a href="https://m.media-amazon.com/images/G/01/mwsportal/doc/en_US/subscriptions/ReportProcessingFinishedNotification.xsd" class="xref">ReportProcessingFinishedNotification.xsd</a></p></td>
<td><span class="ph">The <span class="keyword parmname">ReportProcessingFinished</span> notification is sent whenever any report that you have requested using the <span class="ph">Reports API section</span> reaches a report processing status of <var class="keyword varname">DONE</var>, <var class="keyword varname">CANCELLED</var>, or <var class="keyword varname">DONE_NO_DATA</var>.</span></td>
<td><span class="ph">All marketplaces.</span></td>
</tr>
<tr class="odd">
<td><a href="Notifications_MWSPushNotification.md" class="xref">MWSPushNotification</a>
<p>XSD: <a href="http://g-ec2.images-amazon.com/images/G/01/mwsportal/doc/en_US/subscriptions/MWSPushNotification.xsd" class="xref">MWSPushNotification.xsd</a></p></td>
<td><p>Defines the basic structure of the notification. Each <span class="keyword parmname">Notification</span> element contains a notification (in the <span class="keyword parmname">NotificationPayload</span> child element) and information about the notification (in the <span class="keyword parmname">NotificationMetaData</span> child element).</p>
<div class="note note">
<span class="notetitle">Note:</span> If you are using this schema for runtime validation, future additions to the <span class="keyword parmname">NotificationPayload</span> element will invalidate the existing version of the schema, without prior notice.
</div>
<p>The contents of the <span class="keyword parmname">NotificationPayload</span> child element will vary depending on which notification you have subscribed to. Each notification is described by its own XSD.</p></td>
<td><span class="ph">All marketplaces.</span></td>
</tr>
<tr class="even">
<td><a href="Notifications_MWSPushNotificationCommon.md" class="xref">MWSPushNotificationCommon</a>
<p>XSD: <a href="http://g-ec2.images-amazon.com/images/G/01/mwsportal/doc/en_US/subscriptions/MWSPushNotificationCommon.xsd" class="xref">MWSPushNotificationCommon.xsd</a></p></td>
<td><span class="ph">Contains common types that are used by all notifications that are contained in the <span class="keyword parmname">NotificationPayload</span> element.</span></td>
<td><span class="ph">All marketplaces.</span></td>
</tr>
<tr class="odd">
<td><a href="Notifications_TestNotification.md" class="xref">TestNotification</a>
<p>XSD: <a href="http://g-ec2.images-amazon.com/images/G/01/mwsportal/doc/en_US/subscriptions/TestNotification.xsd" class="xref">TestNotification.xsd</a></p></td>
<td><span class="ph">Describes the contents of the <span class="keyword parmname">NotificationPayload</span> element for a test notification sent by using the <span class="keyword apiname">SendTestNotificationToDestination</span> operation.</span></td>
<td><span class="ph">All marketplaces.</span></td>
</tr>
</tbody>
</table>

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
