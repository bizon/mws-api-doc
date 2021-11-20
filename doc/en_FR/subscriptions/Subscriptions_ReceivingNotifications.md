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

<div id="Subscriptions_ReceivingNotifications" class="nested0">

# Receiving notifications

<div class="body">

Describes how to set up a <span
class="keyword parmname">Destination</span> to receive notifications.

To receive notifications, you must first create a <span
class="keyword parmname">Destination</span>. Currently, notifications
can only be sent to an <span class="ph">Amazon Simple Queue
Service</span> (<span class="ph">Amazon SQS</span>) standard queue.

<div id="Subscriptions_ReceivingNotifications__SQSQueue"
class="section">

## Receiving notifications from an Amazon SQS queue

To receive notifications from an <span class="ph">Amazon SQS</span>
queue, you must first create one. You can find instructions for setting
up an <span class="ph">Amazon SQS</span> queue at
<a href="http://aws.amazon.com/sqs/" class="xref">Amazon SQS</a>.

</div>

<div class="section">

## Granting Amazon MWS permission to write to your queue

After you set up your <span class="ph">Amazon SQS</span> queue, you must
follow these steps in order for <span class="ph">Amazon MWS</span> to
push notifications to your queue:

1.  Log in to the Amazon Web Services (AWS) Management Console using
    your Amazon AWS username and password.
2.  Click <span class="ph uicontrol">SQS</span> to open the <span
    class="ph">Amazon SQS</span> Management Console.
3.  Select the standard queue from which you want to receive
    notifications.
4.  Click the <span class="ph uicontrol">Permissions</span> tab.
5.  Click <span class="ph uicontrol">Add a Permission</span>.
6.  In the dialog that opens: set the <span
    class="ph uicontrol">Effect</span> to <span
    class="ph uicontrol">Allow</span>. Set the <span
    class="ph uicontrol">Principal</span> to 437568002678. Set the <span
    class="ph uicontrol">Actions</span> to <span
    class="ph uicontrol">SendMessage</span> and <span
    class="ph uicontrol">GetQueueAttributes</span>. Finally, click <span
    class="ph uicontrol">Add Permission</span> to save your changes.
7.  Make note of the URL for the queue. You can find this URL from the
    <span class="ph uicontrol">Details</span> pane of the queue that you
    selected above. This is the value you will specify in the
    <a href="Subscriptions_Datatypes.md#Destination" class="xref" title="A delivery channel that you create to receive notifications.">Destination</a>
    datatype.

<div class="p">

**Note:** If you are using server-side encryption (SSE), then you must
provide Amazon MWS access to your key using the
<a href="https://aws.amazon.com/kms" class="xref">AWS Key Management Service (KMS)</a>.
Consider using the following policy:

``` pre
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::437568002678:root"
      },
      "Action": [
        "kms:GenerateDataKey",
        "kms:Decrypt"
      ],
      "Resource": "*"
    }
  ]
}
```

</div>

See
<a href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-key-management.html" class="xref">Key Management</a>
for more information.

</div>

<div class="section">

## Processing notifications from your queue

There are several important properties of <span class="ph">Amazon
SQS</span> queues that you must understand in order to process
notifications properly:

-   **<span class="ph">Amazon MWS</span> does not support delivery to
    FIFO queues.** You must use <span class="ph">Amazon SQS</span>
    standard queues to receive notifications.

-   **<span class="ph">Amazon SQS</span> standard queues do not
    guarantee that notifications will be received in the order they were
    sent.** Although <span class="ph">Amazon SQS</span> makes a best
    effort to deliver notifications in order, you must design your
    application to accept notifications in any order.

-   **<span class="ph">Amazon SQS</span> standard queue notifications
    might be delivered more than once.** <span class="ph">Amazon
    SQS</span> stores copies of your notifications on multiple servers.
    In the event that one of these servers becomes unavailable when you
    receive or delete a notification, the unavailable server will still
    have a copy of that notification and it will attempt to deliver it
    when the server becomes available again. Therefore, you must design
    your application to accept multiple copies of any given
    notification.

    You can determine if a notification is a duplicate of a notification
    you have already received by looking at the <span
    class="keyword parmname">UniqueId</span> XML element of the
    notification. The <span class="keyword parmname">UniqueId</span> XML
    element can be found at: <span
    class="keyword parmname">/Notification/NotificationMetaData/UniqueId</span>.

For more information about processing notifications from <span
class="ph">Amazon SQS</span> queues, see the
<a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide" class="xref">Amazon Simple Queue Service Developer Guide</a>
and the
<a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/APIReference" class="xref">Amazon Simple Queue Service API Reference</a>
at the
<a href="https://aws.amazon.com/documentation/" class="xref">AWS Documentation</a>
portal.

</div>

<div class="section">

## Related links

-   <a href="http://aws.amazon.com/sqs/" class="xref">Amazon SQS</a>
-   <a href="http://aws.amazon.com/documentation/sqs/" class="xref">Amazon SQS Documentation</a>
-   <a href="https://forums.aws.amazon.com/forum.jspa?forumID=12" class="xref">Amazon SQS Developer Discussion Forum</a>

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

<a href="../subscriptions/Subscriptions_ProcessingNotifications.md" class="link" title="Describes how to process a notification that you have received.">Processing notifications</a>

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
