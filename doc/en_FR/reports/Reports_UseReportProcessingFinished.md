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

<div id="Reports_UseReportProcessingFinished" class="nested0">

Use ReportProcessingFinishedNotification when requesting a report
=================================================================

<div class="body">

When requesting a report, Amazon recommends using the
<a href="../notifications/Notifications_ReportProcessingFinishedNotification.md" class="xref">ReportProcessingFinishedNotification</a>
notification to find out when report processing is complete. This
eliminates the need to repeatedly poll the <span
class="keyword apiname">GetReportRequestList</span> operation to find
out when report processing is complete.

**To request a report**

1.  Subscribe to the <span
    class="keyword parmname">ReportProcessingFinishedNotification</span>
    notification.

    This is a one-time task. The <span
    class="keyword parmname">ReportProcessingFinishedNotification</span>
    notification tells you when report processing is complete. For
    information about subscribing to this notification, see
    <a href="../notifications/Notifications_Overview.md" class="xref">What you should know about Amazon MWS push notifications</a>.

2.  Call the
    <a href="../reports/Reports_RequestReport.md" class="xref">RequestReport</a>
    operation to request a report.
    <div class="note note">

    <span class="notetitle">Note:</span> If you are subscribed to the
    <span
    class="keyword parmname">ReportProcessingFinishedNotification</span>
    notification in multiple marketplaces and you specify one or more of
    those marketplaces with a call to the <span
    class="keyword apiname">RequestReport</span> operation, you will
    receive a notification for each marketplace that you specify.

    </div>

3.  Wait for the <span
    class="keyword parmname">ReportProcessingFinishedNotification</span>
    notification.

    When report processing is complete, Amazon sends you the <span
    class="keyword parmname">ReportProcessingFinishedNotification</span>
    notification with the <span
    class="keyword parmname">ReportProcessingStatus</span> element set
    to one of the following values:

    -   `DONE` - The report was successfully generated. Use the
        **ReportId** value included in the notification as input for the
        <a href="../reports/Reports_GetReport.md" class="xref">GetReport</a>
        operation in Step 4.
    -   `CANCELLED` - The report was cancelled. See the "Why are my
        reports cancelled?" section of the
        <a href="https://sellercentral.amazon.com/forums/t/downloading-reports/185371" class="xref">Downloading Reports</a>
        article in the <span class="ph">Amazon MWS</span> Knowledge Base
        for reasons why reports are cancelled.
    -   `DONE_NO_DATA` - The report was generated but there was no data
        to report. This happens when there is no new data to report
        between consecutive report requests. Retry until there is data
        to report.

4.  Call the
    <a href="../reports/Reports_GetReport.md" class="xref">GetReport</a>
    operation, specifying the <span
    class="keyword parmname">ReportId</span> value from the <span
    class="keyword parmname">ReportProcessingFinishedNotification</span>
    notification that you received in Step 3.

</div>

<div class="related-links">

<div class="familylinks">

<div class="parentlink">

**Parent topic:**
<a href="../reports/Reports_Overview.md" class="link">What you should know about the Amazon MWS Reports API section</a>

</div>

</div>

<div class="relinfo">

**Related information**  

<div>

<a href="../reports/Reports_WorkingWithOrderReports.md" class="link" title="Describes how to schedule and manage order reports.">Working with order reports</a>

</div>

<div>

<a href="../reports/Reports_UsingNextToken.md" class="link" title="Describes how to use the NextToken to receive more response elements than the maximum number of response elements allowed by an operation.">Using NextToken to request additional pages</a>

</div>

<div>

<a href="../reports/Reports_UsingMultipleMarketplaces.md" class="link" title="Describes the best practices to follow when you are registered to sell in multiple marketplaces.">Using multiple marketplaces</a>

</div>

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
