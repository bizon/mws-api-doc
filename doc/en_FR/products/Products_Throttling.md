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

<div id="Products_Throttling" class="nested0">

# Throttling in the Products API

<div class="body">

Describes the throttling policy for the <span class="ph">Products API
section</span>.

The <span class="ph">Products API section</span> uses two types of
throttling. All the operations in the <span class="ph">Products API
section</span> use the standard per-request throttling described in
<a href="../dev_guide/DG_Throttling.md" class="xref">Throttling: Limits to how often you can submit requests</a>.
All of the operations have a **Maximum request quota** and **Hourly
request quota** measured by request. Many of the operations also
throttle based on the number of items returned by an operation. These
operations use a **Restore rate** based on the items instead of
requests.

<div class="section">

## Per-Request Throttling

These are the throttling rates for the <span class="ph">Products API
section</span> operations that only throttle per request.

<div class="tablenoborder">

| Operation                                                                                                                            | Maximum request quota | Restore rate                   | Hourly request quota  |
|--------------------------------------------------------------------------------------------------------------------------------------|-----------------------|--------------------------------|-----------------------|
| <span class="keyword apiname">ListMatchingProducts</span>                                                                            | 20 requests           | One request every five seconds | 720 requests per hour |
| <span class="keyword apiname">GetProductCategoriesForSKU</span> and <span class="keyword apiname">GetProductCategoriesForASIN</span> | 20 requests           | One request every five seconds | 720 requests per hour |

</div>

</div>

<div class="section">

## Per-Item Throttling

Operations in the <span class="ph">Products API section</span> that send
lists of items as input parameters have restore rates that are measured
by item. These operations also have request limits, but callers are
likely to hit item limits first. Requests are calculated for each Amazon
seller account and <span class="ph">Amazon MWS</span> developer account
pair.

Restore rates measured by item improve throughput for sellers who look
up many items one at a time. In this scenario (scanning single items
with a scanner, for example) the seller includes a single item with each
request. Suppose, for example, that a seller is submitting the <span
class="keyword apiname">GetLowestOfferListingsForSKU</span> operation
many times in succession. After depleting their request quota, they only
need to wait one second to submit ten more <span
class="keyword apiname">GetLowestOfferListingsForSKU</span> requests in
succession (provided that each request contains only one item).

When restore rates are by item, and you batch multiple items in a
request, it is possible to exceed your item quota without exceeding your
request quota. In this case you will have to wait for the item restore
rate to restore enough items to satisfy your next request.

These are the throttling rates for the <span class="ph">Products API
section</span> operations that throttle per item.

<div class="tablenoborder">

| Operation                                                                                                                                | Maximum request quota | Restore rate            | Hourly request quota    |
|------------------------------------------------------------------------------------------------------------------------------------------|-----------------------|-------------------------|-------------------------|
| <span class="keyword apiname">GetMatchingProduct</span>                                                                                  | 20 requests           | Two items every second  | 7200 requests per hour  |
| <span class="keyword apiname">GetMatchingProductForId</span>                                                                             | 20 requests           | Five items every second | 18000 requests per hour |
| <span class="keyword apiname">GetCompetitivePricingForSKU</span> and <span class="keyword apiname">GetCompetitivePricingForASIN</span>   | 20 requests           | 10 items every second   | 36000 requests per hour |
| <span class="keyword apiname">GetLowestOfferListingsForSKU</span> and <span class="keyword apiname">GetLowestOfferListingsForASIN</span> | 20 requests           | 10 items every second   | 36000 requests per hour |
| <span class="keyword apiname">GetLowestPricedOffersForSKU</span> and <span class="keyword apiname">GetLowestPricedOffersForASIN</span>   | 10 requests           | Five items every second | 200 requests per hour   |
| <span class="keyword apiname">GetMyFeesEstimate</span>                                                                                   | 20 requests           | 10 items every second   | 36000 requests per hour |
| <span class="keyword apiname">GetMyPriceForSKU</span> and <span class="keyword apiname">GetMyPriceForASIN</span>                         | 20 requests           | 10 items every second   | 36000 requests per hour |

</div>

**Note:**

-   The <span class="keyword apiname">GetCompetitivePricingForSKU</span>
    and <span
    class="keyword apiname">GetCompetitivePricingForASIN</span>
    operations together share the same maximum request quota and the
    same restore rate.
-   The <span
    class="keyword apiname">GetLowestOfferListingsForSKU</span> and
    <span class="keyword apiname">GetLowestOfferListingsForASIN</span>
    operations together share the same maximum request quota and the
    same restore rate.
-   The <span class="keyword apiname">GetLowestPricedOffersForSKU</span>
    and <span
    class="keyword apiname">GetLowestPricedOffersForASIN</span>
    operations together share the same maximum request quota and the
    same restore rate.
-   The <span class="keyword apiname">GetMyPriceForSKU</span> and <span
    class="keyword apiname">GetMyPriceForASIN</span> operations together
    share the same maximum request quota and the same restore rate.
-   The <span class="keyword apiname">GetProductCategoriesForSKU</span>
    and <span class="keyword apiname">GetProductCategoriesForASIN</span>
    operations together share the same maximum request quota and the
    same restore rate.

</div>

</div>

<div class="related-links">

<div class="familylinks">

<div class="parentlink">

**Parent topic:**
<a href="../products/Products_Overview.md" class="link">What you should know about the Amazon MWS Products API section</a>

</div>

</div>

<div class="relinfo">

**Related information**  

<div>

<a href="../products/Products_ProcessingBulkOperationRequests.md" class="link" title="Describes how to process operations in bulk by using the ASINList, SellerSKUList, and IdList request parameters.">Processing bulk operation requests</a>

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
