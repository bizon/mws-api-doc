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

<div id="Reports_GetReportRequestCount" class="nested0">

# GetReportRequestCount

<div class="body">

<span class="ph">Returns a count of report requests that have been
submitted to <span class="ph">Amazon MWS</span> for processing.</span>

</div>

<div id="Description" class="topic concept nested1">

## Description

<div class="body conbody">

The <span id="Description__GetReportRequestCount"
class="keyword apiname">GetReportRequestCount</span> returns the total
number of report requests that have been submitted to <span
class="ph">Amazon MWS</span> for processing.

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
<th id="d281648e177" class="entry" data-valign="top" width="28.57142857142857%">Name</th>
<th id="d281648e180" class="entry" data-valign="top" width="28.57142857142857%">Description</th>
<th id="d281648e183" class="entry" data-valign="top" width="14.285714285714285%">Required</th>
<th id="d281648e186" class="entry" data-valign="top" width="28.57142857142857%">Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr id="RequestParameters__parm_ReportTypeList" class="odd row">
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d281648e177 "><span class="keyword parmname">ReportTypeList</span></td>
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d281648e180 "><span class="ph">A structured list of <a href="Reports_ReportType.md" class="xref" title="An enumeration of the types of reports that can be requested from Amazon MWS.">ReportType enumeration</a> values.</span></td>
<td class="entry" data-valign="top" width="14.285714285714285%" headers="d281648e183 ">No</td>
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d281648e186 ">Default: All
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr id="RequestParameters__parm_ReportProcessingStatusList" class="even row">
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d281648e177 "><span class="keyword parmname">ReportProcessingStatusList</span></td>
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d281648e180 "><span class="ph">A structured list of report processing statuses by which to filter report requests.</span></td>
<td class="entry" data-valign="top" width="14.285714285714285%" headers="d281648e183 ">No</td>
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d281648e186 "><ul>
<li><var class="keyword varname">_SUBMITTED_</var></li>
<li><var class="keyword varname">_IN_PROGRESS_</var></li>
<li><var class="keyword varname">_CANCELLED_</var></li>
<li><var class="keyword varname">_DONE_</var></li>
<li><var class="keyword varname">_DONE_NO_DATA_</var></li>
</ul>
<p>Default: All</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d281648e177 "><span class="keyword parmname">RequestedFromDate</span></td>
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d281648e180 "><span class="ph">The start of the date range used for selecting the data to report, in <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>.</span></td>
<td class="entry" data-valign="top" width="14.285714285714285%" headers="d281648e183 ">No</td>
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d281648e186 ">Default: 90 days ago
<p><span class="ph">Type: xs:dateTime</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d281648e177 "><span class="keyword parmname">RequestedToDate</span></td>
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d281648e180 "><span class="ph">The end of the date range used for selecting the data to report, in <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>.</span></td>
<td class="entry" data-valign="top" width="14.285714285714285%" headers="d281648e183 ">No</td>
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d281648e186 ">Default: Now
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
<th id="d281648e360" class="entry" data-valign="top" width="50%">Name</th>
<th id="d281648e363" class="entry" data-valign="top" width="50%">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="50%" headers="d281648e360 "><span class="keyword parmname">Count</span></td>
<td class="entry" data-valign="top" width="50%" headers="d281648e363 "><span class="ph">A non-negative integer that represents the total number of report requests.</span>
<p><span class="ph">Type: xs:nonNegativeInteger</span></p></td>
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
&Action=GetReportRequestCount
&MWSAuthToken=amzn.mws.4ea38b7b-f563-7709-4bae-87aeaEXAMPLE
&Marketplace=ATVPDKIKX0DER
&ReportProcessingStatusList.Status.1=_DONE_
&ReportTypeList.Type.1=_GET_ORDERS_DATA_
&ReportTypeList.Type.2=_GET_MERCHANT_LISTINGS_DATA_
&SellerId=A1XEXAMPLE5E6
&SignatureMethod=HmacSHA256
&SignatureVersion=2
&Timestamp=2009-02-04T18%3A12%3A22.093Z
&Version=2009-01-01
&Signature=oqxKULFnyvOMXmrsqerBjOJlW0U%3D
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
<GetReportRequestCountResponse
    xmlns="http://mws.amazonservices.com/doc/2009-01-01/">
    <GetReportRequestCountResult>
        <Count>1276</Count>
    </GetReportRequestCountResult>
    <ResponseMetadata>
        <RequestId>7e155027-3741-4422-95a7-1de12703c13e</RequestId>
    </ResponseMetadata>
</GetReportRequestCountResponse>
```

<a href="#Examples" class="xref">↑ Top</a>

</div>

</div>

</div>

</div>

<div id="RelatedActions" class="topic nested1">

## Related topics

<div class="body">

<a href="../reports/Reports_Overview.md" class="xref">What you should know about the Amazon MWS Reports API Section</a>

<a href="Reports_GetReportList.md" class="xref" title="Returns a list of reports that were created in the previous 90 days.">GetReportList</a>

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
