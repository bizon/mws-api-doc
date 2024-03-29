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

<div id="Feeds_GetFeedSubmissionCount" class="nested0">

# GetFeedSubmissionCount

<div class="body">

<span class="ph">Returns a count of the feeds submitted in the previous
90 days.</span>

</div>

<div id="Description" class="topic concept nested1">

## Description

<div class="body conbody">

The <span id="Description__GetFeedSubmissionCount"
class="keyword apiname">GetFeedSubmissionCount</span> operation returns
a count of the total number of feeds submitted in the previous 90 days.

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
<th id="d126616e176" class="entry" data-valign="top" width="29.38733125649014%">Name</th>
<th id="d126616e179" class="entry" data-valign="top" width="38.110072689511945%">Description</th>
<th id="d126616e182" class="entry" data-valign="top" width="10.38421599169263%">Required</th>
<th id="d126616e185" class="entry" data-valign="top" width="22.1183800623053%">Valid Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="29.38733125649014%" headers="d126616e176 "><span class="keyword parmname">FeedTypeList</span></td>
<td class="entry" data-valign="top" width="38.110072689511945%" headers="d126616e179 "><span class="ph">A structured list of one or more <a href="../feeds/Feeds_FeedType.md" class="xref">FeedType</a> values by which to filter the list of feed submissions.</span></td>
<td class="entry" data-valign="top" width="10.38421599169263%" headers="d126616e182 ">No</td>
<td class="entry" data-valign="top" width="22.1183800623053%" headers="d126616e185 ">Default: All feed types
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="29.38733125649014%" headers="d126616e176 "><span class="keyword parmname">FeedProcessingStatusList</span></td>
<td class="entry" data-valign="top" width="38.110072689511945%" headers="d126616e179 ">A structured list of one or more feed processing statuses by which to filter the list of feed submissions.</td>
<td class="entry" data-valign="top" width="10.38421599169263%" headers="d126616e182 ">No</td>
<td class="entry" data-valign="top" width="22.1183800623053%" headers="d126616e185 ">Default: All feed processing status types. For valid values, see <a href="../feeds/Feeds_FeedProcessingStatus.md" class="xref">FeedProcessingStatus enumeration</a>.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="29.38733125649014%" headers="d126616e176 "><span class="keyword parmname">SubmittedFromDate</span></td>
<td class="entry" data-valign="top" width="38.110072689511945%" headers="d126616e179 "><span class="ph">The earliest submission date that you are looking for, in <a href="../dev_guide/DG_ISO8601.md" class="xref">ISO8601 date format</a>.</span></td>
<td class="entry" data-valign="top" width="10.38421599169263%" headers="d126616e182 ">No</td>
<td class="entry" data-valign="top" width="22.1183800623053%" headers="d126616e185 ">Default: 90 days ago
<p>In <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>.</p>
<p><span class="ph">Type: xs:dateTime</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="29.38733125649014%" headers="d126616e176 "><span class="keyword parmname">SubmittedToDate</span></td>
<td class="entry" data-valign="top" width="38.110072689511945%" headers="d126616e179 "><span class="ph">The latest submission date that you are looking for, in <a href="../dev_guide/DG_ISO8601.md" class="xref">ISO8601 date format</a>.</span></td>
<td class="entry" data-valign="top" width="10.38421599169263%" headers="d126616e182 ">No</td>
<td class="entry" data-valign="top" width="22.1183800623053%" headers="d126616e185 ">Default: Now
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

| Name                                        | Description                                                             | Required | Valid Values                                        |
|---------------------------------------------|-------------------------------------------------------------------------|----------|-----------------------------------------------------|
| <span class="keyword parmname">Count</span> | The total number of feed submissions that match the request parameters. | Yes      | <span class="ph">Type: xs:nonNegativeInteger</span> |

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
&Action=GetFeedSubmissionCount
&FeedProcessingStatusList.Status.1=_DONE_
&FeedProcessingStatusList.Status.2=_CANCELLED_
&FeedTypeList.Type.1=_POST_PRODUCT_DATA_
&MWSAuthToken=amzn.mws.4ea38b7b-f563-7709-4bae-87aeaEXAMPLE
&Marketplace=ATExampleER
&SellerId=A1ExampleE6
&SignatureMethod=HmacSHA256
&SignatureVersion=2
&Timestamp=2009-02-04T15%3A51%3A49.312Z
&Version=2009-01-01
&Signature=ewExampleU%3D
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
<GetFeedSubmissionCountResponse
    xmlns="http://mws.amazonaws.com/doc/2009-01-01/">
    <GetFeedSubmissionCountResult>
        <Count>463</Count>
    </GetFeedSubmissionCountResult>
    <ResponseMetadata>
        <RequestId>21e482a8-15c7-4da3-91a4-424995ed0756</RequestId>
    </ResponseMetadata>
</GetFeedSubmissionCountResponse>
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

<a href="Feeds_GetFeedSubmissionList.md" class="xref" title="Returns a list of all feed submissions submitted in the previous 90 days.">GetFeedSubmissionList</a>

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
