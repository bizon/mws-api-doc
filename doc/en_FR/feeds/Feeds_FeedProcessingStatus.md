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

<div id="Feeds_FeedProcessingStatus" class="nested0">

# FeedProcessingStatus enumeration

Enumerates all the feed processing status values that are available
through the <span class="ph">Feeds API</span> section.

<div id="Description" class="topic concept nested1">

## Description

<div class="body conbody">

The <span class="keyword apiname">FeedProcessingStatus</span>
enumeration describes the processing status of a submitted
feed.

</div>

</div>

<div id="FeedProcessingStatus_Enumeration" class="topic reference nested1">

## FeedProcessingStatus enumeration

<div class="body refbody">

<div class="tablenoborder">

| Value                                                                   | Description                                                                                                                                                                                                                                                                                           |
| ----------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| <span class="keyword parmname">\_AWAITING\_ASYNCHRONOUS\_REPLY\_</span> | The request is being processed, but is waiting for external information before it can complete.                                                                                                                                                                                                       |
| <span class="keyword parmname">\_CANCELLED\_</span>                     | The request has been aborted due to a fatal error.                                                                                                                                                                                                                                                    |
| <span class="keyword parmname">\_DONE\_</span>                          | The request has been processed. You can call the [GetFeedSubmissionResult](../feeds/Feeds_GetFeedSubmissionResult.md) operation to receive a processing report that describes which records in the feed were successful and which records generated errors.                                         |
| <span class="keyword parmname">\_IN\_PROGRESS\_</span>                  | The request is being processed.                                                                                                                                                                                                                                                                       |
| <span class="keyword parmname">\_IN\_SAFETY\_NET\_</span>               | The request is being processed, but the system has determined that there is a potential error with the feed (for example, the request will remove all inventory from a seller's account.) An Amazon seller support associate will contact the seller to confirm whether the feed should be processed. |
| <span class="keyword parmname">\_SUBMITTED\_</span>                     | The request has been received, but has not yet started processing.                                                                                                                                                                                                                                    |
| <span class="keyword parmname">\_UNCONFIRMED\_</span>                   | The request is pending.                                                                                                                                                                                                                                                                               |

</div>

</div>

</div>

<div id="RelatedActions" class="topic nested1">

## Related topics

<div class="body">

[What you should know about the Amazon MWS Feeds API
section](../feeds/Feeds_Overview.md)

[SubmitFeed](../feeds/Feeds_SubmitFeed.md)

[GetFeedSubmissionList](Feeds_GetFeedSubmissionList.html "Returns a list of all feed submissions submitted in the previous 90 days.")

[GetFeedSubmissionListByNextToken](Feeds_GetFeedSubmissionListByNextToken.html "Returns a list of feed submissions using the NextToken parameter.")

[GetFeedSubmissionCount](Feeds_GetFeedSubmissionCount.html "Returns a count of the feeds submitted in the previous 90 days.")

[CancelFeedSubmissions](Feeds_CancelFeedSubmissions.html "Cancels one or more feed submissions and returns a count of the feed submissions that were canceled.")

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
