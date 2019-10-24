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

<div id="Notifications_MWSPushNotification" class="nested0">

# MWSPushNotification

<div class="body">

Defines the basic structure of the notification. Each
<span class="keyword parmname">Notification</span> element contains a
notification (in the
<span class="keyword parmname">NotificationPayload</span> child element)
and information about the notification (in the
<span class="keyword parmname">NotificationMetaData</span> child
element).

<div class="note note">

<span class="notetitle">Note:</span> If you are using this schema for
runtime validation, future additions to the
<span class="keyword parmname">NotificationPayload</span> element will
invalidate the existing version of the schema, without prior notice.

</div>

The contents of the
<span class="keyword parmname">NotificationPayload</span> child element
will vary depending on which notification you have subscribed to. Each
notification is described by its own XSD.

<div class="section">

## Availability

This notification is available in all marketplaces.

</div>

<div class="section">

## Elements

This is the root element of the
[MWSPushNotification.xsd](http://g-ec2.images-amazon.com/images/G/01/mwsportal/doc/en_US/subscriptions/MWSPushNotification.xsd)
schema:

<div class="tablenoborder">

| Name                                                                   | Description                                                    |
| ---------------------------------------------------------------------- | -------------------------------------------------------------- |
| [Notification](#Notification "The root element of all notifications.") | <span class="ph">The root element of all notifications.</span> |

</div>

These are the complex elements of the
<span class="keyword parmname">MWSPushNotification</span>
element:

<div class="tablenoborder">

| Name                                                                                    | Description                                                       |
| --------------------------------------------------------------------------------------- | ----------------------------------------------------------------- |
| [NotificationMetaData](#NotificationMetaData "The metadata for the notification.")      | <span class="ph">The metadata for the notification.</span>        |
| [NotificationPayload](#NotificationPayload "The notification that is being delivered.") | <span class="ph">The notification that is being delivered.</span> |

</div>

</div>

</div>

<div id="Notification" class="topic nested1">

## Notification

<div class="body">

<span class="ph">The root element of all notifications.</span>

<div class="section">

### Notification Elements

The following table shows the child elements of the
<span class="keyword parmname">Notification</span> element:

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
<td><span class="keyword parmname">NotificationMetaData</span></td>
<td><span class="ph">The metadata for the notification.</span>
<p>Required.</p>
<p>Type: <a href="#NotificationMetaData" class="xref" title="The metadata for the notification.">NotificationMetaData</a></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">NotificationPayload</span></td>
<td><span class="ph">The notification that is being delivered.</span>
<p>Required.</p>
<p>Type: <a href="#NotificationPayload" class="xref" title="The notification that is being delivered.">NotificationPayload</a></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="NotificationMetaData" class="topic nested1">

## NotificationMetaData

<div class="body">

<span class="ph">The metadata for the notification.</span>

<div class="section">

### NotificationMetaData Elements

The following table shows the child elements of the
<span class="keyword parmname">NotificationMetaData</span> element:

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
<td><span class="keyword parmname">NotificationType</span></td>
<td>Identifies the type of notification that is contained in the <span class="keyword parmname">NotificationPayload</span> element.
<div class="p">
<span class="keyword parmname">NotificationType</span> values:
<ul>
<li>AnyOfferChanged</li>
<li>FulfillmentOrderStatus</li>
<li>TestNotification</li>
</ul>
</div>
<p>Required.</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">PayloadVersion</span></td>
<td>The version of the notification that is contained in the <span class="keyword parmname">NotificationPayload</span> element.
<p>Required.</p>
<p>Type: <a href="Notifications_MWSPushNotificationCommon.html#SimpleTypes__VersionType" class="xref">VersionType</a></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">UniqueId</span></td>
<td>The unique identifier for this notification.
<p>Required.</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">PublishTime</span></td>
<td>The date and time that the notification was published. In <span class="ph"><a href="../dev_guide/DG_ISO8601.html" class="xref">ISO 8601 date time format</a></span>.
<p>Required.</p>
<p><span class="ph">Type: xs:dateTime</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">SellerId</span></td>
<td>The identifier of the seller that is receiving the notification.
<p>Required.</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">MarketplaceId</span></td>
<td>The identifier of the marketplace to which the notification pertains.
<p>Optional. Not present for events that are cross-marketplace or not marketplace-specific.</p>
<p>Type: <a href="Notifications_MWSPushNotificationCommon.html#SimpleTypes__MarketplaceType" class="xref">MarketplaceType</a></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="NotificationPayload" class="topic nested1">

## NotificationPayload

<div class="body">

<span class="ph">The notification that is being delivered.</span>

<div class="section">

### NotificationPayload Elements

The following table shows the child elements of the
<span class="keyword parmname">NotificationPayload</span> element:

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
<td><span class="keyword parmname">AnyOfferChangedNotification</span></td>
<td><p>The <span class="keyword parmname">AnyOfferChanged</span> notification is sent whenever there is a listing change for any of the top 20 offers, by condition (new or used), or if the external price (the price from other retailers) changes for an item that you sell. The top 20 offers are determined by the landed price, which is the price plus shipping minus Amazon Points. If multiple sellers are charging the same landed price, the results will be returned in random order.</p>
<p>You will only receive <span class="keyword parmname">AnyOfferChanged</span> notifications for items for which you have active offers. You cannot subscribe to notifications for items for which you do not have active offers.</p>
<p>Only one of the elements in this table is returned.</p>
<p>Type: <a href="Notifications_AnyOfferChangedNotification.html" class="xref">AnyOfferChangedNotification</a></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">FBAOutboundShipmentStatusNotification</span></td>
<td><p>The <span class="keyword parmname">FBAOutboundShipmentStatus</span> notification is sent whenever Amazon creates or cancels a <span class="ph">Fulfillment by Amazon</span> shipment for a seller.</p>
<p>Only one of the elements in this table is returned.</p>
<p>Type: <a href="Notifications_FBAOutboundShipmentStatusNotification.html" class="xref">FBAOutboundShipmentStatusNotification</a></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">FulfillmentOrderStatusNotification</span></td>
<td><p>The <span class="keyword parmname">FulfillmentOrderStatus</span> notification is sent whenever there is a change in the status of a <span class="ph">Multi-Channel Fulfillment</span> fulfillment order. See <a href="Notifications_FulfillmentOrderStatusNotification.html#FulfillmentOrderStatusNotification__FulfillmentOrderStatus_row" class="xref"><span class="keyword parmname">FulfillmentOrderStatus</span></a> for the events that can trigger a status change.</p>
<p>Only one of the elements in this table is returned.</p>
<p>Type: <a href="Notifications_FulfillmentOrderStatusNotification.html" class="xref">FulfillmentOrderStatusNotification</a></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">TestNotification</span></td>
<td><span class="ph">Describes the contents of the <span class="keyword parmname">NotificationPayload</span> element for a test notification sent by using the <span class="keyword apiname">SendTestNotificationToDestination</span> operation.</span>
<p>Only one of the elements in this table is returned.</p>
<p>Type: <a href="Notifications_TestNotification.html" class="xref">TestNotification</a></p></td>
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
section](../subscriptions/Subscriptions_Overview.html)

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