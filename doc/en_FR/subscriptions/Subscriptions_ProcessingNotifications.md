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

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr class="header">
<th>XSD</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><a href="http://g-ec2.images-amazon.com/images/G/01/mwsportal/doc/en_US/subscriptions/MWSPushNotification.xsd" class="xref">MWSPushNotification.xsd</a></td>
<td><p>Defines the basic structure of the notification. Each <span class="keyword parmname">Notification</span> element contains a notification (in the <span class="keyword parmname">NotificationPayload</span> child element) and information about the notification (in the <span class="keyword parmname">NotificationMetaData</span> child element).</p>
<div class="note note">
<span class="notetitle">Note:</span> If you are using this schema for runtime validation, future additions to the <span class="keyword parmname">NotificationPayload</span> element will invalidate the existing version of the schema, without prior notice.
</div>
<p>The contents of the <span class="keyword parmname">NotificationPayload</span> child element will vary depending on which notification you have subscribed to. Each notification is described by its own XSD.</p>
<p>For more information, see <a href="../notifications/Notifications_MWSPushNotification.html" class="xref">MWSPushNotification</a> in the <span class="ph">Amazon MWS</span> <span class="ph">Push Notifications</span> Reference.</p></td>
</tr>
<tr class="even">
<td><a href="http://g-ec2.images-amazon.com/images/G/01/mwsportal/doc/en_US/subscriptions/MWSPushNotificationCommon.xsd" class="xref">MWSPushNotificationCommon.xsd</a></td>
<td><span class="ph">Contains common types that are used by all notifications that are contained in the <span class="keyword parmname">NotificationPayload</span> element.</span>
<p>For more information, see <a href="../notifications/Notifications_MWSPushNotificationCommon.html" class="xref">MWSPushNotificationCommon</a> in the <span class="ph">Amazon MWS</span> <span class="ph">Push Notifications</span> Reference.</p></td>
</tr>
<tr class="odd">
<td><a href="http://g-ec2.images-amazon.com/images/G/01/mwsportal/doc/en_US/subscriptions/TestNotification.xsd" class="xref">TestNotification.xsd</a></td>
<td><span class="ph">Describes the contents of the <span class="keyword parmname">NotificationPayload</span> element for a test notification sent by using the <span class="keyword apiname">SendTestNotificationToDestination</span> operation.</span>
<p>For more information, see <a href="../notifications/Notifications_TestNotification.html" class="xref">TestNotification</a> in the <span class="ph">Amazon MWS</span> <span class="ph">Push Notifications</span> Reference.</p></td>
</tr>
</tbody>
</table>

</div>

</div>

<div class="related-links">

<div class="familylinks">

<div class="parentlink">

**Parent topic:** [What you should know about the Amazon MWS
Subscriptions API section](../subscriptions/Subscriptions_Overview.html)

</div>

</div>

<div class="relinfo">

**Related information**  

<div>

[Receiving
notifications](../subscriptions/Subscriptions_ReceivingNotifications.html "Describes how to set up a Destination to receive notifications.")

</div>

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