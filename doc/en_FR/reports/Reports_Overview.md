<div id="MWSDX_noscript">

JavaScript is currently disabled in your browser.  
To use the Amazon MWS documentation, you must enable JavaScript in your
browser.

</div>

<div id="MWSDX_divtop">

[![Amazon
Services](https://images-na.ssl-images-amazon.com/images/G/08/mwsportal/fr_FR/amazonservices.gif
"Amazon Services")](http://services.amazon.fr)  
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

<div id="Reports_Overview" class="nested0">

# What you should know about the Amazon MWS Reports API section

<div class="body">

The <span class="ph">Reports API</span> section of the
<span class="ph">Amazon Marketplace Web Service (Amazon MWS)</span> API
lets you request various reports that help you manage your Sell on
Amazon business. Report types are specified using the
<span class="keyword apiname">ReportTypes</span> enumeration.

Amazon periodically adds new fields and field values to reports. Be sure
to build report parsers into your <span class="ph">Amazon MWS</span>
applications that can gracefully handle these types of report updates.
For more information, see [Building robust Amazon MWS
applications](../dev_guide/DG_BuildingRobustApps.html#DG_BuildingRobustApps).

<div class="note important">

<span class="importanttitle">Important:</span> Your access to
<span class="ph">Amazon MWS</span> data depends on the role Amazon
assigns you after you submit the <span class="ph">Developer Registration
and Assessment form</span>. For more information see [Registering to use
Amazon MWS](../dev_guide/DG_Registering.html#DG_Registering).

</div>

The report process begins by creating a report request. Next, you obtain
a list of report requests which shows the report request identifier and
status of each requested report. Finally, you use the report request
identifier from this listing to get the actual report. The process steps
are as follows:

1.  Submit a report request using the
    <span class="keyword apiname">RequestReport</span> operation. This
    is a request to <span class="ph">Amazon MWS</span> to generate a
    specific report. Note that you can also schedule order report
    requests to be submitted periodically using the
    <span class="keyword apiname">ManageReportSchedule</span> operation.
2.  Submit a request using the
    <span class="keyword apiname">GetReportRequestList</span> operation
    to get a list that shows the report requests and the status and ID
    of each report request. <span class="ph">Amazon MWS</span> returns a
    <span class="keyword parmname">ReportRequestId</span> for every
    report requested. When <span class="ph">Amazon MWS</span> sets the
    status of a report request to \_DONE\_, the report is ready to be
    retrieved. Some reports create a
    <span class="keyword parmname">GeneratedReportId</span> that you can
    pass to the <span class="keyword apiname">GetReport</span> operation
    (see step 4). If you need to cancel a report request, use the
    <span class="keyword apiname">CancelReportRequests</span> operation.
    <div class="note note">
    <span class="notetitle">Note:</span> Rather than repeatedly polling
    the <span class="keyword apiname">GetReportRequestList</span>
    operation to find out when report processing is complete, Amazon
    recommends subscribing to the
    <span class="keyword parmname">ReportProcessingFinishedNotification</span>
    notification. After you subscribe, for each report you request
    Amazon will send you a push notification when report processing is
    complete. This makes your workflow more efficient and helps you
    avoid exceeding the throttling limits of the
    <span class="keyword apiname">GetReportRequestList</span> operation.
    For more information, see [Use the ReportProcessingFinished
    notification when requesting a
    report](Reports_UseReportProcessingFinished.md).
    </div>
3.  If no <span class="keyword parmname">GeneratedReportId</span> was
    created, submit a request using the
    <span class="keyword apiname">GetReportList</span> operation and
    include the <span class="keyword parmname">ReportRequestId</span>
    for the report requested. The operation returns a
    <span class="keyword parmname">ReportId</span> that you can then
    pass to the <span class="keyword apiname">GetReport</span> operation
    (see step 4).
4.  Submit a request using the
    <span class="keyword apiname">GetReport</span> operation to receive
    a specific report. You include in the request the
    <span class="keyword parmname">GeneratedReportId</span> or the
    <span class="keyword parmname">ReportId</span> for the report you
    want to receive. You then process the Content-MD5 header to confirm
    that the report was not corrupted during transmission. For more
    information on working with the Content-MD5 header, see the
    <span class="ph">Amazon MWS Developer Guide</span>.

The following flowchart shows the process for submitting and receiving
an on-request report:

![](ReportRequest_flowchart.png)

You can also schedule order report requests so that they are submitted
periodically by using the
<span class="keyword apiname">ManageReportSchedule</span> operation. The
<span class="keyword apiname">Schedule</span> enumeration is used to
specify the time period for submitting report requests. You can also get
a list of scheduled order report requests using the
<span class="keyword apiname">GetReportScheduleList</span> operation.

The following flowchart shows the process for submitting and receiving a
scheduled report:

![](SchedReport_flowchart.png)

<div id="Reports_Overview__ReportsOperations" class="section">

## The <span class="ph">Reports API</span> section operations

The <span class="ph">Reports API</span> section contains the following
operations:

<div class="tablenoborder">

| Operation                                                                                                                                                                                                                                                                                                          | Description                                                                                                                                                                                                                                                                                                                                                                                                    | Availability                              |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------- |
| [RequestReport](../reports/Reports_RequestReport.md)                                                                                                                                                                                                                                                             | <span class="ph">Creates a report request and submits the request to <span class="ph">Amazon MWS</span>.</span>                                                                                                                                                                                                                                                                                                | <span class="ph">All marketplaces.</span> |
| [GetReportRequestList](Reports_GetReportRequestList.html "Returns a list of report requests that you can use to get the ReportRequestId for a report.")                                                                                                                                                            | <span class="ph">Returns a list of report requests that you can use to get the <span class="keyword parmname">ReportRequestId</span> for a report.</span>                                                                                                                                                                                                                                                      | <span class="ph">All marketplaces.</span> |
| [GetReportRequestListByNextToken](Reports_GetReportRequestListByNextToken.html "Returns a list of report requests using the NextToken, which was supplied by a previous request to either GetReportRequestListByNextToken or GetReportRequestList, where the value of HasNext was true in that previous request.") | <span class="ph">Returns a list of report requests using the <span class="keyword parmname">NextToken</span>, which was supplied by a previous request to either <span class="keyword apiname">GetReportRequestListByNextToken</span> or <span class="keyword apiname">GetReportRequestList</span>, where the value of <span class="keyword parmname">HasNext</span> was true in that previous request.</span> | <span class="ph">All marketplaces.</span> |
| [GetReportRequestCount](Reports_GetReportRequestCount.html "Returns a count of report requests that have been submitted to Amazon MWS for processing.")                                                                                                                                                            | <span class="ph">Returns a count of report requests that have been submitted to <span class="ph">Amazon MWS</span> for processing.</span>                                                                                                                                                                                                                                                                      | <span class="ph">All marketplaces.</span> |
| [CancelReportRequests](Reports_CancelReportRequests.html "Cancels one or more report requests.")                                                                                                                                                                                                                   | <span class="ph">Cancels one or more report requests.</span>                                                                                                                                                                                                                                                                                                                                                   | <span class="ph">All marketplaces.</span> |
| [GetReportList](Reports_GetReportList.html "Returns a list of reports that were created in the previous 90 days.")                                                                                                                                                                                                 | <span class="ph">Returns a list of reports that were created in the previous 90 days.</span>                                                                                                                                                                                                                                                                                                                   | <span class="ph">All marketplaces.</span> |
| [GetReportListByNextToken](Reports_GetReportListByNextToken.html "Returns a list of reports using the NextToken, which was supplied by a previous request to either GetReportListByNextToken or GetReportList, where the value of HasNext was true in the previous call.")                                         | <span class="ph"> Returns a list of reports using the <span class="keyword parmname">NextToken</span>, which was supplied by a previous request to either <span class="keyword apiname">GetReportListByNextToken</span> or <span class="keyword apiname">GetReportList</span>, where the value of <span class="keyword parmname">HasNext</span> was true in the previous call.</span>                          | <span class="ph">All marketplaces.</span> |
| [GetReportCount](Reports_GetReportCount.html "Returns a count of the reports, created in the previous 90 days, with a status of _DONE_ and that are available for download.")                                                                                                                                      | <span class="ph">Returns a count of the reports, created in the previous 90 days, with a status of \_DONE\_ and that are available for download.</span>                                                                                                                                                                                                                                                        | <span class="ph">All marketplaces.</span> |
| [GetReport](../reports/Reports_GetReport.md)                                                                                                                                                                                                                                                                     | <span class="ph">Returns the contents of a report and the Content-MD5 header for the returned report body.</span>                                                                                                                                                                                                                                                                                              | <span class="ph">All marketplaces.</span> |
| [ManageReportSchedule](Reports_ManageReportSchedule.html "Creates, updates, or deletes a report request schedule for a specified report type.")                                                                                                                                                                    | <span class="ph">Creates, updates, or deletes a report request schedule for a specified report type.</span>                                                                                                                                                                                                                                                                                                    | <span class="ph">All marketplaces.</span> |
| [GetReportScheduleList](Reports_GetReportScheduleList.html "Returns a list of order report requests that are scheduled to be submitted to Amazon MWS for processing.")                                                                                                                                             | <span class="ph">Returns a list of order report requests that are scheduled to be submitted to <span class="ph">Amazon MWS</span> for processing.</span>                                                                                                                                                                                                                                                       | <span class="ph">All marketplaces.</span> |
| [GetReportScheduleListByNextToken](Reports_GetReportScheduleListByNextToken.html "Currently this operation can never be called because the GetReportScheduleList operation cannot return more than 100 results. It is included for future compatibility.")                                                         | <span class="ph">Currently this operation can never be called because the <span class="keyword apiname">GetReportScheduleList</span> operation cannot return more than 100 results. It is included for future compatibility.</span>                                                                                                                                                                            | <span class="ph">All marketplaces.</span> |
| [GetReportScheduleCount](Reports_GetReportScheduleCount.html "Returns a count of order report requests that are scheduled to be submitted to Amazon MWS.")                                                                                                                                                         | <span class="ph">Returns a count of order report requests that are scheduled to be submitted to <span class="ph">Amazon MWS</span>.</span>                                                                                                                                                                                                                                                                     | <span class="ph">All marketplaces.</span> |
| [UpdateReportAcknowledgements](Reports_UpdateReportAcknowledgements.html "Updates the acknowledged status of one or more reports.")                                                                                                                                                                                | <span class="ph">Updates the acknowledged status of one or more reports.</span>                                                                                                                                                                                                                                                                                                                                | <span class="ph">All marketplaces.</span> |

</div>

</div>

</div>

<div class="related-links">

## In this section

  - **[Use ReportProcessingFinishedNotification when requesting a
    report](../reports/Reports_UseReportProcessingFinished.md)**  
  - **[Working with order
    reports](../reports/Reports_WorkingWithOrderReports.md)**  
    Describes how to schedule and manage order reports.
  - **[Using NextToken to request additional
    pages](../reports/Reports_UsingNextToken.md)**  
    Describes how to use the
    <span class="keyword parmname">NextToken</span> to receive more
    response elements than the maximum number of response elements
    allowed by an operation.
  - **[Using multiple
    marketplaces](../reports/Reports_UsingMultipleMarketplaces.md)**  
    Describes the best practices to follow when you are registered to
    sell in multiple marketplaces.

</div>

</div>

<div id="MWSDX_footer">

Copyright © 2009-2019 Amazon.com, Inc. or its affiliates. Amazon and
Amazon.com are registered trademarks of Amazon.com, Inc. or its
affiliates. All other trademarks are the property of their respective
owners.

</div>

</div>

</div>

<div style="clear: both;">

</div>

</div>
