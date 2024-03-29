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

# What you should know about the Amazon MWS Sellers API Section

<div class="body conbody">

The <span class="ph">Amazon MWS</span> <span class="ph">Sellers API
section</span> of the <span class="ph">Amazon Marketplace Web Service
(Amazon MWS)</span> API lets sellers retrieve information about their
seller account, such as the marketplaces they participate in. Along with
listing the marketplaces that a seller can sell in, the API also
provides additional information about the marketplace such as the
default language and the default currency. The API also provides
seller-specific information such as whether the seller has suspended
listings in that marketplace.

<div class="section">

The following operations are included in the <span class="ph">Sellers
API section</span>:

<div class="p">

<div class="tablenoborder">

| Operation                                                                                                                                                                                                                                                                                 | Description                                                                                                                                                                   | Availability                              |
|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------|
| <a href="Sellers_ListMarketplaceParticipations.md" class="xref" title="Returns a list of marketplaces that the seller submitting the request can sell in, and a list of participations that include seller-specific information in that marketplace.">ListMarketplaceParticipations</a> | Returns a list of marketplaces that the seller submitting the request can sell in, and a list of participations that include seller-specific information in that marketplace. | <span class="ph">All marketplaces.</span> |
| <a href="Sellers_ListMarketplaceParticipationsByNextToken.md" class="xref" title="Returns the next page of marketplaces and participations using the NextToken.">ListMarketplaceParticipationsByNextToken</a>                                                                           | Returns the next page of marketplaces and participations using the <span class="keyword parmname">NextToken</span>.                                                           | <span class="ph">All marketplaces.</span> |
| <a href="Sellers_GetServiceStatus.md" class="xref" title="Returns the operational status of the Sellers API section.">GetServiceStatus</a>                                                                                                                                              | Returns the operational status of the <span class="ph">Sellers API section</span>.                                                                                            | <span class="ph">All marketplaces.</span> |

</div>

</div>

</div>

<div class="section">

## Terminology

The following table defines terminology for this API section:

<div class="tablenoborder">

| Term                          | Definition                                                                                                                                                                                                                                                                          |
|-------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Marketplace**               | A marketplace is an Amazon market where the seller can list items for sale and customers can view and purchase items. Each Amazon marketplace has a unique ID associated with it. Multiple marketplaces can exist in a single country. Example: www.amazon.com and www.amazon.co.uk |
| **Marketplace Participation** | Information that is specific to the seller in that Marketplace. Example: the HasSellerSuspendedListings parameter                                                                                                                                                                   |

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
