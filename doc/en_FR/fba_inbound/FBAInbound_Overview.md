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

# What you should know about the Fulfillment Inbound Shipment API section

<div class="body conbody">

With the <span class="ph">Fulfillment Inbound Shipment API
section</span> of <span class="ph">Amazon Marketplace Web Service
(Amazon MWS)</span>, you can create and update inbound shipments of
inventory in <span class="ph">Amazon's fulfillment network</span>. You
can also request lists of inbound shipments or inbound shipment items
based on criteria that you specify. After your inventory has been
received in the fulfillment network, Amazon can fulfill your orders
regardless of whether you are selling on Amazon's retail web site or
through other retail channels.

The following operations are included in the
<span class="ph">Fulfillment Inbound Shipment API
section</span>:

<div class="tablenoborder">

| Operation                                                                                                                                                                                                                                   | Description                                                                                                                                                                                                     | Availability                                                   |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------- |
| [GetInboundGuidanceForSKU](FBAInbound_GetInboundGuidanceForSKU.md "Returns inbound guidance for a list of items by Seller SKU.")                                                                                                          | <span class="ph">Returns inbound guidance for a list of items by Seller SKU.</span>                                                                                                                             | <span class="ph">All marketplaces except Brazil.</span>        |
| [GetInboundGuidanceForASIN](FBAInbound_GetInboundGuidanceForASIN.md "Returns inbound guidance for a list of items by ASIN.")                                                                                                              | <span class="ph">Returns inbound guidance for a list of items by ASIN.</span>                                                                                                                                   | <span class="ph">All marketplaces except Brazil.</span>        |
| [CreateInboundShipmentPlan](../fba_inbound/FBAInbound_CreateInboundShipmentPlan.md)                                                                                                                                                       | <span class="ph">Returns the information required to create an inbound shipment.</span>                                                                                                                         | <span class="ph">All marketplaces except Brazil.</span>        |
| [CreateInboundShipment](../fba_inbound/FBAInbound_CreateInboundShipment.md)                                                                                                                                                               | <span class="ph">Creates an inbound shipment.</span>                                                                                                                                                            | <span class="ph">All marketplaces except Brazil.</span>        |
| [UpdateInboundShipment](FBAInbound_UpdateInboundShipment.md "Updates an existing inbound shipment.")                                                                                                                                      | <span class="ph">Updates an existing inbound shipment.</span>                                                                                                                                                   | <span class="ph">All marketplaces except Brazil.</span>        |
| [GetPreorderInfo](FBAInbound_GetPreorderInfo.md "Returns pre-order information, including dates, that a seller needs before confirming a shipment for pre-order. Also indicates if a shipment has already been confirmed for pre-order.") | <span class="ph">Returns pre-order information, including dates, that a seller needs before confirming a shipment for pre-order. Also indicates if a shipment has already been confirmed for pre-order. </span> | <span class="ph">The US, India, and Japan marketplaces.</span> |
| [ConfirmPreorder](FBAInbound_ConfirmPreorder.md "Confirms a shipment for pre-order.")                                                                                                                                                     | <span class="ph">Confirms a shipment for pre-order. </span>                                                                                                                                                     | <span class="ph">The US, India, and Japan marketplaces.</span> |
| [GetPrepInstructionsForSKU](FBAInbound_GetPrepInstructionsForSKU.md "Returns labeling requirements and item preparation instructions to help you prepare items for an inbound shipment.")                                                 | <span class="ph">Returns labeling requirements and item preparation instructions to help you prepare items for an inbound shipment.</span>                                                                      | <span class="ph">All marketplaces except Brazil.</span>        |
| [GetPrepInstructionsForASIN](FBAInbound_GetPrepInstructionsForASIN.md "Returns item preparation instructions to help with item sourcing decisions.")                                                                                      | <span class="ph">Returns item preparation instructions to help with item sourcing decisions.</span>                                                                                                             | <span class="ph">All marketplaces except Brazil.</span>        |
| [PutTransportContent](../fba_inbound/FBAInbound_PutTransportContent.md)                                                                                                                                                                   | <span class="ph">Sends transportation information to Amazon about an inbound shipment.</span>                                                                                                                   | <span class="ph">All marketplaces except Brazil.</span>        |
| [EstimateTransportRequest](FBAInbound_EstimateTransportRequest.md "Requests an estimate of the shipping cost for an inbound shipment.")                                                                                                   | <span class="ph">Requests an estimate of the shipping cost for an inbound shipment.</span>                                                                                                                      | <span class="ph">All marketplaces except Brazil.</span>        |
| [GetTransportContent](../fba_inbound/FBAInbound_GetTransportContent.md)                                                                                                                                                                   | <span class="ph">Returns current transportation information about an inbound shipment.</span>                                                                                                                   | <span class="ph">All marketplaces except Brazil.</span>        |
| [ConfirmTransportRequest](FBAInbound_ConfirmTransportRequest.md "Confirms that you accept the Amazon-partnered shipping estimate and you request that the Amazon-partnered carrier ship your inbound shipment.")                          | <span class="ph">Confirms that you accept the Amazon-partnered shipping estimate and you request that the Amazon-partnered carrier ship your inbound shipment.</span>                                           | <span class="ph">All marketplaces except Brazil.</span>        |
| [VoidTransportRequest](FBAInbound_VoidTransportRequest.md "Voids a previously-confirmed request to ship your inbound shipment using an Amazon-partnered carrier.")                                                                        | <span class="ph">Voids a previously-confirmed request to ship your inbound shipment using an Amazon-partnered carrier.</span>                                                                                   | <span class="ph">All marketplaces except Brazil.</span>        |
| [GetPackageLabels](../fba_inbound/FBAInbound_GetPackageLabels.md)                                                                                                                                                                         | <span class="ph">Returns package labels.</span>                                                                                                                                                                 | <span class="ph">All marketplaces except Brazil.</span>        |
| [GetUniquePackageLabels](../fba_inbound/FBAInbound_GetUniquePackageLabels.md)                                                                                                                                                             | <span class="ph">Returns unique package labels for faster and more accurate shipment processing at the <span class="ph">Amazon fulfillment center</span>.</span>                                                | <span class="ph">All marketplaces except Brazil.</span>        |
| [GetPalletLabels](../fba_inbound/FBAInbound_GetPalletLabels.md)                                                                                                                                                                           | <span class="ph">Returns pallet labels.</span>                                                                                                                                                                  | <span class="ph">All marketplaces except Brazil.</span>        |
| [GetBillOfLading](../fba_inbound/FBAInbound_GetBillOfLading.md)                                                                                                                                                                           | <span class="ph">Returns a bill of lading for a <span class="ph">Less Than Truckload/Full Truckload (LTL/FTL)</span> shipment.</span>                                                                           | <span class="ph">All marketplaces except Brazil.</span>        |
| [ListInboundShipments](FBAInbound_ListInboundShipments.md "Returns a list of inbound shipments based on criteria that you specify.")                                                                                                      | <span class="ph">Returns a list of inbound shipments based on criteria that you specify.</span>                                                                                                                 | <span class="ph">All marketplaces except Brazil.</span>        |
| [ListInboundShipmentsByNextToken](FBAInbound_ListInboundShipmentsByNextToken.md "Returns the next page of inbound shipments using the NextToken parameter.")                                                                              | <span class="ph">Returns the next page of inbound shipments using the <span class="keyword parmname">NextToken</span> parameter.</span>                                                                         | <span class="ph">All marketplaces except Brazil.</span>        |
| [ListInboundShipmentItems](FBAInbound_ListInboundShipmentItems.md "Returns a list of items in a specified inbound shipment, or a list of items that were updated within a specified time frame.")                                         | <span class="ph">Returns a list of items in a specified inbound shipment, or a list of items that were updated within a specified time frame.</span>                                                            | <span class="ph">All marketplaces except Brazil.</span>        |
| [ListInboundShipmentItemsByNextToken](FBAInbound_ListInboundShipmentItemsByNextToken.md "Returns the next page of inbound shipment items using the NextToken parameter.")                                                                 | <span class="ph">Returns the next page of inbound shipment items using the <span class="keyword parmname">NextToken</span> parameter.</span>                                                                    | <span class="ph">All marketplaces except Brazil.</span>        |
| [GetServiceStatus](MWS_GetServiceStatus.md "Returns the operational status of the Fulfillment Inbound Shipment API section.")                                                                                                             | <span class="ph">Returns the operational status of the <span class="ph">Fulfillment Inbound Shipment API section</span>.</span>                                                                                 | <span class="ph">All marketplaces except Brazil.</span>        |

</div>

To create an inbound shipment, first submit the
<span class="keyword apiname">CreateInboundShipmentPlan</span> operation
to get the information you need to submit the
<span class="keyword apiname">CreateInboundShipment</span> operation.

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
<td><strong>Case packed</strong></td>
<td>Items in an inbound shipment are considered to be case packed when:
<ul>
<li>All items in a box have matching SKU and condition and have been previously packaged together by the manufacturer.</li>
<li>All boxes with the same item contain equal quantities of that item.</li>
</ul></td>
</tr>
<tr class="even">
<td><strong>Amazon-partnered carrier</strong></td>
<td>A carrier who has partnered with Amazon to provide discounted shipping rates. Only sellers in the US can use Amazon-partnered carriers for inbound shipments.</td>
</tr>
<tr class="odd">
<td><strong>Non-Amazon-partnered carrier</strong></td>
<td>A carrier who has not partnered with Amazon to provide discounted shipping rates.</td>
</tr>
<tr class="even">
<td><strong><span class="ph">Small Parcel</span> shipment</strong></td>
<td>Units packed in individual boxes that are individually labeled for delivery.</td>
</tr>
<tr class="odd">
<td><strong><span class="ph">Less Than Truckload/Full Truckload (LTL/FTL)</span> shipment</strong></td>
<td>Combines individual boxes on pallets for delivery. The truck might contain shipments to other destinations.</td>
</tr>
</tbody>
</table>

</div>

For information about using an Amazon-partnered carrier, see the "Using
an Amazon-partnered carrier for your inbound shipment" section of the
MWS for FBA Sellers guide.

</div>

</div>

<div class="related-links">

## In this section

  - **[Extracting PDF Document
    Data](../fba_inbound/FBAInbound_ExtractingPdfDocumentData.md)**  
  - **[Preparation
    examples](../fba_inbound/FBAInbound_PreparationExamples.md)**  
    These examples demonstrate how to create separate shipments for
    items that have different
    <span class="keyword parmname">PrepOwners</span> for the same
    <span class="keyword parmname">PrepInstruction</span>, and show how
    errors can result if the same instruction is given to two owners in
    the same shipment.

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
