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

<div id="DG_WhatIs" class="nested0">

# What is Amazon MWS?

<div class="body">

<span class="ph">Amazon Marketplace Web Service (Amazon MWS)</span> is
an integrated web service API that helps Amazon sellers to
programmatically exchange data on listings, orders, payments, reports,
and more. Data integration with Amazon enables high levels of selling
automation, which can help sellers grow their business. By using
<span class="ph">Amazon MWS</span>, sellers can increase selling
efficiency, reduce labor requirements, and improve response time to
customers.

There are no fees associated with <span class="ph">Amazon MWS</span>,
but to use the <span class="ph">Amazon MWS</span> API you must have an
<span class="ph">Amazon MWS</span>-eligible seller account and you must
[register](DG_Registering.md) to use <span class="ph">Amazon
MWS</span>.

<div class="section">

## What <span class="ph">Amazon MWS</span> Provides

With <span class="ph">Amazon MWS</span>, you can build applications for
your own Amazon seller account. You can also build applications for
other sellers to help them manage their online business. Using
<span class="ph">Amazon MWS</span> you can create applications that look
up products for sale, download orders for fulfillment, confirm shipment,
and schedule and receive reports. These API operations are accessible by
using a web service interface.

<div class="p">

<span class="ph">Amazon MWS</span> provides the following features:

  - Inventory management — You can perform batch uploads of inventory,
    add products, check inventory levels, examine pricing information,
    and other inventory management tasks.
  - Order management — You can download order information, obtain
    payment data, acknowledge orders, and schedule reports.
  - Reports management — You can request a variety of reports as well as
    query the status of these reports, and then download them.

</div>

<div class="p">

For <span class="ph">Fulfillment by Amazon (FBA)</span> sellers,
<span class="ph">Amazon MWS</span> also allows you to:

  - Create inbound shipments to an Amazon fulfillment center — You can
    automate the process for creating labels for units you ship to a
    fulfillment center.
  - Check status of inbound shipments — You can check to see if your
    shipment has reached a fulfillment center and, if so, whether the
    shipment has been processed.
  - Submit fulfillment orders — By integrating your system with
    <span class="ph">Amazon MWS</span>, you can enable your customers to
    submit multi-channel fulfillment orders at any time. There is no lag
    time while you process or batch orders.
  - Track and manage outbound shipment requests — Once orders have left
    an Amazon fulfillment center, you can track shipments and keep your
    customers aware of arrival times.

</div>

</div>

<div class="section">

## The MWS API

The <span class="ph">Amazon MWS</span> API is divided into sections
based on functionality. The following is a summary of the API
organization. Further information can be found in the
<span class="ph">Amazon MWS</span> API References.

</div>

<table class="simpletable" data-cellpadding="4" data-cellspacing="0" data-summary="" data-border="0">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<tbody>
<tr class="odd">
<td><div class="p">
<table class="simpletable linkbox" data-cellpadding="4" data-cellspacing="0" data-summary="" data-border="1">
<tbody>
<tr class="odd">
<td><a href="../feeds/Feeds_Overview.md" class="xref">Feeds API</a></td>
</tr>
<tr class="even">
<td>The Amazon MWS Feeds API lets you upload inventory and order data to Amazon.</td>
</tr>
</tbody>
</table>
</div></td>
<td><div class="p">
<table class="simpletable linkbox" data-cellpadding="4" data-cellspacing="0" data-summary="" data-border="1">
<tbody>
<tr class="odd">
<td><a href="../finances/Finances_Overview.md" class="xref">Finances API</a></td>
</tr>
<tr class="even">
<td>The Finances API enables you to obtain financial information relevant to your business with Amazon.</td>
</tr>
</tbody>
</table>
</div></td>
<td><div class="p">
<table class="simpletable linkbox" data-cellpadding="4" data-cellspacing="0" data-summary="" data-border="1">
<tbody>
<tr class="odd">
<td><a href="../fba_inbound/FBAInbound_Overview.md" class="xref">Fulfillment Inbound Shipment API</a></td>
</tr>
<tr class="even">
<td>With the Fulfillment Inbound Shipment API, you can create and update inbound shipments of inventory in <span class="ph">Amazon's fulfillment network</span>.</td>
</tr>
</tbody>
</table>
</div></td>
</tr>
<tr class="even">
<td><div class="p">
<table class="simpletable linkbox" data-cellpadding="4" data-cellspacing="0" data-summary="" data-border="1">
<tbody>
<tr class="odd">
<td><a href="../fba_inventory/FBAInventory_Overview.md" class="xref">Fulfillment Inventory API</a></td>
</tr>
<tr class="even">
<td>The Fulfillment Inventory API can help you stay up-to-date on the availability of your inventory in <span class="ph">Amazon's fulfillment network</span>.</td>
</tr>
</tbody>
</table>
</div></td>
<td><div class="p">
<table class="simpletable linkbox" data-cellpadding="4" data-cellspacing="0" data-summary="" data-border="1">
<tbody>
<tr class="odd">
<td><a href="../fba_outbound/FBAOutbound_Overview.md" class="xref">Fulfillment Outbound Shipment API</a></td>
</tr>
<tr class="even">
<td>The Fulfillment Outbound Shipment API enables you to fulfill Multi-Channel Fulfillment orders, using your inventory in <span class="ph">Amazon's fulfillment network</span>.</td>
</tr>
</tbody>
</table>
</div></td>
<td><div class="p">
<table class="simpletable linkbox" data-cellpadding="4" data-cellspacing="0" data-summary="" data-border="1">
<tbody>
<tr class="odd">
<td><a href="../merch_fulfill/MerchFulfill_Overview.md" class="xref">Merchant Fulfillment API</a></td>
</tr>
<tr class="even">
<td>The Merchant Fulfillment API provides programmatic access to Buy Shipping Services for sellers, including competitive rates from Amazon-partnered carriers.</td>
</tr>
</tbody>
</table>
</div></td>
</tr>
<tr class="odd">
<td><div class="p">
<table class="simpletable linkbox" data-cellpadding="4" data-cellspacing="0" data-summary="" data-border="1">
<tbody>
<tr class="odd">
<td><a href="../orders-2013-09-01/Orders_Overview.md" class="xref">Orders API</a></td>
</tr>
<tr class="even">
<td>With the Orders API, you can build simple applications that retrieve only the order information that you need.</td>
</tr>
</tbody>
</table>
</div></td>
<td><div class="p">
<table class="simpletable linkbox" data-cellpadding="4" data-cellspacing="0" data-summary="" data-border="1">
<tbody>
<tr class="odd">
<td><a href="../products/Products_Overview.md" class="xref">Products API</a></td>
</tr>
<tr class="even">
<td>The Products API helps you get information to match your products to existing product listings on Amazon Marketplace websites and to make sourcing and pricing decisions for listing those products on Amazon Marketplace websites.</td>
</tr>
</tbody>
</table>
</div></td>
<td><div class="p">
<table class="simpletable linkbox" data-cellpadding="4" data-cellspacing="0" data-summary="" data-border="1">
<tbody>
<tr class="odd">
<td><a href="../recommendations/Recommendations_Overview.md" class="xref">Recommendations API</a></td>
</tr>
<tr class="even">
<td>The Recommendations API enables you to programmatically retrieve Amazon Selling Coach recommendations by recommendation category.</td>
</tr>
</tbody>
</table>
</div></td>
</tr>
<tr class="even">
<td><div class="p">
<table class="simpletable linkbox" data-cellpadding="4" data-cellspacing="0" data-summary="" data-border="1">
<tbody>
<tr class="odd">
<td><a href="../reports/Reports_Overview.md" class="xref">Reports API</a></td>
</tr>
<tr class="even">
<td>The Reports API lets you request various reports that help you manage your sales on Amazon.</td>
</tr>
</tbody>
</table>
</div></td>
<td><div class="p">
<table class="simpletable linkbox" data-cellpadding="4" data-cellspacing="0" data-summary="" data-border="1">
<tbody>
<tr class="odd">
<td><a href="../sellers/Sellers_Overview.md" class="xref">Sellers API</a></td>
</tr>
<tr class="even">
<td>The Sellers API lets sellers retrieve information about their seller account, such as the marketplaces they participate in. Along with listing the marketplaces that a seller can sell in, the API also provides additional information about the marketplace such as the default language and the default currency.</td>
</tr>
</tbody>
</table>
</div></td>
<td><div class="p">
<table class="simpletable linkbox" data-cellpadding="4" data-cellspacing="0" data-summary="" data-border="1">
<tbody>
<tr class="odd">
<td><a href="../subscriptions/Subscriptions_Overview.md" class="xref">Subscriptions API</a></td>
</tr>
<tr class="even">
<td>The Subscriptions API enables you to subscribe to receive notifications that are relevant to your business with Amazon.</td>
</tr>
</tbody>
</table>
</div></td>
</tr>
<tr class="odd">
<td><div class="p">
<table class="simpletable linkbox" data-cellpadding="4" data-cellspacing="0" data-summary="" data-border="1">
<tbody>
<tr class="odd">
<td><a href="../notifications/Notifications_Overview.md" class="xref">Push Notifications Schemas</a></td>
</tr>
<tr class="even">
<td>The Amazon MWS push notifications enable you to receive information that is relevant to your business with Amazon without having to poll the Amazon MWS service. Instead, the information is sent directly to you when an event occurs to which you are subscribed (see the <a href="../subscriptions/Subscriptions_Overview.md" class="xref">Subscriptions API</a>).</td>
</tr>
</tbody>
</table>
</div></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

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
