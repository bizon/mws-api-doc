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

<div id="DG_BuildingRobustApps" class="nested0">

Building robust <span class="ph">Amazon MWS</span> applications
===============================================================

<div class="body">

Your <span class="ph">Amazon Marketplace Web Service (Amazon MWS)</span>
client applications should gracefully handle changes to the reports and
response elements that <span class="ph">Amazon MWS</span> returns, even
without prior change notification from Amazon.

<div id="DG_BuildingRobustApps__ChangesToReportsReturnedByAmazonMWS"
class="section">

Changes to reports returned by <span class="ph">Amazon MWS</span>
-----------------------------------------------------------------

Build report parsers into your client applications that can gracefully
handle the following types of changes to the reports that <span
class="ph">Amazon MWS</span> returns:

-   **New fields in reports.** Your client applications should handle
    new fields in reports as they become available. These include new
    columns in flat file reports and new elements in XML reports.
-   **New field values in reports.** Your client applications should
    handle new field values in reports as they become available. These
    include new column values in flat file reports and new element
    values in XML reports.

**Important:** If you choose to use report XSDs published by Amazon to
validate reports returned by Amazon MWS, be sure to build error handling
into your validation logic. Any report validation included in your
client application should be able to gracefully handle new, unrecognized
response elements or response element values.

</div>

<div id="DG_BuildingRobustApps__ChangesToAmazonMWSResponseElements"
class="section">

Changes to <span class="ph">Amazon MWS</span> response elements
---------------------------------------------------------------

Build your client applications to gracefully handle the following types
of changes to <span class="ph">Amazon MWS</span> responses:

-   **New response elements.** Your client applications should handle
    new, unrecognized response elements.
-   **New response element values.** Your client applications should
    handle new, unrecognized response element values.

</div>

<div id="DG_BuildingRobustApps__BestPractices" class="section">

Best practices
--------------

What does it mean to "gracefully handle" changes? Here are some
examples:

-   **Expect changes.** At a minimum, ensure that your client
    applications do not break when new response elements, response
    element values, report fields or report field values are introduced
    by Amazon. Don’t code your client applications to expect only
    certain elements, fields, and values.
-   **Log unrecognized elements, fields, or values.** Keep a log of all
    unrecognized elements, fields, or values returned by <span
    class="ph">Amazon MWS</span>. You can use this log to flag new
    functionality that has been introduced by Amazon, and then update
    your client application to take advantage of this functionality.
-   **Surface unrecognized elements, fields, or values.** If <span
    class="ph">Amazon MWS</span> begins returning a report with a new
    field, for example, you might devise a way to automatically surface
    the new field values in your client application in a way that is
    useful to your users.
-   **Expect response elements in any order.** Response elements can be
    returned in any order within a structure. Ensure that your client
    applications do not depend on the order in which response elements
    are returned by <span class="ph">Amazon MWS</span>.

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
