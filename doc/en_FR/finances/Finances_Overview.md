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

<div id="Finances_Overview" class="nested0">

# What you should know about the Finances API section

<div class="body">

The <span class="ph">Finances API section</span> of <span
class="ph">Amazon Marketplace Web Service (Amazon MWS)</span> enables
you to obtain financial information relevant to your business with
Amazon. You can obtain financial events for a given order, financial
event group, or date range without having to wait until a statement
period closes. You can also obtain financial event groups for a given
date range.

</div>

<div id="Terminology" class="topic nested1">

## Terminology

<div class="body">

The following table defines terminology for this API section:

<div class="tablenoborder">

| Term                                                        | Definition                                                                                                                                                                                                                                                                                                                 |
|-------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| <span class="keyword parmname">Financial event group</span> | A financial event group is a group of financial events that occur during a statement period for a seller. At the end of each statement period, Amazon disburses money to the seller if the balance of the financial event group is positive or charges the seller if the balance of the financial event group is negative. |

</div>

</div>

</div>

<div id="Operations" class="topic nested1">

## Operations

<div class="body">

The following operations are included in the <span class="ph">Finances
API section</span>:

<div class="tablenoborder">

| Operation                                                                                                                                                                                               | Description                                                                                                                                  | Availability                              |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------|
| <a href="Finances_ListFinancialEventGroups.md" class="xref" title="Returns financial event groups for a given date range.">ListFinancialEventGroups</a>                                               | <span class="ph">Returns financial event groups for a given date range.</span>                                                               | <span class="ph">All marketplaces.</span> |
| <a href="Finances_ListFinancialEventGroupsByNextToken.md" class="xref" title="Returns the next page of financial event groups using the NextToken parameter.">ListFinancialEventGroupsByNextToken</a> | <span class="ph">Returns the next page of financial event groups using the <span class="keyword parmname">NextToken</span> parameter.</span> | <span class="ph">All marketplaces.</span> |
| <a href="Finances_ListFinancialEvents.md" class="xref" title="Returns financial events for a given order, financial event group, or date range.">ListFinancialEvents</a>                              | <span class="ph">Returns financial events for a given order, financial event group, or date range.</span>                                    | <span class="ph">All marketplaces.</span> |
| <a href="Finances_ListFinancialEventsByNextToken.md" class="xref" title="Returns the next page of financial events using the NextToken parameter.">ListFinancialEventsByNextToken</a>                 | <span class="ph">Returns the next page of financial events using the <span class="keyword parmname">NextToken</span> parameter.</span>       | <span class="ph">All marketplaces.</span> |
| <a href="Finances_GetServiceStatus.md" class="xref" title="Returns the operational status of the Finances API section.">GetServiceStatus</a>                                                          | <span class="ph">Returns the operational status of the <span class="ph">Finances API section</span>.</span>                                  | <span class="ph">All marketplaces.</span> |

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
