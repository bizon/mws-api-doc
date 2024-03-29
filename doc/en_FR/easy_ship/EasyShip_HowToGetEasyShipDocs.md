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

<div id="EasyShip_HowToGetEasyShipDocs" class="nested0">

# How to get invoice, shipping label, and warranty documents

<div class="body">

<div class="section">

Amazon generates an invoice when a buyer places an <span
class="ph">Amazon Easy Ship</span> order in India. When you call the
<a href="EasyShip_CreateScheduledPackage.md" class="xref">CreateScheduledPackage</a>
operation to schedule an <span class="ph">Amazon Easy Ship</span> pickup
slot for the order, Amazon generates a shipping label. If you include
serial numbers for the items that you specify in your call to <span
class="keyword apiname">CreateScheduledPackage</span>, Amazon also
generates warranty documents for the items. This topic explains how to
get invoices, shipping labels, and warranties for <span
class="ph">Amazon Easy Ship</span> orders that are scheduled for pickup.

</div>

<div id="EasyShip_HowToGetEasyShipDocs__Task-1_GetAReportIdentifier"
class="section">

## Task 1. Get a report identifier

You’ll need a report identifier to pass in with the
<a href="../reports/Reports_GetReportList.md" class="xref" title="Returns a list of reports that were created in the previous 90 days.">GetReportList</a>
operation in **Task 2. Get the PDF**.

**To get a report identifier**

1.  Call the
    <a href="../feeds/Feeds_SubmitFeed.md" class="xref">SubmitFeed</a>
    operation, specifying the following request parameters:

    -   **FeedContent.** Use the easyship-documents.xsd to form the
        content of the feed. For more information, see
        <a href="../feeds/Feeds_SubmitFeed.md" class="xref">SubmitFeed</a>
        and
        <a href="../feeds/Feeds_FeedType.md#EasyShipFeed" class="xref">Easy Ship feed</a>.
    -   **FeedType.** Specify `_POST_EASYSHIP_DOCUMENTS_`
    -   **ContentMD5Value.** For information about calculating this
        value, see
        <a href="../feeds/Feeds_SubmitFeed.md" class="xref">SubmitFeed</a>.
    -   **AmazonOrderId.** The identifier for the <span
        class="ph">Amazon Easy Ship</span> order that you want documents
        for. Use the <span class="keyword parmname">AmazonOrderId</span>
        that you included with your call to
        <a href="EasyShip_CreateScheduledPackage.md" class="xref">CreateScheduledPackage</a>
        when you scheduled the pickup slot.
    -   **DocumentType.** The type of document that you want to get. See
        <a href="../feeds/Feeds_SubmitFeed.md" class="xref">SubmitFeed</a>.

    The operation returns a <span
    class="keyword parmname">FeedSubmissionId</span> value.

2.  Call the
    <a href="../feeds/Feeds_GetFeedSubmissionList.md" class="xref" title="Returns a list of all feed submissions submitted in the previous 90 days.">GetFeedSubmissionList</a>
    operation, specifying the <span
    class="keyword parmname">FeedSubmissionId</span> value from Step 1.

    If the operation returns a status of `_Done_`, continue to Step 3.
    If not, retry until it returns a status of `_Done_`. For more
    information, see
    <a href="../feeds/Feeds_Overview.md" class="xref">What you should know about the Amazon MWS Feeds API section</a>.

3.  Call the
    <a href="../feeds/Feeds_GetFeedSubmissionResult.md" class="xref">GetFeedSubmissionResult</a>
    operation, specifying the <span
    class="keyword parmname">FeedSubmissionId</span> value from Step 1.

    The operation returns a feed processing report. If there are no
    errors, use the <span
    class="keyword parmname">ReportReferenceId</span> value from the
    processing report as a report identifier in **Task 2. Get the PDF**.
    If there are errors, correct them and start again at Step 1. Repeat
    the process until there are no errors and the processing report
    contains the <span class="keyword parmname">ReportReferenceId</span>
    value.

</div>

<div id="EasyShip_HowToGetEasyShipDocs__Task-2_GetThePDF"
class="section">

## Task 2. Get the PDF

Get a PDF that contains the invoice, shipping label, and warranty (if
available) documents for the <span class="ph">Amazon Easy Ship</span>
order.

1.  Call the
    <a href="../reports/Reports_GetReportList.md" class="xref" title="Returns a list of reports that were created in the previous 90 days.">GetReportList</a>
    operation. When specifying the <span
    class="keyword parmname">ReportRequestIdList</span> parameter, use
    the <span class="keyword parmname">ReportReferenceId</span> value
    from **Task 1. Get a report identifier**.

    The operation returns a <span
    class="keyword parmname">ReportId</span> value that you can pass
    into the
    <a href="../reports/Reports_GetReport.md" class="xref">GetReport</a>
    operation in the following step.

2.  Call the
    <a href="../reports/Reports_GetReport.md" class="xref">GetReport</a>
    operation, specifying the <span
    class="keyword parmname">ReportId</span> from the previous step.

    The operation returns PFD data and a Content-MD5 header. Process the
    the Content-MD5 header to confirm that the report was not corrupted
    during transmission. For more information about verifying a report
    using the Content-MD5 header, see
    <a href="../reports/Reports_GetReport.md" class="xref">GetReport</a>
    in the Reports API reference.

3.  Save the PDF data into a file with a PDF extension.

</div>

<div class="section">

## Related topics

<a href="EasyShip_HowToHandleSerialNumbers.md" class="xref">How to handle order items that require serial numbers</a>

</div>

</div>

<div class="related-links">

<div class="familylinks">

<div class="parentlink">

**Parent topic:**
<a href="../easy_ship/EasyShip_Overview.md" class="link">What you should know about the Easy Ship API section</a>

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
