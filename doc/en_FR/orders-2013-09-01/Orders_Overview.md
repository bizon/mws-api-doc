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

# What you should know about the Orders API section

<div class="body conbody">

With the <span class="ph">Orders API section</span> of
<span class="ph">Amazon Marketplace Web Service (Amazon MWS)</span>, you
can build simple applications that retrieve only the order information
that you need. This enables you to develop fast, flexible, custom
applications in areas like order synchronization, order research, and
demand-based decision support tools.

<div class="note important">

<span class="importanttitle">Important:</span> Your access to
<span class="ph">Amazon MWS</span> data depends on the role Amazon
assigns you after you submit the <span class="ph">Developer Registration
and Assessment form</span>. For more information see [Registering to use
Amazon MWS](../dev_guide/DG_Registering.md#DG_Registering).

</div>

The following operations are included in the <span class="ph">Orders API
section</span>:

<div class="tablenoborder">

| Operation                                                                                                                                        | Description                                                                                                                       | Availability                              |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | --------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------- |
| [ListOrders](../orders-2013-09-01/Orders_ListOrders.md)                                                                                        | <span class="ph">Returns orders created or updated during a time frame that you specify.</span>                                   | <span class="ph">All marketplaces.</span> |
| [ListOrdersByNextToken](Orders_ListOrdersByNextToken.md "Returns the next page of orders using the NextToken parameter.")                      | <span class="ph">Returns the next page of orders using the <span class="keyword parmname">NextToken</span> parameter.</span>      | <span class="ph">All marketplaces.</span> |
| [GetOrder](Orders_GetOrder.md "Returns orders based on the AmazonOrderId values that you specify.")                                            | <span class="ph">Returns orders based on the <span class="keyword parmname">AmazonOrderId</span> values that you specify.</span>  | <span class="ph">All marketplaces.</span> |
| [ListOrderItems](../orders-2013-09-01/Orders_ListOrderItems.md)                                                                                | <span class="ph">Returns order items based on the <span class="keyword parmname">AmazonOrderId</span> that you specify.</span>    | <span class="ph">All marketplaces.</span> |
| [ListOrderItemsByNextToken](Orders_ListOrderItemsByNextToken.md "Returns the next page of order items using the NextToken parameter.")         | <span class="ph">Returns the next page of order items using the <span class="keyword parmname">NextToken</span> parameter.</span> | <span class="ph">All marketplaces.</span> |
| [GetServiceStatus](../fba_outbound/MWS_GetServiceStatus.md "Returns the operational status of the Fulfillment Outbound Shipment API section.") | <span class="ph">Returns the operational status of the <span class="ph">Orders API section</span>.</span>                         | <span class="ph">All marketplaces.</span> |

</div>

You can retrieve order item information by first using the
<span class="keyword apiname">ListOrders</span> operation to find orders
created or updated during a time frame that you specify. An
<span class="keyword parmname">AmazonOrderId</span> is included with
each order that is returned. You can then use these
<span class="keyword parmname">AmazonOrderId</span> values with the
<span class="keyword apiname">ListOrderItems</span> operation to get
detailed order item information for each order.

To determine the URL to use when sending requests to the
<span class="ph">Orders API section</span>, add "/Orders/2013-09-01" to
the endpoint for your marketplace. For example, if your marketplace is
US, the URL would be https://mws.amazonservices.com/Orders/2013-09-01

<div class="section">

## When to use the <span class="ph">Orders API section</span>

The <span class="ph">Orders API section</span> is optimized for data
synchronization, retrieving order updates in real-time, and order
research. For bulk order data reporting, you should create order reports
with the <span class="ph">Reports API</span> section. For more
information about the <span class="ph">Reports API</span> section, see
the <span class="ph">Reports API</span> section documentation.

</div>

<div class="section">

## Terminology

The following table defines terminology for this API section:

<div class="tablenoborder">

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr class="header">
<th>Term</th>
<th>Definition</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><span class="keyword parmname">Order item</span></td>
<td>An item and a quantity. For example, if a customer buys three copies of a particular book, the order contains one order item with a quantity of three. If one of the copies is to be gift wrapped, the order now contains the following two order items:
<ul>
<li>Gift wrapped book, quantity of one</li>
<li>Non-gift wrapped book, quantity of two</li>
</ul></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">Order</span></td>
<td>The following are both considered orders:
<ul>
<li>A collection of order items sold on Amazon with identical values for the following attributes:
<ul>
<li>Shipping address</li>
<li>Shipping speed</li>
<li>Seller</li>
</ul></li>
<li>A Multi-Channel Fulfillment order (an order not sold on Amazon's retail website but fulfilled using your Fulfillment by Amazon inventory).</li>
</ul></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">Pre-order</span></td>
<td>An order that contains items with a manufacturer's release date that is in the future. Note that pre-orders are available only in Japan.</td>
</tr>
<tr class="even">
<td><span class="keyword parmname">Standard order</span></td>
<td>An order that contains items with available inventory.</td>
</tr>
</tbody>
</table>

</div>

**Note for Fulfillment by Amazon (FBA) sellers who use Multi-Channel
Fulfillment:** If you submit a removal order and do not include
<span class="keyword parmname">ShippingAddress</span>, the Orders API
section will not return
<span class="keyword parmname">ShippingAddress</span> for that order.
For more information about Multi-Channel Fulfillment, see the Help pages
for the Amazon Seller Central website in your marketplace.

</div>

<div class="section">

## User scenarios

<div class="p">

The following scenarios are supported by the <span class="ph">Orders API
section</span>:

  - Data synchronization:
      - Synchronize Amazon order data with order data in your local
        ordering system
      - Get order status data on your Amazon sales so you can fulfill
        your orders using your own fulfillment system
      - Migrate your historical order data to a third-party integrator
        solution
  - Order research and customer service:
      - Get order details for researching issues and answering customer
        questions

</div>

<div class="p">

You can perform the following business analytics with the
synchronization data that the <span class="ph">Orders API section</span>
makes available:

  - Support for <span class="ph">FBA</span> replenishment and removal
    decisions:
      - Find SKUs with high or low sales volumes
      - Monitor sales trends by SKU
  - Support for sales channel and fulfillment channel decisions:
      - Find SKU sales trends by sales channel and by fulfillment
        channel
      - Monitor sales trends by SKU
  - Issue monitoring:
      - Find SKUs that have been in a given state for too long
      - Find unexpected changes in sales trends by SKU

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
