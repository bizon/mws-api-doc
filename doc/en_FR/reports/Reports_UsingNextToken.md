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

<div id="Reports_UsingNextToken" class="nested0">

# Using NextToken to request additional pages

<div class="body">

Describes how to use the <span class="keyword parmname">NextToken</span>
to receive more response elements than the maximum number of response
elements allowed by an operation.

If you make a request to <span class="ph">Amazon Marketplace Web Service
(Amazon MWS)</span> that generates more response elements than the
maximum number of response elements that can be returned per page, you
can submit <span class="keyword parmname">NextToken</span> with a
"ByNextToken" operation to request additional pages.
<span class="keyword parmname">NextToken</span> works slightly
differently for the Feeds and Reports API sections than it does for the
other Amazon MWS API sections.

<div class="section">

## Using NextToken with the Amazon MWS Feeds and Reports API sections

1.  Submit an operation.
    
    If the <span class="keyword parmname">HasNext</span> response
    element returns false, there are no more response elements to
    return. Task is complete.
    
    OR
    
    If the <span class="keyword parmname">HasNext</span> response
    element returns true, there are more response elements to return.
    Continue to Step 2.

2.  Submit the “ByNextToken” operation that matches the operation you
    submitted in Step 1 (for example, submit
    <span class="keyword apiname">GetReportListByNextToken</span> if you
    submitted <span class="keyword apiname">GetReportList</span>) and
    include the <span class="keyword parmname">NextToken</span> value
    returned in Step 1.
    
    If the <span class="keyword parmname">HasNext</span> response
    element returns false, there are no more response elements to
    return. Task is complete.
    
    OR
    
    If the <span class="keyword parmname">HasNext</span> response
    element returns true, there are more response elements to return.
    Continue to Step 3.

3.  Continue submitting the “ByNextToken” operation until the
    <span class="keyword parmname">HasNext</span> response element
    returns false.

<div class="note note">

<span class="notetitle">Note:</span> When submitting the
<span class="keyword apiname">GetReportList</span> or
<span class="keyword apiname">GetReportListByNextToken</span>
operations, be sure that <span class="keyword parmname">HasNext</span>
returns false before submitting the
<span class="keyword apiname">UpdateReportAcknowledgements</span>
operation. This helps to ensure that all of the reports that match your
query parameters are returned. For more information, see
[UpdateReportAcknowledgements](Reports_UpdateReportAcknowledgements.html "Updates the acknowledged status of one or more reports.").

</div>

</div>

</div>

<div class="related-links">

<div class="familylinks">

<div class="parentlink">

**Parent topic:** [What you should know about the Amazon MWS Reports API
section](../reports/Reports_Overview.md)

</div>

</div>

<div class="relinfo">

**Related information**  

<div>

[Use ReportProcessingFinishedNotification when requesting a
report](../reports/Reports_UseReportProcessingFinished.md)

</div>

<div>

[Working with order
reports](../reports/Reports_WorkingWithOrderReports.html "Describes how to schedule and manage order reports.")

</div>

<div>

[Using multiple
marketplaces](../reports/Reports_UsingMultipleMarketplaces.html "Describes the best practices to follow when you are registered to sell in multiple marketplaces.")

</div>

</div>

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
