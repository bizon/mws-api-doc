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

<div id="Reports_GetReportScheduleList" class="nested0">

# GetReportScheduleList

<div class="body">

<span class="ph">Returns a list of order report requests that are
scheduled to be submitted to <span class="ph">Amazon MWS</span> for
processing.</span>

</div>

<div id="Description" class="topic concept nested1">

## Description

<div class="body conbody">

The <span id="Description__GetReportScheduleList"
class="keyword apiname">GetReportScheduleList</span> operation returns a
list of scheduled order report requests that match the query parameters.
Only
<a href="Reports_ReportType.md#ReportTypeCategories__OrderReports" class="xref">Order Reports</a>
can be scheduled. A maximum number of 100 results can be returned in one
request.

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
<th id="d285503e178" class="entry" data-valign="top" width="28.57142857142857%">Name</th>
<th id="d285503e181" class="entry" data-valign="top" width="28.57142857142857%">Description</th>
<th id="d285503e184" class="entry" data-valign="top" width="14.285714285714285%">Required</th>
<th id="d285503e187" class="entry" data-valign="top" width="28.57142857142857%">Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr id="RequestParameters__parm_ReportTypeList" class="odd row">
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d285503e178 "><span class="keyword parmname">ReportTypeList</span></td>
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d285503e181 "><span class="ph">A structured list of <a href="Reports_ReportType.md" class="xref" title="An enumeration of the types of reports that can be requested from Amazon MWS.">ReportType enumeration</a> values.</span></td>
<td class="entry" data-valign="top" width="14.285714285714285%" headers="d285503e184 ">No</td>
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d285503e187 ">Default: All
<p><span class="ph">Type: xs:string</span></p></td>
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
<th id="d285503e253" class="entry" data-valign="top" width="50%">Name</th>
<th id="d285503e256" class="entry" data-valign="top" width="50%">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="50%" headers="d285503e253 "><span class="keyword parmname">NextToken</span></td>
<td class="entry" data-valign="top" width="50%" headers="d285503e256 ">This element will never be returned for this operation because there can never be more than 100 report types scheduled.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="50%" headers="d285503e253 "><span class="keyword parmname">HasNext</span></td>
<td class="entry" data-valign="top" width="50%" headers="d285503e256 ">A Boolean value that is always returned <var class="keyword varname">false</var> because there can never be more than 100 report types scheduled.
<p><span class="ph">Type: xs:boolean</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="50%" headers="d285503e253 "><span class="keyword parmname">ReportSchedule</span></td>
<td class="entry" data-valign="top" width="50%" headers="d285503e256 "><span class="ph">Detailed information about a report schedule.</span>
<p>Type: <a href="Reports_Datatypes.md#ReportSchedule" class="xref" title="Detailed information about a report schedule.">ReportSchedule</a></p></td>
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

AWSAccessKeyId=0PExampleR2
&Action=GetReportScheduleList
&MWSAuthToken=amzn.mws.4ea38b7b-f563-7709-4bae-87aeaEXAMPLE
&Marketplace=ATExampleER
&ReportTypeList.Type.1=_GET_ORDERS_DATA_
&ReportTypeList.Type.2=_GET_MERCHANT_LISTINGS_DATA
&SellerId=A1ExampleE6
&SignatureMethod=HmacSHA256
&SignatureVersion=2
&Timestamp=2009-01-07T19%3A12%3A13.859Z
&Version=2009-01-01
&Signature=ltExample8%3D
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
<GetReportScheduleListResponse
    xmlns="http://mws.amazonservices.com/doc/2009-01-01/">
    <GetReportScheduleListResult>
        <NextToken></NextToken>
        <HasNext>false</HasNext>
        <ReportSchedule>
            <ReportType>_GET_ORDERS_DATA_</ReportType>
            <Schedule>_30_DAYS_</Schedule>
            <ScheduledDate>2009-02-20T02:10:42+00:00</ScheduledDate>
        </ReportSchedule>
    </GetReportScheduleListResult>
    <ResponseMetadata>
        <RequestId>c0464157-b74f-4e52-bd1a-4ebf4bc7e5aa</RequestId>
    </ResponseMetadata>
</GetReportScheduleListResponse>
```

<a href="#Examples" class="xref">↑ Top</a>

</div>

</div>

</div>

</div>

<div id="RelatedActions" class="topic nested1">

## Related topics

<div class="body">

<a href="../reports/Reports_Overview.md" class="xref">What you should know about the Amazon MWS Reports API section</a>

<a href="Reports_ManageReportSchedule.md" class="xref" title="Creates, updates, or deletes a report request schedule for a specified report type.">ManageReportSchedule</a>

<a href="Reports_GetReportScheduleListByNextToken.md" class="xref" title="Currently this operation can never be called because the GetReportScheduleList operation cannot return more than 100 results. It is included for future compatibility.">GetReportScheduleListByNextToken</a>

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
