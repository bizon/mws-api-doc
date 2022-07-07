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

<div id="Reports_Overview" class="nested0">

# What you should know about the Amazon MWS Reports API section

<div class="body">

The <span class="ph">Reports API</span> section of the <span
class="ph">Amazon Marketplace Web Service (Amazon MWS)</span> API lets
you request various reports that help you manage your Sell on Amazon
business. Report types are specified using the <span
class="keyword apiname">ReportTypes</span> enumeration.

Amazon periodically adds new fields and field values to reports. Be sure
to build report parsers into your <span class="ph">Amazon MWS</span>
applications that can gracefully handle these types of report updates.
For more information, see
<a href="../dev_guide/DG_BuildingRobustApps.md#DG_BuildingRobustApps" class="xref">Building robust Amazon MWS applications</a>.

<div class="note important">

<span class="importanttitle">Important:</span> Your access to <span
class="ph">Amazon MWS</span> data depends on the role Amazon assigns you
after you submit the <span class="ph">Developer Registration and
Assessment form</span>. For more information see
<a href="../dev_guide/DG_Registering.md#DG_Registering" class="xref">Registering to use Amazon MWS</a>.

</div>

The report process begins by creating a report request. Next, you obtain
a list of report requests which shows the report request identifier and
status of each requested report. Finally, you use the report request
identifier from this listing to get the actual report. The process steps
are as follows:

1.  Submit a report request using the <span
    class="keyword apiname">RequestReport</span> operation. This is a
    request to <span class="ph">Amazon MWS</span> to generate a specific
    report. Note that you can also schedule order report requests to be
    submitted periodically using the <span
    class="keyword apiname">ManageReportSchedule</span> operation.
2.  Submit a request using the <span
    class="keyword apiname">GetReportRequestList</span> operation to get
    a list that shows the report requests and the status and ID of each
    report request. <span class="ph">Amazon MWS</span> returns a <span
    class="keyword parmname">ReportRequestId</span> for every report
    requested. When <span class="ph">Amazon MWS</span> sets the status
    of a report request to `_DONE_`, the report is ready to be
    retrieved. Some reports create a <span
    class="keyword parmname">GeneratedReportId</span> that you can pass
    to the <span class="keyword apiname">GetReport</span> operation (see
    step 4). If you need to cancel a report request, use the <span
    class="keyword apiname">CancelReportRequests</span> operation.
    <div class="note note">

    <span class="notetitle">Note:</span> Rather than repeatedly polling
    the <span class="keyword apiname">GetReportRequestList</span>
    operation to find out when report processing is complete, Amazon
    recommends subscribing to the <span
    class="keyword parmname">ReportProcessingFinishedNotification</span>
    notification. After you subscribe, for each report you request
    Amazon will send you a push notification when report processing is
    complete. This makes your workflow more efficient and helps you
    avoid exceeding the throttling limits of the <span
    class="keyword apiname">GetReportRequestList</span> operation. For
    more information, see
    <a href="Reports_UseReportProcessingFinished.md" class="xref">Use the ReportProcessingFinished notification when requesting a report</a>.

    </div>
3.  If no <span class="keyword parmname">GeneratedReportId</span> was
    created, submit a request using the <span
    class="keyword apiname">GetReportList</span> operation and include
    the <span class="keyword parmname">ReportRequestId</span> for the
    report requested. The operation returns a <span
    class="keyword parmname">ReportId</span> that you can then pass to
    the <span class="keyword apiname">GetReport</span> operation (see
    step 4).
4.  Submit a request using the <span
    class="keyword apiname">GetReport</span> operation to receive a
    specific report. You include in the request the <span
    class="keyword parmname">GeneratedReportId</span> or the <span
    class="keyword parmname">ReportId</span> for the report you want to
    receive. You then process the Content-MD5 header to confirm that the
    report was not corrupted during transmission. For more information
    on working with the Content-MD5 header, see the <span
    class="ph">Amazon MWS Developer Guide</span>.

The following flowchart shows the process for submitting and receiving
an on-request report:

<img src="ReportRequest_flowchart.png" class="image" />

You can also schedule order report requests so that they are submitted
periodically by using the <span
class="keyword apiname">ManageReportSchedule</span> operation. The <span
class="keyword apiname">Schedule</span> enumeration is used to specify
the time period for submitting report requests. You can also get a list
of scheduled order report requests using the <span
class="keyword apiname">GetReportScheduleList</span> operation.

The following flowchart shows the process for submitting and receiving a
scheduled report:

<img src="SchedReport_flowchart.png" class="image" />

<div id="Reports_Overview__ReportsOperations" class="section">

## The <span class="ph">Reports API</span> section operations

The <span class="ph">Reports API</span> section contains the following
operations:

<div class="tablenoborder">

| Operation                                                                                                                                                                                                                                                                                                                                        | Description                                                                                                                                                                                                                                                                                                                                                                                                      | Availability                              |
|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------|
| <a href="../reports/Reports_RequestReport.md" class="xref">RequestReport</a>                                                                                                                                                                                                                                                                   | <span class="ph">Creates a report request and submits the request to <span class="ph">Amazon MWS</span>.</span>                                                                                                                                                                                                                                                                                                  | <span class="ph">All marketplaces.</span> |
| <a href="Reports_GetReportRequestList.md" class="xref" title="Returns a list of report requests that you can use to get the ReportRequestId for a report.">GetReportRequestList</a>                                                                                                                                                            | <span class="ph">Returns a list of report requests that you can use to get the <span class="keyword parmname">ReportRequestId</span> for a report.</span>                                                                                                                                                                                                                                                        | <span class="ph">All marketplaces.</span> |
| <a href="Reports_GetReportRequestListByNextToken.md" class="xref" title="Returns a list of report requests using the NextToken, which was supplied by a previous request to either GetReportRequestListByNextToken or GetReportRequestList, where the value of HasNext was true in that previous request.">GetReportRequestListByNextToken</a> | <span class="ph">Returns a list of report requests using the <span class="keyword parmname">NextToken</span>, which was supplied by a previous request to either <span class="keyword apiname">GetReportRequestListByNextToken</span> or <span class="keyword apiname">GetReportRequestList</span>, where the value of <span class="keyword parmname">HasNext</span> was `true` in that previous request.</span> | <span class="ph">All marketplaces.</span> |
| <a href="Reports_GetReportRequestCount.md" class="xref" title="Returns a count of report requests that have been submitted to Amazon MWS for processing.">GetReportRequestCount</a>                                                                                                                                                            | <span class="ph">Returns a count of report requests that have been submitted to <span class="ph">Amazon MWS</span> for processing.</span>                                                                                                                                                                                                                                                                        | <span class="ph">All marketplaces.</span> |
| <a href="Reports_CancelReportRequests.md" class="xref" title="Cancels one or more report requests.">CancelReportRequests</a>                                                                                                                                                                                                                   | <span class="ph">Cancels one or more report requests.</span>                                                                                                                                                                                                                                                                                                                                                     | <span class="ph">All marketplaces.</span> |
| <a href="Reports_GetReportList.md" class="xref" title="Returns a list of reports that were created in the previous 90 days.">GetReportList</a>                                                                                                                                                                                                 | <span class="ph">Returns a list of reports that were created in the previous 90 days.</span>                                                                                                                                                                                                                                                                                                                     | <span class="ph">All marketplaces.</span> |
| <a href="Reports_GetReportListByNextToken.md" class="xref" title="Returns a list of reports using the NextToken, which was supplied by a previous request to either GetReportListByNextToken or GetReportList, where the value of HasNext was true in the previous call.">GetReportListByNextToken</a>                                         | <span class="ph"> Returns a list of reports using the <span class="keyword parmname">NextToken</span>, which was supplied by a previous request to either <span class="keyword apiname">GetReportListByNextToken</span> or <span class="keyword apiname">GetReportList</span>, where the value of <span class="keyword parmname">HasNext</span> was `true` in the previous call.</span>                          | <span class="ph">All marketplaces.</span> |
| <a href="Reports_GetReportCount.md" class="xref" title="Returns a count of the reports, created in the previous 90 days, with a status of _DONE_ and that are available for download.">GetReportCount</a>                                                                                                                                      | <span class="ph">Returns a count of the reports, created in the previous 90 days, with a status of `_DONE_` and that are available for download.</span>                                                                                                                                                                                                                                                          | <span class="ph">All marketplaces.</span> |
| <a href="../reports/Reports_GetReport.md" class="xref">GetReport</a>                                                                                                                                                                                                                                                                           | <span class="ph">Returns the contents of a report and the Content-MD5 header for the returned report body.</span>                                                                                                                                                                                                                                                                                                | <span class="ph">All marketplaces.</span> |
| <a href="Reports_ManageReportSchedule.md" class="xref" title="Creates, updates, or deletes a report request schedule for a specified report type.">ManageReportSchedule</a>                                                                                                                                                                    | <span class="ph">Creates, updates, or deletes a report request schedule for a specified report type.</span>                                                                                                                                                                                                                                                                                                      | <span class="ph">All marketplaces.</span> |
| <a href="Reports_GetReportScheduleList.md" class="xref" title="Returns a list of order report requests that are scheduled to be submitted to Amazon MWS for processing.">GetReportScheduleList</a>                                                                                                                                             | <span class="ph">Returns a list of order report requests that are scheduled to be submitted to <span class="ph">Amazon MWS</span> for processing.</span>                                                                                                                                                                                                                                                         | <span class="ph">All marketplaces.</span> |
| <a href="Reports_GetReportScheduleListByNextToken.md" class="xref" title="Currently this operation can never be called because the GetReportScheduleList operation cannot return more than 100 results. It is included for future compatibility.">GetReportScheduleListByNextToken</a>                                                         | <span class="ph">Currently this operation can never be called because the <span class="keyword apiname">GetReportScheduleList</span> operation cannot return more than 100 results. It is included for future compatibility.</span>                                                                                                                                                                              | <span class="ph">All marketplaces.</span> |
| <a href="Reports_GetReportScheduleCount.md" class="xref" title="Returns a count of order report requests that are scheduled to be submitted to Amazon MWS.">GetReportScheduleCount</a>                                                                                                                                                         | <span class="ph">Returns a count of order report requests that are scheduled to be submitted to <span class="ph">Amazon MWS</span>.</span>                                                                                                                                                                                                                                                                       | <span class="ph">All marketplaces.</span> |
| <a href="Reports_UpdateReportAcknowledgements.md" class="xref" title="Updates the acknowledged status of one or more reports.">UpdateReportAcknowledgements</a>                                                                                                                                                                                | <span class="ph">Updates the acknowledged status of one or more reports.</span>                                                                                                                                                                                                                                                                                                                                  | <span class="ph">All marketplaces.</span> |

</div>

</div>

</div>

<div class="related-links">

## In this section

-   **[Use ReportProcessingFinishedNotification when requesting a
    report](../reports/Reports_UseReportProcessingFinished.md)**  
-   **[Working with order
    reports](../reports/Reports_WorkingWithOrderReports.md)**  
    Describes how to schedule and manage order reports.
-   **[Using NextToken to request additional
    pages](../reports/Reports_UsingNextToken.md)**  
    Describes how to use the <span
    class="keyword parmname">NextToken</span> to receive more response
    elements than the maximum number of response elements allowed by an
    operation.
-   **[Using multiple
    marketplaces](../reports/Reports_UsingMultipleMarketplaces.md)**  
    Describes the best practices to follow when you are registered to
    sell in multiple marketplaces.

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
