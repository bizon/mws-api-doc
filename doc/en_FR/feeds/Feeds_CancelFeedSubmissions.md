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

<div id="Feeds_CancelFeedSubmissions" class="nested0">

# CancelFeedSubmissions

<div class="body">

<span class="ph">Cancels one or more feed submissions and returns a
count of the feed submissions that were canceled.</span>

</div>

<div id="Description" class="topic concept nested1">

## Description

<div class="body conbody">

The <span id="Description__CancelFeedSubmissions"
class="keyword apiname">CancelFeedSubmissions</span> operation cancels
one or more feed submissions and returns a count of the canceled feed
submissions and the feed submission information. Note that if you do not
specify a <span class="keyword parmname">FeedSubmmissionId</span>, all
feed submissions are canceled.

Information is returned for the first 100 feed submissions in the list.
To return information for more than 100 canceled feed submissions, use
the <span class="keyword apiname">GetFeedSubmissionList</span>
operation.

If a feed has begun processing, it cannot be canceled.

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
<th id="d119419e188" class="entry" data-valign="top" width="31.93717277486911%">Name</th>
<th id="d119419e191" class="entry" data-valign="top" width="42.72251308900524%">Description</th>
<th id="d119419e194" class="entry" data-valign="top" width="10.471204188481677%">Required</th>
<th id="d119419e197" class="entry" data-valign="top" width="14.86910994764398%">Valid values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="31.93717277486911%" headers="d119419e188 "><span class="keyword parmname">FeedSubmissionIdList</span></td>
<td class="entry" data-valign="top" width="42.72251308900524%" headers="d119419e191 ">A structured list of <span class="keyword parmname">FeedSubmmissionId</span> values. If you pass in <span class="keyword parmname">FeedSubmmissionId</span> values in a request, other query conditions are ignored.</td>
<td class="entry" data-valign="top" width="10.471204188481677%" headers="d119419e194 ">No</td>
<td class="entry" data-valign="top" width="14.86910994764398%" headers="d119419e197 ">Default: All
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="31.93717277486911%" headers="d119419e188 "><span class="keyword parmname">FeedTypeList</span></td>
<td class="entry" data-valign="top" width="42.72251308900524%" headers="d119419e191 "><span class="ph">A structured list of one or more <a href="../feeds/Feeds_FeedType.md" class="xref">FeedType</a> values by which to filter the list of feed submissions.</span></td>
<td class="entry" data-valign="top" width="10.471204188481677%" headers="d119419e194 ">No</td>
<td class="entry" data-valign="top" width="14.86910994764398%" headers="d119419e197 ">Default: All feed types
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="31.93717277486911%" headers="d119419e188 "><span class="keyword parmname">SubmittedFromDate</span></td>
<td class="entry" data-valign="top" width="42.72251308900524%" headers="d119419e191 "><span class="ph">The earliest submission date that you are looking for, in <a href="../dev_guide/DG_ISO8601.md" class="xref">ISO8601 date format</a>.</span></td>
<td class="entry" data-valign="top" width="10.471204188481677%" headers="d119419e194 ">No</td>
<td class="entry" data-valign="top" width="14.86910994764398%" headers="d119419e197 ">Default: 180 days ago
<p>In <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>.</p>
<p><span class="ph">Type: xs:dateTime</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="31.93717277486911%" headers="d119419e188 "><span class="keyword parmname">SubmittedToDate</span></td>
<td class="entry" data-valign="top" width="42.72251308900524%" headers="d119419e191 "><span class="ph">The latest submission date that you are looking for, in <a href="../dev_guide/DG_ISO8601.md" class="xref">ISO8601 date format</a>.</span></td>
<td class="entry" data-valign="top" width="10.471204188481677%" headers="d119419e194 ">No</td>
<td class="entry" data-valign="top" width="14.86910994764398%" headers="d119419e197 ">Default: Now
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

| Name                                                     | Description                                                             | Required | Valid values                                                                                                                                      |
|----------------------------------------------------------|-------------------------------------------------------------------------|----------|---------------------------------------------------------------------------------------------------------------------------------------------------|
| <span class="keyword parmname">Count</span>              | The total number of feed submissions that match the request parameters. | Yes      | <span class="ph">Type: xs:nonNegativeInteger</span>                                                                                               |
| <span class="keyword parmname">FeedSubmissionInfo</span> | Detailed information about a feed that was canceled.                    | No       | Type: <a href="Feeds_Datatypes.md#FeedSubmissionInfo" class="xref" title="Detailed information about a feed submission.">FeedSubmissionInfo</a> |

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
&Action=CancelFeedSubmissions
&FeedSubmissionIdList.Id.1=1058369303
&FeedTypeList.Type.1=_POST_PRODUCT_DATA_
&FeedTypeList.Type.2=_POST_PRODUCT_PRICING_DATA_
&MWSAuthToken=amzn.mws.4ea38b7b-f563-7709-4bae-87aeaEXAMPLE
&Marketplace=ATExampleER
&SellerId=A1ExampleE6
&SignatureMethod=HmacSHA256
&SignatureVersion=2
&Timestamp=2009-02-04T17%3A34%3A14.203Z
&Version=2009-01-01
&Signature=0RExample0%3D
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
<CancelFeedSubmissionsResponse
    xmlns="http://mws.amazonaws.com/doc/2009-01-01/">
    <CancelFeedSubmissionsResult>
        <Count>1</Count>
        <FeedSubmissionInfo>
            <FeedSubmissionId>2291326430</FeedSubmissionId>
            <FeedType>_POST_PRODUCT_DATA_</FeedType>
            <SubmittedDate>2009-02-20T02:10:35+00:00</SubmittedDate>
            <FeedProcessingStatus>_CANCELLED_</FeedProcessingStatus>
        </FeedSubmissionInfo>
    </CancelFeedSubmissionsResult>
    <ResponseMetadata>
        <RequestId>18e78983-bbf9-43aa-a661-ae7696cb49d4</RequestId>
    </ResponseMetadata>
</CancelFeedSubmissionsResponse>
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

<a href="../feeds/Feeds_GetFeedSubmissionResult.md" class="xref">GetFeedSubmissionResult</a>

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
