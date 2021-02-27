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

<div id="Products_Overview" class="nested0">

What you should know about the Amazon MWS Products API section
==============================================================

<div class="body">

The <span class="ph">Products API section</span> of <span
class="ph">Amazon Marketplace Web Service (Amazon MWS)</span> helps you
get information to match your products to existing product listings on
Amazon Marketplace websites and to make sourcing and pricing decisions
for listing those products on Amazon Marketplace websites. The <span
class="ph">Amazon MWS</span> Products API returns product attributes,
current Marketplace pricing information, and a variety of other product
and listing information.

<div class="note note">

<span class="notetitle">Note:</span> The <span class="ph">Amazon
MWS</span> <span class="ph">Products API section</span> is only for
products listed on Amazon Marketplace websites. The <span
class="ph">Amazon MWS</span> <span class="ph">Products API
section</span> is not for <span class="ph">Checkout by Amazon</span>.

</div>

<div class="p">

The <span class="ph">Products API section</span> contains the following
operations in the following marketplaces:

<div class="tablenoborder">

| Operation                                                                                                                                                                                                                    | Description                                                                                                                                                                     | Availability                              |
|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------|
| <a href="Products_ListMatchingProducts.md" class="xref" title="Returns a list of products and their attributes, based on a search query.">ListMatchingProducts</a>                                                         | <span class="ph">Returns a list of products and their attributes, based on a search query.</span>                                                                               | <span class="ph">All marketplaces.</span> |
| <a href="Products_GetMatchingProduct.md" class="xref" title="Returns a list of products and their attributes, based on a list of ASIN values.">GetMatchingProduct</a>                                                      | <span class="ph">Returns a list of products and their attributes, based on a list of <span class="keyword parmname">ASIN</span> values.</span>                                  | <span class="ph">All marketplaces.</span> |
| <a href="Products_GetMatchingProductForId.md" class="xref" title="Returns a list of products and their attributes, based on a list of ASIN, GCID, SellerSKU, UPC, EAN, ISBN, and JAN values.">GetMatchingProductForId</a>  | <span class="ph">Returns a list of products and their attributes, based on a list of ASIN, GCID, SellerSKU, UPC, EAN, ISBN, and JAN values.</span>                              | <span class="ph">All marketplaces.</span> |
| <a href="Products_GetCompetitivePricingForSKU.md" class="xref" title="Returns the current competitive price of a product, based on SellerSKU.">GetCompetitivePricingForSKU</a>                                             | <span class="ph">Returns the current competitive price of a product, based on <span class="keyword parmname">SellerSKU</span>.</span>                                           | <span class="ph">All marketplaces.</span> |
| <a href="Products_GetCompetitivePricingForASIN.md" class="xref" title="Returns the current competitive price of a product, based on ASIN.">GetCompetitivePricingForASIN</a>                                                | <span class="ph">Returns the current competitive price of a product, based on <span class="keyword parmname">ASIN</span>.</span>                                                | <span class="ph">All marketplaces.</span> |
| <a href="Products_GetLowestOfferListingsForSKU.md" class="xref" title="Returns pricing information for the lowest-price active offer listings for up to 20 products, based on SellerSKU.">GetLowestOfferListingsForSKU</a> | <span class="ph">Returns pricing information for the lowest-price active offer listings for up to 20 products, based on <span class="keyword parmname">SellerSKU</span>.</span> | <span class="ph">All marketplaces.</span> |
| <a href="Products_GetLowestOfferListingsForASIN.md" class="xref" title="Returns pricing information for the lowest-price active offer listings for up to 20 products, based on ASIN.">GetLowestOfferListingsForASIN</a>    | <span class="ph">Returns pricing information for the lowest-price active offer listings for up to 20 products, based on <span class="keyword parmname">ASIN</span>.</span>      | <span class="ph">All marketplaces.</span> |
| <a href="Products_GetLowestPricedOffersForSKU.md" class="xref" title="Returns lowest priced offers for a single product, based on SellerSKU.">GetLowestPricedOffersForSKU</a>                                              | <span class="ph">Returns lowest priced offers for a single product, based on <span class="keyword parmname">SellerSKU</span>.</span>                                            | <span class="ph">All marketplaces.</span> |
| <a href="Products_GetLowestPricedOffersForASIN.md" class="xref" title="Returns lowest priced offers for a single product, based on ASIN.">GetLowestPricedOffersForASIN</a>                                                 | <span class="ph">Returns lowest priced offers for a single product, based on <span class="keyword parmname">ASIN</span>.</span>                                                 | <span class="ph">All marketplaces.</span> |
| <a href="Products_GetMyFeesEstimate.md" class="xref" title="Returns the estimated fees for a list of products.">GetMyFeesEstimate</a>                                                                                      | <span class="ph">Returns the estimated fees for a list of products.</span>                                                                                                      | <span class="ph">All marketplaces.</span> |
| <a href="Products_GetMyPriceForSKU.md" class="xref" title="Returns pricing information for your own active offer listings, based on SellerSKU.">GetMyPriceForSKU</a>                                                       | <span class="ph">Returns pricing information for your own active offer listings, based on <span class="keyword parmname">SellerSKU</span>.</span>                               | <span class="ph">All marketplaces.</span> |
| <a href="Products_GetMyPriceForASIN.md" class="xref" title="Returns pricing information for your own active offer listings, based on ASIN.">GetMyPriceForASIN</a>                                                          | <span class="ph">Returns pricing information for your own active offer listings, based on <span class="keyword parmname">ASIN</span>.</span>                                    | <span class="ph">All marketplaces.</span> |
| <a href="Products_GetProductCategoriesForSKU.md" class="xref" title="Returns the parent product categories that a product belongs to, based on SellerSKU.">GetProductCategoriesForSKU</a>                                  | <span class="ph">Returns the parent product categories that a product belongs to, based on <span class="keyword parmname">SellerSKU</span>.</span>                              | <span class="ph">All marketplaces.</span> |
| <a href="Products_GetProductCategoriesForASIN.md" class="xref" title="Returns the parent product categories that a product belongs to, based on ASIN.">GetProductCategoriesForASIN</a>                                     | <span class="ph">Returns the parent product categories that a product belongs to, based on <span class="keyword parmname">ASIN</span>.</span>                                   | <span class="ph">All marketplaces.</span> |
| <a href="Products_GetServiceStatus.md" class="xref" title="Returns the operational status of the Products API section.">GetServiceStatus</a>                                                                               | <span class="ph">Returns the operational status of the <span class="ph">Products API section</span>.</span>                                                                     | <span class="ph">All marketplaces.</span> |

</div>

</div>

</div>

<div class="related-links">

In this section
---------------

-   **[Processing bulk operation
    requests](../products/Products_ProcessingBulkOperationRequests.md)**  
    Describes how to process operations in bulk by using the <span
    class="keyword parmname">ASINList</span>, <span
    class="keyword parmname">SellerSKUList</span>, and <span
    class="keyword parmname">IdList</span> request parameters.
-   **[Throttling in the Products
    API](../products/Products_Throttling.md)**  
    Describes the throttling policy for the <span class="ph">Products
    API section</span>.

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
