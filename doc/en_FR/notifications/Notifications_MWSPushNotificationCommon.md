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

<div id="Notifications_MWSPushNotificationCommon" class="nested0">

# MWSPushNotificationCommon

<div class="body">

<span class="ph">Contains common types that are used by all
notifications that are contained in the <span
class="keyword parmname">NotificationPayload</span> element.</span>

<div class="section">

## Availability

This notification is available in all marketplaces.

</div>

</div>

<div id="SimpleTypes" class="topic nested1">

## Simple types

<div class="body">

These are the simple types of the
<a href="http://g-ec2.images-amazon.com/images/G/01/mwsportal/doc/en_US/subscriptions/MWSPushNotificationCommon.xsd" class="xref">MWSPushNotificationCommon.xsd</a>
schema:

<div class="tablenoborder">

| Simple type                                                                            | Description                                                                                                                       |
|----------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------|
| <a href="#SimpleTypes__AvailabilityType" class="xref">AvailabilityType</a>             | <span class="ph">Indicates whether the item is available for shipping now, or on a known or an unknown date in the future.</span> |
| <a href="#SimpleTypes__FulfillmentChannelType" class="xref">FulfillmentChannelType</a> | <span class="ph">Indicates whether the item is fulfilled by Amazon or by the seller.</span>                                       |
| <a href="#SimpleTypes__MarketplaceType" class="xref">MarketplaceType</a>               | <span class="ph">Represents the unique identifier of a marketplace.</span>                                                        |
| <a href="#SimpleTypes__VersionType" class="xref">VersionType</a>                       | <span class="ph">Represents a version.</span>                                                                                     |

</div>

<div id="SimpleTypes__AvailabilityType" class="section">

### AvailabilityType

<span class="ph">Indicates whether the item is available for shipping
now, or on a known or an unknown date in the future.</span>

<span class="ph">Type: xs:string</span>

<span class="keyword parmname">AvailabilityType</span> values:

-   <span class="keyword parmname">NOW</span> - The item is available
    for shipping now.
-   <span class="keyword parmname">FUTURE_WITHOUT_DATE</span> - The item
    will be available for shipping on an unknown date in the future.
-   <span class="keyword parmname">FUTURE_WITH_DATE</span> - The item
    will be available for shipping on a known date in the future.

</div>

<div id="SimpleTypes__FulfillmentChannelType" class="section">

### FulfillmentChannelType

<span class="ph">Indicates whether the item is fulfilled by Amazon or by
the seller.</span>

<span class="ph">Type: xs:string</span>

<span class="keyword parmname">FulfillmentChannelType</span> values:

-   `Amazon`
-   `Merchant`

</div>

<div id="SimpleTypes__MarketplaceType" class="section">

### MarketplaceType

<span class="ph">Represents the unique identifier of a
marketplace.</span>

<span class="ph">Type: xs:string</span>

Restriction: \[A-Z0-9\]+

</div>

<div id="SimpleTypes__VersionType" class="section">

### VersionType

<span class="ph">Represents a version.</span>

<span class="ph">Type: xs:string</span>

Restriction: \[0-9\]+\\.\[0-9\]

</div>

</div>

</div>

<div id="ComplexTypes" class="topic nested1">

## Complex types

<div class="body">

These are the complex types of the MWSPushNotificationCommon.xsd schema:

<div class="tablenoborder">

| Complex type                                                  | Description                                       |
|---------------------------------------------------------------|---------------------------------------------------|
| <a href="#ComplexTypes__MoneyType" class="xref">MoneyType</a> | <span class="ph">Currency type and amount.</span> |

</div>

<div id="ComplexTypes__MoneyType" class="section">

### MoneyType

<span class="ph">Currency type and amount.</span>

The following table shows the elements of the <span
class="keyword parmname">MoneyType</span> element:

<div class="tablenoborder">

<table id="ComplexTypes__table_thg_12j_ll" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d202430e373" class="entry" data-valign="top" width="50%">Element</th>
<th id="d202430e376" class="entry" data-valign="top" width="50%">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="50%" headers="d202430e373 "><span class="keyword parmname">Amount</span></td>
<td class="entry" data-valign="top" width="50%" headers="d202430e376 ">The currency amount.
<p><span class="ph">Type: xs:decimal</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="50%" headers="d202430e373 "><span class="keyword parmname">CurrencyCode</span></td>
<td class="entry" data-valign="top" width="50%" headers="d202430e376 ">Three-digit currency code. In <span class="ph"> <a href="../dev_guide/DG_ISO4217.md" class="xref">ISO 4217 format</a> </span>.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="RelatedTopics" class="topic nested1">

## Related topics

<div class="body">

<a href="../subscriptions/Subscriptions_Overview.md" class="xref">What you should know about the Amazon MWS Subscriptions API section</a>

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
