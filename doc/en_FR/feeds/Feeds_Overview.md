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

<div id="Feeds_Overview" class="nested0">

# What you should know about the Amazon MWS Feeds API section

<div class="related-links">

## In this section

  - **[Use FeedProcessingFinishedNotification when submitting a
    feed](../feeds/Feeds_UseFeedProcessingFinished.html)**  
  - **[FeedTypes](../feeds/Feeds_FeedTypes.html)**  
  - **[Using the Content-MD5 hash with the SubmitFeed and
    GetFeedSubmissionResult operations](../feeds/Feeds_MD5.html)**  
  - **[Feeds Processing](../feeds/Feeds_Processing.html)**  
  - **[Using multiple
    marketplaces](../feeds/Feeds_EU_Global_Seller.html)**  

</div>

<div id="Feeds_FeedsOverview" class="topic concept nested1">

## Overview

<div class="body conbody">

The <span class="ph">Amazon MWS</span> <span class="ph">Feeds API</span>
section of the <span class="ph">Amazon Marketplace Web Service (Amazon
MWS)</span> API lets you upload inventory and order data to Amazon. You
can also use the <span class="ph">Amazon MWS</span>
<span class="ph">Feeds API</span> section to get information about the
processing of feeds.

The process for submitting feeds is as follows:

<div class="p">

1.  Submit an XML or flat file using the
    <span class="keyword apiname">SubmitFeed</span> operation along with
    an encrypted header and all required metadata, including a value
    from the
    [<span class="keyword apiname">FeedType</span>](../feeds/Feeds_FeedType.html).
    As with all submissions to <span class="ph">Amazon MWS</span>, you
    must also include authentication information. The
    <span class="keyword apiname">SubmitFeed</span> operation returns a
    FeedSubmissionId, which you can use to periodically check the status
    of the feed using the
    <span class="keyword apiname">GetFeedSubmissionList</span>
    operation.
    <div class="note note">
    <span class="notetitle">Note:</span> Rather than repeatedly polling
    the <span class="keyword apiname">GetFeedSubmissionList</span>
    operation to find out when feed processing is complete, Amazon
    recommends subscribing to the
    <span class="keyword parmname">FeedProcessingFinishedNotification</span>
    notification. After you subscribe, for each feed you submit Amazon
    will send you a push notification when feed processing is complete.
    This makes your workflow more efficient and helps you avoid
    exceeding the throttling limits of the
    <span class="keyword apiname">GetFeedSubmissionList</span>
    operation. For more information, see
    [FeedProcessingFinishedNotification](../notifications/Notifications_FeedProcessingFinishedNotification.html).
    </div>
2.  If <span class="ph">Amazon MWS</span> is still processing a request,
    the <span class="keyword parmname">FeedProcessingStatus</span>
    element of the
    <span class="keyword apiname">GetFeedSubmissionList</span> operation
    returns a status of \_IN\_PROGRESS\_. If the processing is complete,
    a status of \_DONE\_ is returned.
3.  When the feed processing is complete, you can use the
    <span class="keyword apiname">GetFeedSubmissionResult</span>
    operation to receive a processing report that describes which
    records in the feed were successful and which records generated
    errors. Note that you have to set up a stream that
    <span class="ph">Amazon MWS</span> uses to write out the report when
    you submit the
    <span class="keyword apiname">GetFeedSubmissionResult</span>
    operation. Use the <span class="ph">Amazon MWS</span>
    <span class="ph">Feeds API</span> section client library code for
    the <span class="keyword apiname">GetFeedSubmissionResult</span>
    operation to create the stream.
4.  Analyze the processing report, correct any errors in the file or
    transmission, and resubmit the feed using the
    <span class="keyword apiname">SubmitFeed</span> operation. Repeat
    the process until there are no errors in the processing report. When
    the processing report is error free, the transmission is complete.

</div>

The following flowchart shows the process for submitting a feed:

![](Feed_flowchart.png)

The <span class="ph">Feeds API</span> section contains the following
operations:

<div class="p">

<div class="tablenoborder">

| Operation                                                                                                                                                        | Description                                                                                                                     | Availability                              |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------- |
| [SubmitFeed](../feeds/Feeds_SubmitFeed.html)                                                                                                                     | <span class="ph">Uploads a feed for processing by <span class="ph">Amazon MWS</span>.</span>                                    | <span class="ph">All marketplaces.</span> |
| [GetFeedSubmissionList](Feeds_GetFeedSubmissionList.html "Returns a list of all feed submissions submitted in the previous 90 days.")                            | <span class="ph">Returns a list of all feed submissions submitted in the previous 90 days.</span>                               | <span class="ph">All marketplaces.</span> |
| [GetFeedSubmissionListByNextToken](Feeds_GetFeedSubmissionListByNextToken.html "Returns a list of feed submissions using the NextToken parameter.")              | <span class="ph">Returns a list of feed submissions using the <span class="keyword parmname">NextToken</span> parameter.</span> | <span class="ph">All marketplaces.</span> |
| [GetFeedSubmissionCount](Feeds_GetFeedSubmissionCount.html "Returns a count of the feeds submitted in the previous 90 days.")                                    | <span class="ph">Returns a count of the feeds submitted in the previous 90 days.</span>                                         | <span class="ph">All marketplaces.</span> |
| [CancelFeedSubmissions](Feeds_CancelFeedSubmissions.html "Cancels one or more feed submissions and returns a count of the feed submissions that were canceled.") | <span class="ph">Cancels one or more feed submissions and returns a count of the feed submissions that were canceled.</span>    | <span class="ph">All marketplaces.</span> |
| [GetFeedSubmissionResult](../feeds/Feeds_GetFeedSubmissionResult.html)                                                                                           | <span class="ph">Returns the feed processing report and the Content-MD5 header.</span>                                          | <span class="ph">All marketplaces.</span> |

</div>

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
