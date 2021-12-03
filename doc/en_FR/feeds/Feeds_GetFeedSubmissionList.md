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

<div id="Feeds_GetFeedSubmissionList" class="nested0">

# GetFeedSubmissionList

<div class="body">

<span class="ph">Returns a list of all feed submissions submitted in the
previous 90 days.</span>

</div>

<div id="Description" class="topic concept nested1">

## Description

<div class="body conbody">

The <span class="keyword apiname">GetFeedSubmissionList</span> operation
returns a list of feed submissions submitted in the previous 90 days
that match the query parameters. Use this operation to determine the
status of a feed submission by passing in the <span
class="keyword parmname">FeedProcessingId</span> that was returned by
the <span class="keyword apiname">SubmitFeed</span> operation.

The <span class="keyword apiname">GetFeedSubmissionList</span> request
can return a maximum of 100 results. If there are additional results to
return, <span class="keyword parmname">HasNext</span> is returned in the
response with a `true` value. To retrieve all the results, you can pass
the value of the <span class="keyword parmname">NextToken</span>
parameter to the <span
class="keyword apiname">GetFeedSubmissionListByNextToken</span>
operation and repeat until <span class="keyword parmname">HasNext</span>
is `false`.

<div class="section">

### Availability

This operation is available in all marketplaces.

</div>

<div class="section">

### Throttling

<div class="p">

<div class="tablenoborder">

| Maximum request quota | Restore rate                 | Hourly request quota |
|-----------------------|------------------------------|----------------------|
| 10 requests           | One request every 45 seconds | 80 requests per hour |

</div>

<span class="ph">For definitions of throttling terminology and for a
complete explanation of throttling, see
<a href="../dev_guide/DG_Throttling.md" class="xref">Throttling: Limits to how often you can submit requests</a>
in the <span class="ph">Amazon MWS Developer Guide</span>.</span>

</div>

</div>

</div>

</div>

<div id="RequestParameters" class="topic reference nested1">

## Request parameters

<div class="body refbody">

<div class="section">

<span class="ph">For more information about the request parameters that
are required for all <span class="ph">Amazon MWS</span> operations, see
<a href="../dev_guide/DG_RequiredRequestParameters.md" class="xref">Required request parameters</a>
in the <span class="ph">Amazon MWS Developer Guide</span>.</span>

</div>

<div class="tablenoborder">

<table id="RequestParameters__RequestParametersTable" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d127428e207" class="entry" data-valign="top" width="29.843893480257115%">Name</th>
<th id="d127428e210" class="entry" data-valign="top" width="37.83287419651056%">Description</th>
<th id="d127428e213" class="entry" data-valign="top" width="9.182736455463727%">Required</th>
<th id="d127428e216" class="entry" data-valign="top" width="23.140495867768593%">Valid Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="29.843893480257115%" headers="d127428e207 "><span class="keyword parmname">FeedSubmissionIdList</span></td>
<td class="entry" data-valign="top" width="37.83287419651056%" headers="d127428e210 ">A structured list of no more than 100 <span class="keyword parmname">FeedSubmmissionId</span> values. If you pass in <span class="keyword parmname">FeedSubmmissionId</span> values in a request, other query conditions are ignored.</td>
<td class="entry" data-valign="top" width="9.182736455463727%" headers="d127428e213 ">No</td>
<td class="entry" data-valign="top" width="23.140495867768593%" headers="d127428e216 ">Default: All
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="29.843893480257115%" headers="d127428e207 "><span class="keyword parmname">MaxCount</span></td>
<td class="entry" data-valign="top" width="37.83287419651056%" headers="d127428e210 ">A non-negative integer that indicates the maximum number of feed submissions to return in the list. If you specify a number greater than 100, the request is rejected.</td>
<td class="entry" data-valign="top" width="9.182736455463727%" headers="d127428e213 ">No</td>
<td class="entry" data-valign="top" width="23.140495867768593%" headers="d127428e216 ">Default: 10
<p><span class="ph">Type: xs:nonNegativeInteger</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="29.843893480257115%" headers="d127428e207 "><span class="keyword parmname">FeedTypeList</span></td>
<td class="entry" data-valign="top" width="37.83287419651056%" headers="d127428e210 "><span class="ph">A structured list of one or more <a href="../feeds/Feeds_FeedType.md" class="xref">FeedType</a> values by which to filter the list of feed submissions.</span></td>
<td class="entry" data-valign="top" width="9.182736455463727%" headers="d127428e213 ">No</td>
<td class="entry" data-valign="top" width="23.140495867768593%" headers="d127428e216 ">Default: All feed types
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="29.843893480257115%" headers="d127428e207 "><span class="keyword parmname">FeedProcessingStatusList</span></td>
<td class="entry" data-valign="top" width="37.83287419651056%" headers="d127428e210 ">A structured list of one or more feed processing statuses by which to filter the list of feed submissions.</td>
<td class="entry" data-valign="top" width="9.182736455463727%" headers="d127428e213 ">No</td>
<td class="entry" data-valign="top" width="23.140495867768593%" headers="d127428e216 ">Default: All feed processing status types. For valid values, see <a href="../feeds/Feeds_FeedProcessingStatus.md" class="xref">FeedProcessingStatus enumeration</a>.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="29.843893480257115%" headers="d127428e207 "><span class="keyword parmname">SubmittedFromDate</span></td>
<td class="entry" data-valign="top" width="37.83287419651056%" headers="d127428e210 "><span class="ph">The earliest submission date that you are looking for, in <a href="../dev_guide/DG_ISO8601.md" class="xref">ISO8601 date format</a>.</span></td>
<td class="entry" data-valign="top" width="9.182736455463727%" headers="d127428e213 ">No</td>
<td class="entry" data-valign="top" width="23.140495867768593%" headers="d127428e216 ">Default: 90 days ago
<p>In <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>.</p>
<p><span class="ph">Type: xs:dateTime</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="29.843893480257115%" headers="d127428e207 "><span class="keyword parmname">SubmittedToDate</span></td>
<td class="entry" data-valign="top" width="37.83287419651056%" headers="d127428e210 "><span class="ph">The latest submission date that you are looking for, in <a href="../dev_guide/DG_ISO8601.md" class="xref">ISO8601 date format</a>.</span></td>
<td class="entry" data-valign="top" width="9.182736455463727%" headers="d127428e213 ">No</td>
<td class="entry" data-valign="top" width="23.140495867768593%" headers="d127428e216 ">Default: Now
<p>In <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>.</p>
<p><span class="ph">Type: xs:dateTime</span></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div id="ResponseElements" class="topic reference nested1">

## Response elements

<div class="body refbody">

<div class="tablenoborder">

<table id="ResponseElements__ResponseElementsTable" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d127428e430" class="entry" data-valign="top" width="29.843893480257115%">Name</th>
<th id="d127428e433" class="entry" data-valign="top" width="37.83287419651056%">Description</th>
<th id="d127428e436" class="entry" data-valign="top" width="9.182736455463727%">Required</th>
<th id="d127428e439" class="entry" data-valign="top" width="23.140495867768593%">Valid Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="29.843893480257115%" headers="d127428e430 "><span class="keyword parmname">NextToken</span></td>
<td class="entry" data-valign="top" width="37.83287419651056%" headers="d127428e433 ">A generated string used to pass information to another call. Pass the <span class="keyword parmname">NextToken</span> value to the
<p><span class="ph">For information about standard request requirements, see <a href="../dev_guide/DG_RequiredRequestParameters.md" class="xref">Required request parameters</a>.</span></p>
<span class="keyword apiname">GetFeedSubmissionListByNextToken</span> operation if the value of <span class="keyword parmname">HasNext</span> is <var class="keyword varname">true</var>.</td>
<td class="entry" data-valign="top" width="9.182736455463727%" headers="d127428e436 ">No</td>
<td class="entry" data-valign="top" width="23.140495867768593%" headers="d127428e439 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="29.843893480257115%" headers="d127428e430 "><span class="keyword parmname">SubmittedFromDate</span></td>
<td class="entry" data-valign="top" width="37.83287419651056%" headers="d127428e433 "><span class="ph">The earliest submission date that you are looking for, in <a href="../dev_guide/DG_ISO8601.md" class="xref">ISO8601 date format</a>.</span></td>
<td class="entry" data-valign="top" width="9.182736455463727%" headers="d127428e436 ">No</td>
<td class="entry" data-valign="top" width="23.140495867768593%" headers="d127428e439 ">Default: 90 days ago
<p>In <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>.</p>
<p><span class="ph">Type: xs:dateTime</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="29.843893480257115%" headers="d127428e430 "><span class="keyword parmname">SubmittedToDate</span></td>
<td class="entry" data-valign="top" width="37.83287419651056%" headers="d127428e433 "><span class="ph">The latest submission date that you are looking for, in <a href="../dev_guide/DG_ISO8601.md" class="xref">ISO8601 date format</a>.</span></td>
<td class="entry" data-valign="top" width="9.182736455463727%" headers="d127428e436 ">No</td>
<td class="entry" data-valign="top" width="23.140495867768593%" headers="d127428e439 ">Default: Now
<p>In <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>.</p>
<p><span class="ph">Type: xs:dateTime</span></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div id="Examples" class="topic reference nested1">

## Examples

<div class="body refbody">

<div class="section">

### Example query request

<span class="ph">For more information about the request parameters that
are required for all <span class="ph">Amazon MWS</span> operations, see
<a href="../dev_guide/DG_RequiredRequestParameters.md" class="xref">Required request parameters</a>
in the <span class="ph">Amazon MWS Developer Guide</span>.</span>

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="sectiondiv content">

``` pre
POST /Feeds/2009-01-01 HTTP/1.1
Content-Type: x-www-form-urlencoded
Host: mws.amazonservices.com
User-Agent: <Your User Agent Header>

AWSAccessKeyId=0PExampleR2
&Action=GetFeedSubmissionList
&FeedProcessingStatusList.Status.1=_DONE_
&FeedSubmissionIdList.Id.1=1058369303
&FeedSubmissionIdList.Id.2=1228369302
&FeedTypeList.Type.1=_POST_PRODUCT_DATA_
&FeedTypeList.Type.2=_POST_PRODUCT_PRICING_DATA_
&MWSAuthToken=amzn.mws.4ea38b7b-f563-7709-4bae-87aeaEXAMPLE
&Marketplace=ATExampleER
&SellerId=A1ExampleE6
&SignatureMethod=HmacSHA256
&SignatureVersion=2
&Timestamp=2009-02-04T15%3A51%3A49.015Z
&Version=2009-01-01
&Signature=BXExampleo%3D
```

<a href="#Examples" class="xref">↑ Top</a>

</div>

</div>

<div class="section">

### Example response

<span class="ph">Amazon MWS returns an XML file that contains the
response to a successful request or subscription. If the request is
unsuccessful, the main response element is <span
class="keyword apiname">ErrorResponse</span>. For more information, see
<a href="../dev_guide/DG_ResponseFormat.md" class="xref">Response format</a>
in the <span class="ph">Amazon MWS Developer Guide</span>.</span>

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="sectiondiv content">

``` pre
<?xml version="1.0"?>
<GetFeedSubmissionListResponse
    xmlns="http://mws.amazonaws.com/doc/2009-01-01/">
    <GetFeedSubmissionListResult>
        <NextToken>2YgYW55IGNhcm5hbCBwbGVhc3VyZS4=</NextToken>
        <HasNext>true</HasNext>
        <FeedSubmissionInfo>
            <FeedSubmissionId>2291326430</FeedSubmissionId>
            <FeedType>_POST_PRODUCT_DATA_</FeedType>
            <SubmittedDate>2009-02-20T02:10:35+00:00</SubmittedDate>
            <FeedProcessingStatus>_SUBMITTED_</FeedProcessingStatus>
        </FeedSubmissionInfo>
    </GetFeedSubmissionListResult>
    <ResponseMetadata>
        <RequestId>1105b931-6f1c-4480-8e97-f3b467840a9e</RequestId>
    </ResponseMetadata>
</GetFeedSubmissionListResponse>
```

<a href="#Examples" class="xref">↑ Top</a>

</div>

</div>

</div>

</div>

<div id="RelatedActions" class="topic nested1">

## Related topics

<div class="body">

<a href="../feeds/Feeds_Overview.md" class="xref">What you should know about the Amazon MWS Feeds API section</a>

<a href="Feeds_GetFeedSubmissionListByNextToken.md" class="xref" title="Returns a list of feed submissions using the NextToken parameter.">GetFeedSubmissionListByNextToken</a>

<a href="../dev_guide/DG_NextToken.md" class="xref">Using NextToken to request additional pages</a>

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
