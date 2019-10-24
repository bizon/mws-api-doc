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

<div id="Products_Overview" class="nested0">

# What you should know about the Amazon MWS Products API section

<div class="body">

The <span class="ph">Products API section</span> of
<span class="ph">Amazon Marketplace Web Service (Amazon MWS)</span>
helps you get information to match your products to existing product
listings on Amazon Marketplace websites and to make sourcing and pricing
decisions for listing those products on Amazon Marketplace websites. The
<span class="ph">Amazon MWS</span> Products API returns product
attributes, current Marketplace pricing information, and a variety of
other product and listing information.

<div class="note note">

<span class="notetitle">Note:</span> The <span class="ph">Amazon
MWS</span> <span class="ph">Products API section</span> is only for
products listed on Amazon Marketplace websites. The
<span class="ph">Amazon MWS</span> <span class="ph">Products API
section</span> is not for <span class="ph">Checkout by Amazon</span>.

</div>

<div class="p">

The <span class="ph">Products API section</span> contains the following
operations in the following
marketplaces:

<div class="tablenoborder">

| Operation                                                                                                                                                                                      | Description                                                                                                                                                                     | Availability                              |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------- |
| [ListMatchingProducts](Products_ListMatchingProducts.html "Returns a list of products and their attributes, based on a search query.")                                                         | <span class="ph">Returns a list of products and their attributes, based on a search query.</span>                                                                               | <span class="ph">All marketplaces.</span> |
| [GetMatchingProduct](Products_GetMatchingProduct.html "Returns a list of products and their attributes, based on a list of ASIN values.")                                                      | <span class="ph">Returns a list of products and their attributes, based on a list of <span class="keyword parmname">ASIN</span> values.</span>                                  | <span class="ph">All marketplaces.</span> |
| [GetMatchingProductForId](Products_GetMatchingProductForId.html "Returns a list of products and their attributes, based on a list of ASIN, GCID, SellerSKU, UPC, EAN, ISBN, and JAN values.")  | <span class="ph">Returns a list of products and their attributes, based on a list of ASIN, GCID, SellerSKU, UPC, EAN, ISBN, and JAN values.</span>                              | <span class="ph">All marketplaces.</span> |
| [GetCompetitivePricingForSKU](Products_GetCompetitivePricingForSKU.html "Returns the current competitive price of a product, based on SellerSKU.")                                             | <span class="ph">Returns the current competitive price of a product, based on <span class="keyword parmname">SellerSKU</span>.</span>                                           | <span class="ph">All marketplaces.</span> |
| [GetCompetitivePricingForASIN](Products_GetCompetitivePricingForASIN.html "Returns the current competitive price of a product, based on ASIN.")                                                | <span class="ph">Returns the current competitive price of a product, based on <span class="keyword parmname">ASIN</span>.</span>                                                | <span class="ph">All marketplaces.</span> |
| [GetLowestOfferListingsForSKU](Products_GetLowestOfferListingsForSKU.html "Returns pricing information for the lowest-price active offer listings for up to 20 products, based on SellerSKU.") | <span class="ph">Returns pricing information for the lowest-price active offer listings for up to 20 products, based on <span class="keyword parmname">SellerSKU</span>.</span> | <span class="ph">All marketplaces.</span> |
| [GetLowestOfferListingsForASIN](Products_GetLowestOfferListingsForASIN.html "Returns pricing information for the lowest-price active offer listings for up to 20 products, based on ASIN.")    | <span class="ph">Returns pricing information for the lowest-price active offer listings for up to 20 products, based on <span class="keyword parmname">ASIN</span>.</span>      | <span class="ph">All marketplaces.</span> |
| [GetLowestPricedOffersForSKU](Products_GetLowestPricedOffersForSKU.html "Returns lowest priced offers for a single product, based on SellerSKU.")                                              | <span class="ph">Returns lowest priced offers for a single product, based on <span class="keyword parmname">SellerSKU</span>.</span>                                            | <span class="ph">All marketplaces.</span> |
| [GetLowestPricedOffersForASIN](Products_GetLowestPricedOffersForASIN.html "Returns lowest priced offers for a single product, based on ASIN.")                                                 | <span class="ph">Returns lowest priced offers for a single product, based on <span class="keyword parmname">ASIN</span>.</span>                                                 | <span class="ph">All marketplaces.</span> |
| [GetMyFeesEstimate](Products_GetMyFeesEstimate.html "Returns the estimated fees for a list of products.")                                                                                      | <span class="ph">Returns the estimated fees for a list of products.</span>                                                                                                      | <span class="ph">All marketplaces.</span> |
| [GetMyPriceForSKU](Products_GetMyPriceForSKU.html "Returns pricing information for your own active offer listings, based on SellerSKU.")                                                       | <span class="ph">Returns pricing information for your own active offer listings, based on <span class="keyword parmname">SellerSKU</span>.</span>                               | <span class="ph">All marketplaces.</span> |
| [GetMyPriceForASIN](Products_GetMyPriceForASIN.html "Returns pricing information for your own active offer listings, based on ASIN.")                                                          | <span class="ph">Returns pricing information for your own active offer listings, based on <span class="keyword parmname">ASIN</span>.</span>                                    | <span class="ph">All marketplaces.</span> |
| [GetProductCategoriesForSKU](Products_GetProductCategoriesForSKU.html "Returns the parent product categories that a product belongs to, based on SellerSKU.")                                  | <span class="ph">Returns the parent product categories that a product belongs to, based on <span class="keyword parmname">SellerSKU</span>.</span>                              | <span class="ph">All marketplaces.</span> |
| [GetProductCategoriesForASIN](Products_GetProductCategoriesForASIN.html "Returns the parent product categories that a product belongs to, based on ASIN.")                                     | <span class="ph">Returns the parent product categories that a product belongs to, based on <span class="keyword parmname">ASIN</span>.</span>                                   | <span class="ph">All marketplaces.</span> |
| [GetServiceStatus](Products_GetServiceStatus.html "Returns the operational status of the Products API section.")                                                                               | <span class="ph">Returns the operational status of the <span class="ph">Products API section</span>.</span>                                                                     | <span class="ph">All marketplaces.</span> |

</div>

</div>

</div>

<div class="related-links">

## In this section

  - **[Processing bulk operation
    requests](../products/Products_ProcessingBulkOperationRequests.md)**  
    Describes how to process operations in bulk by using the
    <span class="keyword parmname">ASINList</span>,
    <span class="keyword parmname">SellerSKUList</span>, and
    <span class="keyword parmname">IdList</span> request parameters.
  - **[Throttling in the Products
    API](../products/Products_Throttling.md)**  
    Describes the throttling policy for the <span class="ph">Products
    API section</span>.

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
