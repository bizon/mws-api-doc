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

<div id="Reports_ManageReportSchedule" class="nested0">

# ManageReportSchedule

<div class="body">

<span class="ph">Creates, updates, or deletes a report request schedule
for a specified report type.</span>

</div>

<div id="Description" class="topic concept nested1">

## Description

<div class="body conbody">

The <span id="Description__ManageReportSchedule"
class="keyword apiname">ManageReportSchedule</span> operation creates,
updates, or deletes a report request schedule for a particular report
type. Only
<a href="Reports_ReportType.md#ReportTypeCategories__OrderReports" class="xref">Order Reports</a>
can be scheduled.

By using a combination of the <span
class="keyword parmname">ReportType</span> and <span
class="keyword parmname">Schedule</span> values, <span class="ph">Amazon
MWS</span> determines which action you want to perform. If no
combination of <span class="keyword parmname">ReportType</span> and
<span class="keyword parmname">Schedule</span> exists, then a new report
request schedule is created. If the <span
class="keyword parmname">ReportType</span> is already scheduled but with
a different <span class="keyword parmname">Schedule</span> value, then
the report request schedule is updated to use the new <span
class="keyword parmname">Schedule</span> value. If you pass in a <span
class="keyword apiname">ReportType</span> and set the <span
class="keyword parmname">Schedule</span> value to `_NEVER_` in the
request, the report request schedule for that <span
class="keyword apiname">ReportType</span> is deleted.

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
<th id="d285755e216" class="entry" data-valign="top" width="28.57142857142857%">Name</th>
<th id="d285755e219" class="entry" data-valign="top" width="28.57142857142857%">Description</th>
<th id="d285755e222" class="entry" data-valign="top" width="14.285714285714285%">Required</th>
<th id="d285755e225" class="entry" data-valign="top" width="28.57142857142857%">Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d285755e216 "><span class="keyword parmname">ReportType</span></td>
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d285755e219 "><span class="ph">A value of the <a href="Reports_ReportType.md" class="xref" title="An enumeration of the types of reports that can be requested from Amazon MWS.">ReportType</a> that indicates the type of report to request.</span></td>
<td class="entry" data-valign="top" width="14.285714285714285%" headers="d285755e222 ">Yes</td>
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d285755e225 ">A <a href="Reports_ReportType.md" class="xref" title="An enumeration of the types of reports that can be requested from Amazon MWS.">ReportType</a> value
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d285755e216 "><span class="keyword parmname">Schedule</span></td>
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d285755e219 ">A value of the <a href="Reports_Schedule.md" class="xref" title="An enumeration of the units of time that reports can be requested.">Schedule</a> that indicates how often a report request should be created.</td>
<td class="entry" data-valign="top" width="14.285714285714285%" headers="d285755e222 ">Yes</td>
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d285755e225 ">A valid <a href="Reports_Schedule.md" class="xref" title="An enumeration of the units of time that reports can be requested.">Schedule</a> value
<p>Default: None</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d285755e216 "><span class="keyword parmname">ScheduleDate</span></td>
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d285755e219 ">The date when the next report request is scheduled to be submitted.</td>
<td class="entry" data-valign="top" width="14.285714285714285%" headers="d285755e222 ">No</td>
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d285755e225 ">Default: Now
<p>Value can be no more than 366 days in the future. In <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>.</p>
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
<th id="d285755e368" class="entry" data-valign="top" width="50%">Name</th>
<th id="d285755e371" class="entry" data-valign="top" width="50%">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="50%" headers="d285755e368 "><span class="keyword parmname">Count</span></td>
<td class="entry" data-valign="top" width="50%" headers="d285755e371 "><span class="ph">A non-negative integer that represents the total number of report requests.</span>
<p><span class="ph">Type: xs:nonNegativeInteger</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="50%" headers="d285755e368 "><span class="keyword parmname">ReportSchedule</span></td>
<td class="entry" data-valign="top" width="50%" headers="d285755e371 "><span class="ph">Detailed information about a report schedule.</span>
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

AWSAccessKeyId=06Example02
&Action=ManageReportSchedule
&MWSAuthToken=amzn.mws.4ea38b7b-f563-7709-4bae-87aeaEXAMPLE
&Marketplace=ATVPDKIKX0DER
&ReportType=_GET_ORDERS_DATA_
&Schedule=_30_DAYS_
&SellerId=A3Example4D
&SignatureMethod=HmacSHA256
&SignatureVersion=2
&Timestamp=2009-01-14T20%3A50%3A30.218Z
&Version=2009-01-01
&Signature=RuExample0%3D
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
<ManageReportScheduleResponse
    xmlns="http://mws.amazonservices.com/doc/2009-01-01/">
    <ManageReportScheduleResult>
        <Count>1</Count>
        <ReportSchedule>
            <ReportType>_GET_ORDERS_DATA_</ReportType>
            <Schedule>_30_DAYS_</Schedule>
            <ScheduledDate>2009-02-20T02:10:42+00:00</ScheduledDate>
        </ReportSchedule>
    </ManageReportScheduleResult>
    <ResponseMetadata>
        <RequestId>7ee1bc50-5a13-4db1-afd7-1386e481984e</RequestId>
    </ResponseMetadata>
</ManageReportScheduleResponse>
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

<a href="Reports_GetReportScheduleList.md" class="xref" title="Returns a list of order report requests that are scheduled to be submitted to Amazon MWS for processing.">GetReportScheduleList</a>

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
