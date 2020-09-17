<div id="MWSDX_noscript">

JavaScript is currently disabled in your browser.  
To use the Amazon MWS documentation, you must enable JavaScript in your
browser.

</div>

<div id="MWSDX_divtop">

[![Amazon
Services](https://images-na.ssl-images-amazon.com/images/G/08/mwsportal/fr_FR/amazonservices.gif "Amazon Services")](http://services.amazon.fr)  
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

<div id="Reports_WorkingWithOrderReports" class="nested0">

Working with order reports
==========================

<div class="body">

Describes how to schedule and manage order reports.

When requesting order reports, note that order reports are generated
only if there are orders to report. In the case of scheduled order
reports, if there were no orders placed between the time the last order
report was created and the current request, no report is created. When
you manually request an order report using the <span
class="keyword apiname">RequestReport</span> operation, if there were no
orders placed in the time frame specified in your request, the operation
returns `_DONE_NO_DATA_` to indicate there are no order reports to
return.

<div class="section">

Scheduling order reports
------------------------

<div class="p">

A good practice for working with order reports is to schedule them as
follows:

1.  Schedule order report requests to be periodically submitted using
    the <span class="keyword apiname">ManageReportSchedule</span>
    operation.
2.  Schedule the <span class="keyword apiname">GetReportList</span>
    operation to be submitted in an interval that is similar to the
    schedule that you configured in Step 1. Ensure that the <span
    class="keyword parmname">Acknowledged</span> parameter is set to
    *false*. This step determines whether any new order reports have
    been created.
3.  Capture any <span class="keyword parmname">ReportId</span> values
    that are returned by the <span
    class="keyword apiname">GetReportList</span> operation. No <span
    class="keyword parmname">ReportId</span> values will be returned if
    no new order reports have been created since the last scheduled
    <span class="keyword apiname">GetReportList</span> request.
4.  For each <span class="keyword parmname">ReportId</span> value that
    is returned, submit the <span
    class="keyword apiname">GetReport</span> operation, specifying the
    <span class="keyword parmname">ReportId</span> value. Amazon MWS
    returns the report.
5.  Acknowledge the receipt of the report using the <span
    class="keyword apiname">UpdateReportAcknowledgements</span>
    operation. Do this after downloading your report to ensure that the
    report is not downloaded the next time you submit a <span
    class="keyword parmname">GetReportList</span> request (see Step 2).

</div>

<div class="note note">

<span class="notetitle">Note:</span>

-   In rare cases, the same order might be returned more than once when
    using this procedure. For more information, see **Duplicate
    orders**.
-   This procedure is for <span class="ph">self-fulfilled</span> orders
    only. For more information about tracking <span
    class="ph">Fulfillment by Amazon</span> orders, see
    <a href="../fba_guide/FBAGuide_MonitorAFNAmazonOrders.md" class="xref">Monitoring and tracking FBA orders</a>
    in the Amazon MWS for FBA Sellers guide.

</div>

</div>

<div class="section">

Duplicate orders
----------------

The procedure for scheduling order reports described in the previous
section helps to ensure that each generated order report (as identified
by its <span class="keyword parmname">ReportId</span>) is returned only
once. In most cases this means that individual orders (as identified by
<span class="keyword parmname">OrderId</span>) will be returned only
once. However, in rare cases, an order might be returned more than once
when using this procedure. In addition, you should expect duplicate
orders when you manually request order reports using the <span
class="keyword apiname">RequestReport</span> operation. For these
reasons you should design your automated systems to handle duplicate
orders in ways that make sense for your situation.

</div>

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

<a href="../reports/Reports_UseReportProcessingFinished.md" class="link">Use ReportProcessingFinishedNotification when requesting a report</a>

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
