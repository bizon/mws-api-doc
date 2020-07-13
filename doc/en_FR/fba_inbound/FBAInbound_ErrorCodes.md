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

<div id="FBAInbound_ErrorCodes" class="nested0">

# Error codes

<div class="body">

The following table describes the various error codes that the
<span class="ph">Fulfillment Inbound Shipment API section</span> can
return. For descriptions of error codes that are common to all
<span class="ph">Amazon Marketplace Web Service (Amazon MWS)</span> API
sections, see [Error Messages](../dev_guide/DG_Errors.md) in the
<span class="ph">Amazon MWS Developer Guide</span>.

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead>
<tr class="header">
<th>Error code</th>
<th>HTTP status code</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><span class="keyword parmname">AmazonContractNotSigned</span></td>
<td>400</td>
<td>Seller has not accepted Amazon’s Partnered Carrier Program terms and conditions. Seller should accept Amazon’s Partnered Carrier Program terms and conditions on <a href="https://sellercentral.amazon.co.uk/gp/help/201119120" class="xref">Seller Central</a>.</td>
</tr>
<tr class="even">
<td><span class="keyword parmname">AmazonPrepNotSupported</span> <span class="keyword parmname">InDestinationFulfillmentCenter</span></td>
<td>400</td>
<td>The destination fulfillment center cannot perform the specified <a href="FBAInbound_Datatypes.md#PrepInstruction" class="xref" title="Preparation instructions for shipping an item to Amazon&#39;s fulfillment network.">PrepInstruction</a>.</td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">AmazonPrepNotSupported</span></td>
<td>400</td>
<td>Amazon cannot find a fulfillment center to prepare the items for shipment to the destination country.</td>
</tr>
<tr class="even">
<td><span class="keyword parmname">CannotEstimateTransportContent</span></td>
<td>400</td>
<td>The Amazon-partnered shipment request is ineligible for estimation. Ensure that the <span class="keyword parmname">ShipFrom</span> address is in a marketplace that is eligible for Amazon's Partnered Carrier Program.</td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">CannotReducePreorderedItemQuantity</span></td>
<td>400</td>
<td>Quantity cannot be reduced for items with release dates on or after the confirmed fulfillable date for the shipment. Pre-orders are only available in India and Japan.</td>
</tr>
<tr class="even">
<td><span class="keyword parmname">CannotRemovePreorderedItem</span></td>
<td>400</td>
<td>Items with release dates on or after the confirmed fulfillable date for the shipment cannot be removed. For more information about pre-orders, see the Seller Central Help (<a href="https://sellercentral.amazon.in/gp/help/201851750" class="xref">IN</a>) (<a href="https://sellercentral.amazon.co.jp/gp/help/201851750" class="xref">JP</a>). Pre-orders are only available in India and Japan.</td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">CannotVoidTransportContent</span></td>
<td>400</td>
<td>The Amazon-partnered shipment request can no longer be voided.</td>
</tr>
<tr class="even">
<td><span class="keyword parmname">CarrierContractNotSigned</span></td>
<td>400</td>
<td>Seller has not accepted the carrier’s terms and conditions. Seller should accept the carrier’s existing or revised terms and conditions on <a href="https://sellercentral.amazon.co.uk/gp/help/201119120" class="xref">Seller Central</a>.</td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">CarrierInvalidForMarketplace</span></td>
<td>400</td>
<td>The specified carrier is not supported in the marketplace where the inbound shipment originates.</td>
</tr>
<tr class="even">
<td><span class="keyword parmname">IncompatiblePrepOwner</span></td>
<td>400</td>
<td>The shipment cannot mix different PrepOwners for the same <a href="FBAInbound_Datatypes.md#PrepInstruction" class="xref" title="Preparation instructions for shipping an item to Amazon&#39;s fulfillment network.">PrepInstruction</a>.</td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">InconsistentPrepDetails</span></td>
<td>400</td>
<td>The call to <a href="../fba_inbound/FBAInbound_CreateInboundShipment.md" class="xref">CreateInboundShipment</a> uses different preparation instructions or owners from the plan submitted to <a href="../fba_inbound/FBAInbound_CreateInboundShipmentPlan.md" class="xref">CreateInboundShipmentPlan</a></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">IncorrectPrepInstruction</span></td>
<td>400</td>
<td>The specified SKU had a valid <a href="FBAInbound_Datatypes.md#PrepInstruction" class="xref" title="Preparation instructions for shipping an item to Amazon&#39;s fulfillment network.">PrepInstruction</a> that is not correct for that SKU. Call <a href="FBAInbound_GetPrepInstructionsForSKU.md" class="xref" title="Returns labeling requirements and item preparation instructions to help you prepare items for an inbound shipment.">GetPrepInstructionsForSKU</a> for the correct preparation instructions.</td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">InvalidBoxContentSource</span></td>
<td>400</td>
<td>The <span class="keyword parmname">IntendedBoxContentSource</span> must be one of the <a href="FBAInbound_Datatypes.md#IntendedBoxContentsSource" class="xref" title="How the seller intends to provide box contents information for a shipment.">IntendedBoxContentsSource</a> values.</td>
</tr>
<tr class="even">
<td><span class="keyword parmname">InvalidParameterValue</span></td>
<td>400</td>
<td>The size of the request has exceeded the maximum size.
<ul>
<li>Under 64 KiB (2<sup>16</sup>, or 65,536 bytes) for a request without body parameters</li>
<li>Under 2 GiB (2<sup>31</sup>, or 2,147,483,648 bytes) for a request a with body parameters</li>
</ul>
Maximum request size was exceeded.</td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">InvalidPrepInstruction</span></td>
<td>400</td>
<td>The specified SKU had an invalid <a href="FBAInbound_Datatypes.md#PrepInstruction" class="xref" title="Preparation instructions for shipping an item to Amazon&#39;s fulfillment network.">PrepInstruction</a>.</td>
</tr>
<tr class="even">
<td><span class="keyword parmname">InvalidPrepOwner</span></td>
<td>400</td>
<td>The specified SKU had an invalid PrepOwner in the <a href="FBAInbound_Datatypes.md#PrepDetails" class="xref" title="A preparation instruction, and who is responsible for that preparation.">PrepDetails</a>.</td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">InvalidOperation</span></td>
<td>400</td>
<td>The shipment specified with a call to the <a href="../fba_inbound/FBAInbound_GetPalletLabels.md" class="xref">GetPalletLabels</a> operation is not a <span class="ph">Less Than Truckload/Full Truckload (LTL/FTL)</span> shipment. Specify an LTL/FTL shipment.</td>
</tr>
<tr class="even">
<td><span class="keyword parmname">MaxSizeReached</span></td>
<td>400</td>
<td>The maximum number of package labels that the PDF can support has been exceeded. Retry the <span class="keyword apiname">GetUniquePackageLabels</span> operation, specifying fewer <span class="keyword parmname">PackageLabelsToPrint</span> values.</td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">MissingCarrierType</span></td>
<td>400</td>
<td>No <span class="keyword parmname">CarrierName</span> value was specified. Specify a valid <span class="keyword parmname">CarrierName</span> value.</td>
</tr>
<tr class="even">
<td><span class="keyword parmname">MissingPrepDetails</span></td>
<td>400</td>
<td>A shipment must contain item-level preparation instructions for each SKU, or no preparation instructions at all.</td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">NoPackagesOrPallets</span></td>
<td>400</td>
<td>No package information (for <span class="ph">Small Parcel</span> shipments) or pallet information (for <span class="ph">Less Than Truckload/Full Truckload (LTL/FTL)</span> shipments) was specified. Specify this information using either the <span class="keyword parmname">PackageList</span> or the <span class="keyword parmname">PalletList</span> parameter of the <span class="keyword apiname">PutTransportContent</span> operation.</td>
</tr>
<tr class="even">
<td><span class="keyword parmname">PackageContentFeedNotComplete</span></td>
<td>400</td>
<td>FBA Inbound Shipment Carton Information Feed that you previously submitted for this shipment has not yet been processed. Retry after the feed has been processed. For more information about creating inbound shipments, see <a href="../fba_guide/FBAGuide_ShipInventoryToAFN.md" class="xref">Shipping inventory to Amazon's fulfillment network</a>.</td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">PreorderNotSupported</span></td>
<td>400</td>
<td>The seller has not enrolled in the Pre-order program. For more information about the Pre-order program, see the Seller Central Help (<a href="https://sellercentral.amazon.in/gp/help/201851750" class="xref">IN</a>) (<a href="https://sellercentral.amazon.co.jp/gp/help/201851750" class="xref">JP</a>). Pre-orders are only available in India and Japan.</td>
</tr>
<tr class="even">
<td><span class="keyword parmname">TransportContentNotFound</span></td>
<td>400</td>
<td>No Amazon-partnered shipment was associated with the specified <span class="keyword parmname">ShipmentId</span> value. Specify a <span class="keyword parmname">ShipmentId</span> value that is associated with an Amazon-partnered shipment.</td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">UnknownCarrierType</span></td>
<td>400</td>
<td>No carrier was found that matched the specified <span class="keyword parmname">CarrierName</span> value. Specify a valid <span class="keyword parmname">CarrierName</span> value.</td>
</tr>
<tr class="even">
<td><span class="keyword parmname">UnknownShipmentId</span></td>
<td>400</td>
<td>No shipment was found that matched the specified <span class="keyword parmname">ShipmentId</span> value. Specify a <span class="keyword parmname">ShipmentId</span> value that was returned with a call to the <span class="keyword apiname">CreateInboundShipmentPlan</span> operation.</td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">UnsupportedOption</span></td>
<td>400</td>
<td>2D_BARCODE can only be used for <span class="keyword parmname">IntendedBoxContentSource</span> if you have enrolled in the 2D Barcode program. For more information on the 2D Barcode program, see <a href="https://sellercentral.amazon.com/gp/help/202049090" class="xref">Using 2D barcodes for box content information</a> on Seller Central.</td>
</tr>
</tbody>
</table>

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
