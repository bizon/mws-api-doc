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

<div id="Subscriptions_ProcessingNotifications" class="nested0">

# Processing notifications

<div class="body">

Describes how to process a notification that you have received.

After you create a <span class="keyword parmname">Destination</span> and
subscribe to a <span class="keyword parmname">NotificationType</span>,
you will begin to receive notifications. The notifications that are sent
to you are in XML format. The format of the XML is described by the
following XSDs:

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d324429e69" class="entry" data-valign="top" width="50%">XSD</th>
<th id="d324429e72" class="entry" data-valign="top" width="50%">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="50%" headers="d324429e69 "><a href="http://g-ec2.images-amazon.com/images/G/01/mwsportal/doc/en_US/subscriptions/MWSPushNotification.xsd" class="xref">MWSPushNotification.xsd</a></td>
<td class="entry" data-valign="top" width="50%" headers="d324429e72 "><p>Defines the basic structure of the notification. Each <span class="keyword parmname">Notification</span> element contains a notification (in the <span class="keyword parmname">NotificationPayload</span> child element) and information about the notification (in the <span class="keyword parmname">NotificationMetaData</span> child element).</p>
<div class="note note">
<span class="notetitle">Note:</span> If you are using this schema for runtime validation, future additions to the <span class="keyword parmname">NotificationPayload</span> element will invalidate the existing version of the schema, without prior notice.
</div>
<p>The contents of the <span class="keyword parmname">NotificationPayload</span> child element will vary depending on which notification you have subscribed to. Each notification is described by its own XSD.</p>
<p>For more information, see <a href="../notifications/Notifications_MWSPushNotification.md" class="xref">MWSPushNotification</a> in the <span class="ph">Amazon MWS</span> <span class="ph">Push Notifications</span> Reference.</p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="50%" headers="d324429e69 "><a href="http://g-ec2.images-amazon.com/images/G/01/mwsportal/doc/en_US/subscriptions/MWSPushNotificationCommon.xsd" class="xref">MWSPushNotificationCommon.xsd</a></td>
<td class="entry" data-valign="top" width="50%" headers="d324429e72 "><span class="ph">Contains common types that are used by all notifications that are contained in the <span class="keyword parmname">NotificationPayload</span> element.</span>
<p>For more information, see <a href="../notifications/Notifications_MWSPushNotificationCommon.md" class="xref">MWSPushNotificationCommon</a> in the <span class="ph">Amazon MWS</span> <span class="ph">Push Notifications</span> Reference.</p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="50%" headers="d324429e69 "><a href="http://g-ec2.images-amazon.com/images/G/01/mwsportal/doc/en_US/subscriptions/TestNotification.xsd" class="xref">TestNotification.xsd</a></td>
<td class="entry" data-valign="top" width="50%" headers="d324429e72 "><span class="ph">Describes the contents of the <span class="keyword parmname">NotificationPayload</span> element for a test notification sent by using the <span class="keyword apiname">SendTestNotificationToDestination</span> operation.</span>
<p>For more information, see <a href="../notifications/Notifications_TestNotification.md" class="xref">TestNotification</a> in the <span class="ph">Amazon MWS</span> <span class="ph">Push Notifications</span> Reference.</p></td>
</tr>
</tbody>
</table>

</div>

</div>

<div class="related-links">

<div class="familylinks">

<div class="parentlink">

**Parent topic:**
<a href="../subscriptions/Subscriptions_Overview.md" class="link">What you should know about the Amazon MWS Subscriptions API section</a>

</div>

</div>

<div class="relinfo">

**Related information**  

<div>

<a href="../subscriptions/Subscriptions_ReceivingNotifications.md" class="link" title="Describes how to set up a Destination to receive notifications.">Receiving notifications</a>

</div>

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
