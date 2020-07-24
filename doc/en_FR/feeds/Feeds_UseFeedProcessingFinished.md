<div id="MWSDX_noscript">

JavaScript is currently disabled in your browser.  
To use the Amazon MWS documentation, you must enable JavaScript in your
browser.

</div>

<div id="MWSDX_divtop">

[![Amazon
Services](https://images-na.ssl-images-amazon.com/images/G/08/mwsportal/fr_FR/amazonservices.gif "Amazon Services")](http://services.amazon.fr)  
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

<div id="Feeds_UseFeedProcessingFinished" class="nested0">

Use FeedProcessingFinishedNotification when submitting a feed
=============================================================

<div class="body">

When submitting a feed, Amazon recommends using the
<a href="../notifications/Notifications_FeedProcessingFinishedNotification.md" class="xref">FeedProcessingFinishedNotification</a>
notification to find out when feed processing is complete. This
eliminates the need to repeatedly poll the <span
class="keyword apiname">GetFeedSubmissionList</span> operation to find
out when feed processing is complete.

**To submit a feed**

1.  Subscribe to the <span
    class="keyword parmname">FeedProcessingFinishedNotification</span>
    notification.

    This is a one-time task. The <span
    class="keyword parmname">FeedProcessingFinishedNotification</span>
    notification tells you when feed processing is complete. For
    information about subscribing to this notification, see
    <a href="../notifications/Notifications_Overview.md" class="xref">What you should know about Amazon MWS push notifications</a>.

2.  Call the
    <a href="../feeds/Feeds_SubmitFeed.md" class="xref">SubmitFeed</a>
    operation to submit a feed.
    <div class="note note">

    <span class="notetitle">Note:</span> If you are subscribed to the
    <span
    class="keyword parmname">FeedProcessingFinishedNotification</span>
    notification in multiple marketplaces and you specify one or more of
    those marketplaces with a call to the <span
    class="keyword apiname">SubmitFeed</span> operation, you will
    receive a notification for each marketplace that you specify.

    </div>

3.  Wait for the <span
    class="keyword parmname">FeedProcessingFinishedNotification</span>
    notification.

    When feed processing is complete, Amazon sends you the <span
    class="keyword parmname">FeedProcessingFinishedNotification</span>
    notification with the <span
    class="keyword parmname">FeedProcessingStatus</span> element set to
    one of the following values:

    -   `DONE` - The feed was successfully submitted. Use the
        **FeedSubmissionId** value included in the notification as input
        for the
        <a href="../feeds/Feeds_GetFeedSubmissionResult.md" class="xref">GetFeedSubmissionResult</a>
        operation in Step 4.
    -   `CANCELLED` - The feed was cancelled by the seller or by Amazon.

4.  Call the
    <a href="../feeds/Feeds_GetFeedSubmissionResult.md" class="xref">GetFeedSubmissionResult</a>
    operation, specifying the <span
    class="keyword parmname">FeedSubmissionId</span> value from the
    <span
    class="keyword parmname">FeedProcessingFinishedNotification</span>
    notification that you received in Step 3.

    Amazon returns a processing report that describes which records in
    the feed were successful and which records generated errors.

    <div class="note note">

    <span class="notetitle">Note:</span> You have to set up a stream
    that <span class="ph">Amazon MWS</span> uses to write out the
    processing report when you submit the <span
    class="keyword apiname">GetFeedSubmissionResult</span> operation.
    Use the <span class="ph">Amazon MWS</span> <span class="ph">Feeds
    API section</span> client library code for the <span
    class="keyword apiname">GetFeedSubmissionResult</span> operation to
    create the stream.

    </div>

5.  Analyze the processing report, correct any errors in the file or
    transmission, and resubmit the feed using the <span
    class="keyword apiname">SubmitFeed</span> operation. Repeat the
    process until there are no errors in the processing report. When the
    processing report is error free, the transmission is complete.

</div>

<div class="related-links">

<div class="familylinks">

<div class="parentlink">

**Parent topic:**
<a href="../feeds/Feeds_Overview.md" class="link">What you should know about the Amazon MWS Feeds API section</a>

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
