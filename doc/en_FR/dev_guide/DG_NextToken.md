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

<div id="DG_NextToken" class="nested0">

# Using NextToken to request additional pages

<div class="body">

If you make a request to <span class="ph">Amazon Marketplace Web Service
(Amazon MWS)</span> that generates more response elements than the
maximum number of response elements that can be returned per page, you
can submit <span class="keyword parmname">NextToken</span> with a
"ByNextToken" operation to request additional pages. <span
class="keyword parmname">NextToken</span> works slightly differently for
the various <span class="ph">Amazon MWS</span> API sections.

</div>

<div id="Using" class="topic nested1">

## Using NextToken

<div class="body">

<div class="section">

### Using NextToken with operations that return HasNext

1.  Call an operation.

    If the <span class="keyword parmname">HasNext</span> response
    element returns `false`, there are no more response elements to
    return. Task is complete.

    OR

    If the <span class="keyword parmname">HasNext</span> response
    element returns `true`, there are more response elements to return.
    Continue to Step 2.

2.  Call the "ByNextToken" operation that matches the operation you
    called in Step 1 (for example, call <span
    class="keyword apiname">GetReportListByNextToken</span> if you
    called <span class="keyword apiname">GetReportList</span>) and
    include the <span class="keyword parmname">NextToken</span> value
    returned in Step 1.

    If the <span class="keyword parmname">HasNext</span> response
    element returns `false`, there are no more response elements to
    return. Task is complete.

    OR

    If the <span class="keyword parmname">HasNext</span> response
    element returns `true`, there are more response elements to return.
    Continue to Step 3.

3.  Continue calling the "ByNextToken" operation until the <span
    class="keyword parmname">HasNext</span> response element returns
    `false`.

</div>

<div class="section">

### Using NextToken with operations that return MoreResultsAvailable

1.  Call an operation.

    If the <span class="keyword parmname">MoreResultsAvailable</span>
    response element returns `false`, there are no more response
    elements currently available. However, more results might be
    available in the future. Continue to Step 2 at some point in the
    future. The amount of time to wait depends on your business
    processes and on how often you expect the operation to return new
    results.

    OR

    If the <span class="keyword parmname">MoreResultsAvailable</span>
    response element returns `true`, there are more response elements to
    return now. Continue to Step 2.

2.  Call the "ByNextToken" operation that matches the operation you
    called in Step 1 (for example, call <span
    class="keyword apiname">ListCustomersByNextToken</span> if you
    called <span class="keyword apiname">ListCustomers</span>) and
    include the <span class="keyword parmname">NextToken</span> value
    returned in Step 1.

    If the <span class="keyword parmname">MoreResultsAvailable</span>
    response element returns `false`, there are no more response
    elements currently available. However, more results might be
    available in the future. Continue to Step 3 at some point in the
    future. The amount of time to wait depends on your business
    processes and on how often you expect the operation to return new
    results.

    OR

    If the <span class="keyword parmname">MoreResultsAvailable</span>
    response element returns `true`, there are more response elements to
    return now. Continue to Step 3.

3.  Continue calling the "ByNextToken" operation until the <span
    class="keyword parmname">MoreResultsAvailable</span> response
    element returns `false`. Then, wait for a period of time before you
    call the "ByNextToken" operation again. The amount of time to wait
    depends on your business processes and on how often you expect the
    operation to return new results.

</div>

<div class="section">

### Using NextToken with operations that do not return HasNext or MoreResultsAvailable

1.  Call an operation.

    If the <span class="keyword parmname">NextToken</span> response
    element is not returned, there are no more response elements to
    return. Task is complete.

    OR

    If the <span class="keyword parmname">NextToken</span> response
    element is returned, there are more response elements to return.
    Continue to Step 2.

2.  Call the "ByNextToken" operation that matches the operation you
    called in Step 1 (for example, call <span
    class="keyword apiname">ListOrdersByNextToken</span> if you called
    <span class="keyword apiname">ListOrders</span>) and include the
    <span class="keyword parmname">NextToken</span> value returned in
    Step 1.

    If the <span class="keyword parmname">NextToken</span> response
    element is not returned, there are no more response elements to
    return. Task is complete.

    OR

    If the <span class="keyword parmname">NextToken</span> response
    element is returned, there are more response elements to return.
    Continue to Step 3.

3.  Continue calling the "ByNextToken" operation until the <span
    class="keyword parmname">NextToken</span> response element is no
    longer returned.

</div>

</div>

</div>

<div id="Errors" class="topic nested1">

## Handling errors with NextTokens

<div class="body">

If you ever submit a <span class="keyword parmname">NextToken</span> to
a "ByNextToken" operation and the service returns a <span
class="keyword parmname">NextTokenCorrupted</span> error, do not attempt
to repeat the call with the same <span
class="keyword parmname">NextToken</span>. Instead, call the operation
that originally created the <span
class="keyword parmname">NextToken</span> to get a new <span
class="keyword parmname">NextToken</span>.

For example, if you call the <span
class="keyword apiname">ListOrdersByNextToken</span> operation and you
receive a <span class="keyword parmname">NextTokenCorrupted</span>
error, call the <span class="keyword apiname">ListOrders</span>
operation to generate a new <span
class="keyword parmname">NextToken</span>. You can then pass this new
<span class="keyword parmname">NextToken</span> to the <span
class="keyword apiname">ListOrdersByNextToken</span> operation.

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
