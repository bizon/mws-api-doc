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

<div id="Feeds_Datatypes" class="nested0">

# Feeds Datatypes

<div class="body">

The following datatypes are used in the response elements of the <span
class="ph">Amazon Marketplace Web Service (Amazon MWS)</span> <span
class="ph">Feeds API section</span>:

<div class="tablenoborder">

| Name                                                                                                                    | Description                                                           |
|-------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------|
| <a href="#FeedSubmissionInfo" class="xref" title="Detailed information about a feed submission.">FeedSubmissionInfo</a> | <span class="ph">Detailed information about a feed submission.</span> |

</div>

</div>

<div id="FeedSubmissionInfo" class="topic nested1">

## FeedSubmissionInfo

<div class="body">

<span class="ph">Detailed information about a feed submission.</span>

<div class="section">

### Datatype content

The following table shows the elements of the <span
class="keyword parmname">FeedSubmissionInfo</span> datatype:

<div class="tablenoborder">

<table id="FeedSubmissionInfo__table_fbc_3mm_cr" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d121024e161" class="entry" data-valign="top" width="50%">Name</th>
<th id="d121024e164" class="entry" data-valign="top" width="50%">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="50%" headers="d121024e161 "><span class="keyword parmname">FeedSubmissionId</span></td>
<td class="entry" data-valign="top" width="50%" headers="d121024e164 "><span class="ph">A unique feed submission identifier.</span>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="50%" headers="d121024e161 "><span class="keyword parmname">FeedType</span></td>
<td class="entry" data-valign="top" width="50%" headers="d121024e164 "><span class="ph">The type of feed submitted. This is the <a href="../feeds/Feeds_FeedType.md" class="xref">FeedType</a> value that was provided to the <span class="keyword apiname">SubmitFeed</span> operation.</span>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="50%" headers="d121024e161 "><span class="keyword parmname">SubmittedDate</span></td>
<td class="entry" data-valign="top" width="50%" headers="d121024e164 "><span class="ph">The date and time when the feed was submitted.</span>
<p>In <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>.</p>
<p><span class="ph">Type: xs:dateTime</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="50%" headers="d121024e161 "><span class="keyword parmname">FeedProcessingStatus</span></td>
<td class="entry" data-valign="top" width="50%" headers="d121024e164 "><span class="ph">The processing status of the feed submission. For more information, see <a href="../feeds/Feeds_FeedProcessingStatus.md" class="xref">FeedProcessingStatus enumeration</a>.</span>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="50%" headers="d121024e161 "><span class="keyword parmname">StartedProcessingDate</span></td>
<td class="entry" data-valign="top" width="50%" headers="d121024e164 ">The date when the feed processing started.
<p>In <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>.</p>
<p><span class="ph">Type: xs:dateTime</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="50%" headers="d121024e161 "><span class="keyword parmname">CompletedProcessingDate</span></td>
<td class="entry" data-valign="top" width="50%" headers="d121024e164 ">The date when the feed processing completed.
<p>In <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>.</p>
<p><span class="ph">Type: xs:dateTime</span></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="RelatedActions" class="topic nested1">

## Related topics

<div class="body">

<a href="../feeds/Feeds_Overview.md" class="xref">What you should know about the Amazon MWS Feeds API section</a>

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
