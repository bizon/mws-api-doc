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

# What you should know about the Fulfillment Outbound Shipment API section

<div class="body conbody">

The <span class="ph">Fulfillment Outbound Shipment API section</span> of
<span class="ph">Amazon Marketplace Web Service (Amazon MWS)</span>
enables you to fulfill Multi-Channel Fulfillment orders, using your
inventory in <span class="ph">Amazon's fulfillment network</span>. You
can request previews of potential fulfillment orders that return
estimated shipping fees and shipping dates based on shipping method. You
can get detailed item-level, shipment-level, and order-level information
for any existing fulfillment order. You can also return items to the
fulfillment network that you fulfilled using this service.

The following operations are included in the
<span class="ph">Fulfillment Outbound Shipment API
section</span>:

<div class="tablenoborder">

| Operation                                                                                                                                                                                    | Description                                                                                                                                                           | Availability                                                                                   |
| -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------- |
| [GetFulfillmentPreview](FBAOutbound_GetFulfillmentPreview.html "Returns a list of fulfillment order previews based on shipping criteria that you specify.")                                  | <span class="ph">Returns a list of fulfillment order previews based on shipping criteria that you specify.</span>                                                     | <span class="ph">All marketplaces except Brazil.</span>                                        |
| [CreateFulfillmentOrder](FBAOutbound_CreateFulfillmentOrder.html "Requests that Amazon ship items from the seller's inventory in Amazon's fulfillment network to a destination address.")    | <span class="ph">Requests that Amazon ship items from the seller's inventory in <span class="ph">Amazon's fulfillment network</span> to a destination address.</span> | <span class="ph">All marketplaces except Brazil.</span>                                        |
| [UpdateFulfillmentOrder](FBAOutbound_UpdateFulfillmentOrder.html "Updates and/or requests shipment for a fulfillment order with an order hold on it.")                                       | <span class="ph">Updates and/or requests shipment for a fulfillment order with an order hold on it.</span>                                                            | <span class="ph">All marketplaces except Brazil.</span>                                        |
| [GetFulfillmentOrder](FBAOutbound_GetFulfillmentOrder.html "Returns a fulfillment order based on a specified SellerFulfillmentOrderId.")                                                     | <span class="ph">Returns a fulfillment order based on a specified <span class="keyword parmname">SellerFulfillmentOrderId</span>.</span>                              | <span class="ph">All marketplaces except Brazil.</span>                                        |
| [ListAllFulfillmentOrders](FBAOutbound_ListAllFulfillmentOrders.html "Returns a list of fulfillment orders fulfilled after (or at) a specified date.")                                       | <span class="ph">Returns a list of fulfillment orders fulfilled after (or at) a specified date.</span>                                                                | <span class="ph">All marketplaces except Brazil.</span>                                        |
| [ListAllFulfillmentOrdersByNextToken](FBAOutbound_ListAllFulfillmentOrdersByNextToken.html "Returns the next page of fulfillment orders using the NextToken parameter.")                     | <span class="ph">Returns the next page of fulfillment orders using the <span class="keyword parmname">NextToken</span> parameter.</span>                              | <span class="ph">All marketplaces except Brazil.</span>                                        |
| [GetPackageTrackingDetails](FBAOutbound_GetPackageTrackingDetails.html "Returns delivery tracking information for a package in an outbound shipment for a Multi-Channel Fulfillment order.") | <span class="ph">Returns delivery tracking information for a package in an outbound shipment for a Multi-Channel Fulfillment order.</span>                            | <span class="ph">All marketplaces except Brazil.</span>                                        |
| [CancelFulfillmentOrder](FBAOutbound_CancelFulfillmentOrder.html "Requests that Amazon stop attempting to fulfill an existing fulfillment order.")                                           | <span class="ph">Requests that Amazon stop attempting to fulfill an existing fulfillment order.</span>                                                                | <span class="ph">All marketplaces except Brazil.</span>                                        |
| [ListReturnReasonCodes](FBAOutbound_ListReturnReasonCodes.html "Returns a list of return reason codes for a seller SKU in a given marketplace.")                                             | <span class="ph">Returns a list of return reason codes for a seller SKU in a given marketplace.</span>                                                                | <span class="ph">The US, Germany, France, Italy, UK, Japan, and Australia marketplaces.</span> |
| [CreateFulfillmentReturn](FBAOutbound_CreateFulfillmentReturn.html "Creates a fulfillment return.")                                                                                          | <span class="ph">Creates a fulfillment return.</span>                                                                                                                 | <span class="ph">The US, Germany, France, Italy, UK, Japan, and Australia marketplaces.</span> |
| [GetServiceStatus](MWS_GetServiceStatus.html "Returns the operational status of the Fulfillment Outbound Shipment API section.")                                                             | <span class="ph">Returns the operational status of the <span class="ph">Fulfillment Outbound Shipment API section</span>.</span>                                      | <span class="ph">All marketplaces except Brazil.</span>                                        |

</div>

<div class="section">

## Terminology

The following table defines terminology for this API
section:

<div class="tablenoborder">

| Term                          | Definition                                                                                                                                                                           |
| ----------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| **Multi-Channel Fulfillment** | Amazon's service for fulfilling orders from sales channels other than Amazon’s retail website, using the seller's inventory in <span class="ph">Amazon's fulfillment network</span>. |
| **Fulfillment order**         | A **Multi-Channel Fulfillment** order created using the <span class="keyword apiname">CreateFulfillmentOrder</span> operation.                                                       |
| **Fulfillment return**        | An order for returning items to <span class="ph">Amazon's fulfillment network</span> that were fulfilled using a fulfillment order.                                                  |

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