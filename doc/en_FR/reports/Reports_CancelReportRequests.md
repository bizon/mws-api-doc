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

<div id="Reports_CancelReportRequests" class="nested0">

# CancelReportRequests

<div class="body">

<span class="ph">Cancels one or more report requests.</span>

</div>

<div id="Description" class="topic concept nested1">

## Description

<div class="body conbody">

The <span id="Description__CancelReportRequests"
class="keyword apiname">CancelReportRequests</span> operation cancels
one or more report requests, returning the count of the canceled report
requests and the report request information. You can cancel more than
100 report requests, but information is only returned for the first 100
report requests canceled. To return information on a greater number of
canceled report requests, use the <span
class="keyword apiname">GetReportRequestList</span> operation.

<div class="note note">

<span class="notetitle">Note:</span> If report requests have already
begun processing, they cannot be canceled.

</div>

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
<th id="d276629e177" class="entry" data-valign="top" width="28.57142857142857%">Name</th>
<th id="d276629e180" class="entry" data-valign="top" width="28.57142857142857%">Description</th>
<th id="d276629e183" class="entry" data-valign="top" width="14.285714285714285%">Required</th>
<th id="d276629e186" class="entry" data-valign="top" width="28.57142857142857%">Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d276629e177 "><span class="keyword parmname">ReportRequestIdList</span></td>
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d276629e180 "><span class="ph">A structured list of <span class="keyword parmname">ReportRequestId</span> values. If you pass in <span class="keyword parmname">ReportRequestId</span> values, other query conditions are ignored.</span></td>
<td class="entry" data-valign="top" width="14.285714285714285%" headers="d276629e183 ">No</td>
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d276629e186 ">Default: All
<p>Type: List of <span class="ph">Type: xs:string</span></p></td>
</tr>
<tr id="RequestParameters__parm_ReportTypeList" class="even row">
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d276629e177 "><span class="keyword parmname">ReportTypeList</span></td>
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d276629e180 "><span class="ph">A structured list of <a href="Reports_ReportType.md" class="xref" title="An enumeration of the types of reports that can be requested from Amazon MWS.">ReportType enumeration</a> values.</span></td>
<td class="entry" data-valign="top" width="14.285714285714285%" headers="d276629e183 ">No</td>
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d276629e186 ">Default: All
<p>Type: List of <span class="ph">Type: xs:string</span></p></td>
</tr>
<tr id="RequestParameters__parm_ReportProcessingStatusList" class="odd row">
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d276629e177 "><span class="keyword parmname">ReportProcessingStatusList</span></td>
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d276629e180 "><span class="ph">A structured list of report processing statuses by which to filter report requests.</span></td>
<td class="entry" data-valign="top" width="14.285714285714285%" headers="d276629e183 ">No</td>
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d276629e186 "><span class="keyword parmname">ReportProcessingStatusList</span> values:
<ul>
<li><var class="keyword varname">_SUBMITTED_</var></li>
<li><var class="keyword varname">_IN_PROGRESS_</var></li>
<li><var class="keyword varname">_CANCELLED_</var></li>
<li><var class="keyword varname">_DONE_</var></li>
<li><var class="keyword varname">_DONE_NO_DATA_</var></li>
</ul>
<p>Default: All</p>
<p>Type: List of <span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d276629e177 "><span class="keyword parmname">RequestedFromDate</span></td>
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d276629e180 "><span class="ph">The start of the date range used for selecting the data to report, in <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>.</span></td>
<td class="entry" data-valign="top" width="14.285714285714285%" headers="d276629e183 ">No</td>
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d276629e186 ">Default: 90 days ago
<p><span class="ph">Type: xs:dateTime</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d276629e177 "><span class="keyword parmname">RequestedToDate</span></td>
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d276629e180 "><span class="ph">The end of the date range used for selecting the data to report, in <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>.</span></td>
<td class="entry" data-valign="top" width="14.285714285714285%" headers="d276629e183 ">No</td>
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d276629e186 ">Default: Now
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
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d276629e389" class="entry" data-valign="top" width="50%">Name</th>
<th id="d276629e392" class="entry" data-valign="top" width="50%">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="50%" headers="d276629e389 "><span class="keyword parmname">Count</span></td>
<td class="entry" data-valign="top" width="50%" headers="d276629e392 ">A non-negative integer that represents the total number of report requests that were canceled.
<p><span class="ph">Type: xs:nonNegativeInteger</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="50%" headers="d276629e389 "><span class="keyword parmname">ReportRequestInfo</span></td>
<td class="entry" data-valign="top" width="50%" headers="d276629e392 ">Detailed information about a report request that was canceled.
<p>Type: <a href="Reports_Datatypes.md#ReportRequestInfo" class="xref" title="Detailed information about a report request.">ReportRequestInfo</a></p></td>
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

<span class="ph">For information about standard request requirements,
see
<a href="../dev_guide/DG_RequiredRequestParameters.md" class="xref">Required request parameters</a>.</span>

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="sectiondiv content">

``` pre
POST /Reports/2009-01-01 HTTP/1.1
Content-Type: x-www-form-urlencoded
Host: mws.amazonservices.com
User-Agent: <Your User Agent Header>

AWSAccessKeyId=0PB842EXAMPLE7N4ZTR2
&Action=CancelReportRequests
&MWSAuthToken=amzn.mws.4ea38b7b-f563-7709-4bae-87aeaEXAMPLE
&Marketplace=ATVPDKIKX0DER
&ReportProcessingStatusList.Status.1=_SUBMITTED_
&ReportRequestIdList.Id.1=2291326454
&ReportTypeList.Type.1=_GET_ORDERS_DATA_
&ReportTypeList.Type.2=_GET_MERCHANT_LISTINGS_DATA_
&SellerId=A1XEXAMPLE5E6
&SignatureMethod=HmacSHA256
&SignatureVersion=2
&Timestamp=2009-02-04T18%3A12%3A22.421Z
&Version=2009-01-01
&Signature=wZFasNUpTth2GA5Xzuamb1XGVFY%3D
```

<a href="#Examples" class="xref">↑ Top</a>

</div>

</div>

<div class="section">

### Example response

<span class="ph">For information about standard response formatting, see
<a href="../dev_guide/DG_ResponseFormat.md" class="xref">Response format</a>.</span>

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="sectiondiv content">

``` pre
<?xml version="1.0"?>
<CancelReportRequestsResponse
    xmlns="http://mws.amazonservices.com/doc/2009-01-01/">
    <CancelReportRequestsResult>
        <Count>1</Count>
        <ReportRequestInfo>
            <ReportRequestId>2291326454</ReportRequestId>
            <ReportType>_GET_MERCHANT_LISTINGS_DATA_</ReportType>
            <StartDate>2009-01-21T02:10:39+00:00</StartDate>
            <EndDate>2009-02-13T02:10:39+00:00</EndDate>
            <Scheduled>false</Scheduled>
            <SubmittedDate>2009-02-20T02:10:39+00:00</SubmittedDate>
            <ReportProcessingStatus>_CANCELLED_</ReportProcessingStatus>
        </ReportRequestInfo>
    </CancelReportRequestsResult>
    <ResponseMetadata>
        <RequestId>a720f9d6-83e9-4684-bc35-065b41ed5ca4</RequestId>
    </ResponseMetadata>
</CancelReportRequestsResponse>
```

<a href="#Examples" class="xref">↑ Top</a>

</div>

</div>

</div>

</div>

<div id="RelatedActions" class="topic nested1">

## Related topics

<div class="body">

<a href="../reports/Reports_GetReport.md" class="xref">GetReport</a>

<a href="../reports/Reports_Overview.md" class="xref">What you should know about the Reports API Section</a>

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
