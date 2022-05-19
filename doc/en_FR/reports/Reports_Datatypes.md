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

<div id="Reports_Datatypes" class="nested0">

# Reports Datatypes

<div class="body">

The following datatypes are used in the response elements of the <span
class="ph">Amazon Marketplace Web Service (Amazon MWS)</span> <span
class="ph">Reports API section</span>:

<div class="tablenoborder">

| Name                                                                                                                 | Description                                                           |
|----------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------|
| <a href="#ReportInfo" class="xref" title="Detailed information about a report.">ReportInfo</a>                       | <span class="ph">Detailed information about a report.</span>          |
| <a href="#ReportRequestInfo" class="xref" title="Detailed information about a report request.">ReportRequestInfo</a> | <span class="ph">Detailed information about a report request.</span>  |
| <a href="#ReportSchedule" class="xref" title="Detailed information about a report schedule.">ReportSchedule</a>      | <span class="ph">Detailed information about a report schedule.</span> |

</div>

</div>

<div id="ReportInfo" class="topic nested1">

## ReportInfo

<div class="body">

<span class="ph">Detailed information about a report.</span>

<div class="section">

### Datatype content

The following table shows the elements of the <span
class="keyword parmname">ReportInfo</span> datatype:

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d279093e193" class="entry" data-valign="top" width="50%">Name</th>
<th id="d279093e196" class="entry" data-valign="top" width="50%">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="50%" headers="d279093e193 "><span class="keyword parmname">ReportId</span></td>
<td class="entry" data-valign="top" width="50%" headers="d279093e196 "><span class="ph">A unique report identifier.</span>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="50%" headers="d279093e193 "><span class="keyword parmname">ReportType</span></td>
<td class="entry" data-valign="top" width="50%" headers="d279093e196 "><span class="ph">The <a href="Reports_ReportType.md" class="xref" title="An enumeration of the types of reports that can be requested from Amazon MWS.">ReportType</a> value requested.</span>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="50%" headers="d279093e193 "><span class="keyword parmname">ReportRequestId</span></td>
<td class="entry" data-valign="top" width="50%" headers="d279093e196 "><span class="ph">A unique report request identifier.</span>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="50%" headers="d279093e193 "><span class="keyword parmname">AvailableDate</span></td>
<td class="entry" data-valign="top" width="50%" headers="d279093e196 "><span class="ph">The date the report is available.</span>
<p>In <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>.</p>
<p><span class="ph">Type: xs:dateTime</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="50%" headers="d279093e193 "><span class="keyword parmname">Acknowledged</span></td>
<td class="entry" data-valign="top" width="50%" headers="d279093e196 ">A Boolean value that indicates if the report was acknowledged by this call to the <span class="keyword apiname">UpdateReportAcknowledgements</span> operation. The value is <var class="keyword varname">true</var> if the report was acknowledged; otherwise <var class="keyword varname">false</var>.
<p><span class="ph">Type: xs:boolean</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="50%" headers="d279093e193 "><span class="keyword parmname">AcknowledgedDate</span></td>
<td class="entry" data-valign="top" width="50%" headers="d279093e196 ">The date the report was acknowledged.
<p>In <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>.</p>
<p><span class="ph">Type: xs:dateTime</span></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="ReportRequestInfo" class="topic nested1">

## ReportRequestInfo

<div class="body">

<span class="ph">Detailed information about a report request.</span>

<div class="section">

### Datatype content

The following table shows the elements of the <span
class="keyword parmname">ReportRequestInfo</span> datatype:

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d279093e410" class="entry" data-valign="top" width="50%">Name</th>
<th id="d279093e413" class="entry" data-valign="top" width="50%">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="50%" headers="d279093e410 "><span class="keyword parmname">ReportRequestId</span></td>
<td class="entry" data-valign="top" width="50%" headers="d279093e413 "><span class="ph">A unique report request identifier.</span>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="50%" headers="d279093e410 "><span class="keyword parmname">ReportType</span></td>
<td class="entry" data-valign="top" width="50%" headers="d279093e413 "><span class="ph">The <a href="Reports_ReportType.md" class="xref" title="An enumeration of the types of reports that can be requested from Amazon MWS.">ReportType</a> value requested.</span>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="50%" headers="d279093e410 "><span class="keyword parmname">StartDate</span></td>
<td class="entry" data-valign="top" width="50%" headers="d279093e413 "><span class="ph">The start of a date range used for selecting the data to report.</span>
<p>In <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>.</p>
<p><span class="ph">Type: xs:dateTime</span></p></td>
</tr>
<tr id="ReportRequestInfo__resp_EndDate" class="even row">
<td class="entry" data-valign="top" width="50%" headers="d279093e410 "><span class="keyword parmname">EndDate</span></td>
<td class="entry" data-valign="top" width="50%" headers="d279093e413 "><span class="ph">The end of a date range used for selecting the data to report.</span>
<p>In <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>.</p>
<p><span class="ph">Type: xs:dateTime</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="50%" headers="d279093e410 "><span class="keyword parmname">Scheduled</span></td>
<td class="entry" data-valign="top" width="50%" headers="d279093e413 "><span class="ph">A Boolean value that indicates if a report is scheduled. The value is <var class="keyword varname">true</var> if the report was scheduled; otherwise <var class="keyword varname">false</var>.</span>
<p><span class="ph">Type: xs:boolean</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="50%" headers="d279093e410 "><span class="keyword parmname">SubmittedDate</span></td>
<td class="entry" data-valign="top" width="50%" headers="d279093e413 "><span class="ph">The date when the report was submitted.</span>
<p>In <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>.</p>
<p><span class="ph">Type: xs:dateTime</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="50%" headers="d279093e410 "><span class="keyword parmname">ReportProcessingStatus</span></td>
<td class="entry" data-valign="top" width="50%" headers="d279093e413 "><span class="ph">The processing status of the report.</span>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="50%" headers="d279093e410 "><span class="keyword parmname">GeneratedReportId</span></td>
<td class="entry" data-valign="top" width="50%" headers="d279093e413 ">The report identifier used to retrieve the report.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="50%" headers="d279093e410 "><span class="keyword parmname">StartedProcessingDate</span></td>
<td class="entry" data-valign="top" width="50%" headers="d279093e413 ">The date when the report processing started.
<p>In <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>.</p>
<p><span class="ph">Type: xs:dateTime</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="50%" headers="d279093e410 "><span class="keyword parmname">CompletedDate</span></td>
<td class="entry" data-valign="top" width="50%" headers="d279093e413 ">The date when the report processing completed.
<p>In <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>.</p>
<p><span class="ph">Type: xs:dateTime</span></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="ReportSchedule" class="topic nested1">

## ReportSchedule

<div class="body">

<span class="ph">Detailed information about a report schedule.</span>

<div class="section">

### Datatype content

The following table shows the elements of the <span
class="keyword parmname">ReportSchedule</span> datatype:

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d279093e712" class="entry" data-valign="top" width="50%">Name</th>
<th id="d279093e715" class="entry" data-valign="top" width="50%">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="50%" headers="d279093e712 "><span class="keyword parmname">ReportType</span></td>
<td class="entry" data-valign="top" width="50%" headers="d279093e715 "><span class="ph">The <a href="Reports_ReportType.md" class="xref" title="An enumeration of the types of reports that can be requested from Amazon MWS.">ReportType</a> value requested.</span>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="50%" headers="d279093e712 "><span class="keyword parmname">Schedule</span></td>
<td class="entry" data-valign="top" width="50%" headers="d279093e715 "><span class="ph">A value of the <a href="Reports_Schedule.md" class="xref" title="An enumeration of the units of time that reports can be requested.">Schedule</a> that indicates how often a report request should be created.</span>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="50%" headers="d279093e712 "><span class="keyword parmname">ScheduledDate</span></td>
<td class="entry" data-valign="top" width="50%" headers="d279093e715 "><span class="ph">The date when the next report request is scheduled to be submitted.</span>
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

<a href="../reports/Reports_Overview.md" class="xref">What you should know about the Amazon MWS Reports API section</a>

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
