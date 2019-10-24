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

<div id="Finances_Overview" class="nested0">

# What you should know about the Finances API section

<div class="body">

The <span class="ph">Finances API section</span> of
<span class="ph">Amazon Marketplace Web Service (Amazon MWS)</span>
enables you to obtain financial information relevant to your business
with Amazon. You can obtain financial events for a given order,
financial event group, or date range without having to wait until a
statement period closes. You can also obtain financial event groups for
a given date range.

</div>

<div id="Terminology" class="topic nested1">

## Terminology

<div class="body">

The following table defines terminology for this API
section:

<div class="tablenoborder">

| Term                                                        | Definition                                                                                                                                                                                                                                                                                                                 |
| ----------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| <span class="keyword parmname">Financial event group</span> | A financial event group is a group of financial events that occur during a statement period for a seller. At the end of each statement period, Amazon disburses money to the seller if the balance of the financial event group is positive or charges the seller if the balance of the financial event group is negative. |

</div>

</div>

</div>

<div id="Operations" class="topic nested1">

## Operations

<div class="body">

The following operations are included in the <span class="ph">Finances
API
section</span>:

<div class="tablenoborder">

| Operation                                                                                                                                                                 | Description                                                                                                                                  | Availability                              |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------- |
| [ListFinancialEventGroups](Finances_ListFinancialEventGroups.html "Returns financial event groups for a given date range.")                                               | <span class="ph">Returns financial event groups for a given date range.</span>                                                               | <span class="ph">All marketplaces.</span> |
| [ListFinancialEventGroupsByNextToken](Finances_ListFinancialEventGroupsByNextToken.html "Returns the next page of financial event groups using the NextToken parameter.") | <span class="ph">Returns the next page of financial event groups using the <span class="keyword parmname">NextToken</span> parameter.</span> | <span class="ph">All marketplaces.</span> |
| [ListFinancialEvents](Finances_ListFinancialEvents.html "Returns financial events for a given order, financial event group, or date range.")                              | <span class="ph">Returns financial events for a given order, financial event group, or date range.</span>                                    | <span class="ph">All marketplaces.</span> |
| [ListFinancialEventsByNextToken](Finances_ListFinancialEventsByNextToken.html "Returns the next page of financial events using the NextToken parameter.")                 | <span class="ph">Returns the next page of financial events using the <span class="keyword parmname">NextToken</span> parameter.</span>       | <span class="ph">All marketplaces.</span> |
| [GetServiceStatus](Finances_GetServiceStatus.html "Returns the operational status of the Finances API section.")                                                          | <span class="ph">Returns the operational status of the <span class="ph">Finances API section</span>.</span>                                  | <span class="ph">All marketplaces.</span> |

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
