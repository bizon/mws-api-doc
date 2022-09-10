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

<div id="Notifications_FeedProcessingFinishedNotification"
class="nested0">

# FeedProcessingFinishedNotification

<div class="body">

<span class="ph">The <span
class="keyword parmname">FeedProcessingFinished</span> notification is
sent whenever any feed that you have submitted using the <span
class="ph">Feeds API section</span> reaches a feed processing status of
`DONE` or `CANCELLED`.</span>

<div class="section">

## Availability

This notification is available in all marketplaces.

</div>

<div class="section">

## Elements

This is the root element of the
<a href="https://m.media-amazon.com/images/G/01/mwsportal/doc/en_US/subscriptions/FeedProcessingFinishedNotification.xsd" class="xref">FeedProcessingFinishedNotification.xsd</a>
schema:

<div class="tablenoborder">

| Name                                                                                                                                                                                                          | Description                                                                                                                 |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------|
| <a href="#FeedProcessingFinishedNotification" class="xref" title="The root element of the payload for the notification that is sent when feed processing is complete.">FeedProcessingFinishedNotification</a> | <span class="ph">The root element of the payload for the notification that is sent when feed processing is complete.</span> |

</div>

</div>

</div>

<div id="FeedProcessingFinishedNotification" class="topic nested1">

## FeedProcessingFinishedNotification

<div class="body">

<span class="ph">The root element of the payload for the notification
that is sent when feed processing is complete.</span>

<div class="section">

### FeedProcessingFinishedNotification Elements

The following table shows the child elements of the <span
class="keyword parmname">FeedProcessingFinishedNotification</span>
element:

<div class="tablenoborder">

<table id="FeedProcessingFinishedNotification__table_v4j_lkj_ll" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d198836e169" class="entry" data-valign="top" width="50%">Name</th>
<th id="d198836e172" class="entry" data-valign="top" width="50%">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="50%" headers="d198836e169 "><span class="keyword parmname">SellerId</span></td>
<td class="entry" data-valign="top" width="50%" headers="d198836e172 ">The <span class="keyword parmname">SellerId</span> value that you specified with a call to the <a href="../feeds/Feeds_SubmitFeed.md" class="xref">SubmitFeed</a> operation, which initiated the feed submission process. For more information, see <a href="../feeds/Feeds_Overview.md" class="xref">What you should know about the Amazon MWS Feeds API section</a>.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="50%" headers="d198836e169 "><span class="keyword parmname">FeedSubmissionId</span></td>
<td class="entry" data-valign="top" width="50%" headers="d198836e172 "><span class="ph">A unique feed submission identifier.</span> Use this value to identify the feed submission that this notification is associated with. Pass this value to the <a href="../feeds/Feeds_GetFeedSubmissionResult.md" class="xref">GetFeedSubmissionResult</a> operation to get a feed processing report. For more information, see <a href="../feeds/Feeds_Overview.md" class="xref">What you should know about the Amazon MWS Feeds API section</a>.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="50%" headers="d198836e169 "><span class="keyword parmname">FeedType</span></td>
<td class="entry" data-valign="top" width="50%" headers="d198836e172 ">The <span class="keyword parmname">FeedType</span> value that you specified with a call to the <a href="../feeds/Feeds_SubmitFeed.md" class="xref">SubmitFeed</a> operation, which initiated the feed submission process. For more information, see <a href="../feeds/Feeds_Overview.md" class="xref">What you should know about the Amazon MWS Feeds API section</a>.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr id="FeedProcessingFinishedNotification__FulfillmentOrderStatus_row" class="even row">
<td class="entry" data-valign="top" width="50%" headers="d198836e169 "><span class="keyword parmname">FeedProcessingStatus</span></td>
<td class="entry" data-valign="top" width="50%" headers="d198836e172 ">The processing status of the feed submission. This notification is only sent when the processing status reaches one of two terminal states: <var class="keyword varname">DONE</var>, or <var class="keyword varname">CANCELLED</var>. In other words, the notification is sent only when feed processing is complete. For a complete list of feed processing states, see <a href="../feeds/Feeds_FeedProcessingStatus.md" class="xref">FeedProcessingStatus enumeration</a>.
<p><span class="ph">Type: xs:string</span></p></td>
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
