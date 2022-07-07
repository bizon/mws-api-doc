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

<div id="FBAInventoy_Datatypes" class="nested0">

# Inventory Datatypes

<div class="body">

The following datatypes are used in the response elements of the <span
class="ph">Amazon Marketplace Web Service (Amazon MWS)</span> <span
class="ph">Fulfillment Inventory API section</span>:

<div class="tablenoborder">

| Datatype                                                                                                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                                          |
|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| <a href="#InventorySupply" class="xref" title="General information about the availability of inventory for a single SKU.">InventorySupply</a>                                                                                                                                                                | <span class="ph">General information about the availability of inventory for a single SKU.</span>                                                                                                                                                    |
| <a href="#InventorySupplyDetail" class="xref" title="Specific information about the availability of inventory for a single SKU, including the number of units that are in an Amazon fulfillment center, in an inbound shipment, or being transferred between fulfillment centers.">InventorySupplyDetail</a> | <span class="ph">Specific information about the availability of inventory for a single SKU, including the number of units that are in an Amazon fulfillment center, in an inbound shipment, or being transferred between fulfillment centers.</span> |
| <a href="#Timepoint" class="xref" title="Indicates whether inventory is immediately available for picking, whether inventory availability is unknown, or whether inventory is expected to be available for picking by a specific date.">Timepoint</a>                                                        | <span class="ph">Indicates whether inventory is immediately available for picking, whether inventory availability is unknown, or whether inventory is expected to be available for picking by a specific date.</span>                                |

</div>

</div>

<div id="InventorySupply" class="topic reference nested1">

## InventorySupply

<div class="body refbody">

<span class="ph">General information about the availability of inventory
for a single SKU.</span>

<div class="section">

### Operations

<div class="p">

The <span class="keyword cmdname">InventorySupply</span> datatype is
used in a response element of the following operations:

-   <a href="FBAInventory_ListInventorySupply.md" class="xref" title="Returns information about the availability of a seller&#39;s inventory.">ListInventorySupply</a>
-   <a href="FBAInventory_ListInventorySupplyByNextToken.md" class="xref" title="Returns the next page of information about the availability of a seller&#39;s inventory using the NextToken parameter.">ListInventorySupplyByNextToken</a>

</div>

</div>

<div class="section">

### Datatype content

The following table shows the elements of the <span
class="keyword cmdname">InventorySupply</span> datatype:

<div class="tablenoborder">

<table id="InventorySupply__RequestParametersTable" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d82113e243" class="entry" data-valign="top" width="25%">Name</th>
<th id="d82113e246" class="entry" data-valign="top" width="25.681818181818176%">Description</th>
<th id="d82113e249" class="entry" data-valign="top" width="22.727272727272727%">Required</th>
<th id="d82113e252" class="entry" data-valign="top" width="26.590909090909086%">Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="25%" headers="d82113e243 "><span class="keyword parmname">SellerSKU</span></td>
<td class="entry" data-valign="top" width="25.681818181818176%" headers="d82113e246 "><span class="ph">The Seller SKU of the item.</span></td>
<td class="entry" data-valign="top" width="22.727272727272727%" headers="d82113e249 ">No</td>
<td class="entry" data-valign="top" width="26.590909090909086%" headers="d82113e252 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="25%" headers="d82113e243 "><span class="keyword parmname">FNSKU</span></td>
<td class="entry" data-valign="top" width="25.681818181818176%" headers="d82113e246 ">The Fulfillment Network SKU (FNSKU) of the item. The <span class="keyword parmname">FNSKU</span> is a unique identifier for each inventory item stored in an <span class="ph">Amazon fulfillment center</span>.</td>
<td class="entry" data-valign="top" width="22.727272727272727%" headers="d82113e249 ">Yes</td>
<td class="entry" data-valign="top" width="26.590909090909086%" headers="d82113e252 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="25%" headers="d82113e243 "><span class="keyword parmname">ASIN</span></td>
<td class="entry" data-valign="top" width="25.681818181818176%" headers="d82113e246 "><span class="ph">The Amazon Standard Identification Number (ASIN) of the item.</span></td>
<td class="entry" data-valign="top" width="22.727272727272727%" headers="d82113e249 ">No</td>
<td class="entry" data-valign="top" width="26.590909090909086%" headers="d82113e252 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="25%" headers="d82113e243 "><span class="keyword parmname">Condition</span></td>
<td class="entry" data-valign="top" width="25.681818181818176%" headers="d82113e246 "><span class="ph">The condition of the item.</span></td>
<td class="entry" data-valign="top" width="22.727272727272727%" headers="d82113e249 ">No</td>
<td class="entry" data-valign="top" width="26.590909090909086%" headers="d82113e252 "><span class="ph"><span class="keyword parmname">Condition</span> values:</span>
<ul>
<li><var class="keyword varname">NewItem</var></li>
<li><var class="keyword varname">NewWithWarranty</var></li>
<li><var class="keyword varname">NewOEM</var></li>
<li><var class="keyword varname">NewOpenBox</var></li>
<li><var class="keyword varname">UsedLikeNew</var></li>
<li><var class="keyword varname">UsedVeryGood</var></li>
<li><var class="keyword varname">UsedGood</var></li>
<li><var class="keyword varname">UsedAcceptable</var></li>
<li><var class="keyword varname">UsedPoor</var></li>
<li><var class="keyword varname">UsedRefurbished</var></li>
<li><var class="keyword varname">CollectibleLikeNew</var></li>
<li><var class="keyword varname">CollectibleVeryGood</var></li>
<li><var class="keyword varname">CollectibleGood</var></li>
<li><var class="keyword varname">CollectibleAcceptable</var></li>
<li><var class="keyword varname">CollectiblePoor</var></li>
<li><var class="keyword varname">RefurbishedWithWarranty</var></li>
<li><var class="keyword varname">Refurbished</var></li>
<li><var class="keyword varname">Club</var></li>
</ul>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="25%" headers="d82113e243 "><span class="keyword parmname">TotalSupplyQuantity</span></td>
<td class="entry" data-valign="top" width="25.681818181818176%" headers="d82113e246 ">The total item quantity that a seller has in <span class="ph">Amazon's fulfillment network</span> supply chain. This includes inventory that is available for shipping, inventory in inbound shipments, and inventory being transferred between <span class="ph">Amazon fulfillment center</span>s. <span class="keyword parmname">TotalSupplyQuantity</span> is equivalent to the sum of the <span class="keyword parmname">afn-inbound-shipped-quantity</span>, <span class="keyword parmname">afn-inbound-receiving-quantity</span>, and <span class="keyword parmname">afn-fulfillable-quantity</span> fields of the FBA Manage Inventory Report (_GET_FBA_MYI_UNSUPPRESSED_INVENTORY_DATA_) and the <span class="keyword parmname">Reserved - FC transfer</span> field of the FBA Reserved Inventory Report (_GET_RESERVED_INVENTORY_DATA_).</td>
<td class="entry" data-valign="top" width="22.727272727272727%" headers="d82113e249 ">Yes</td>
<td class="entry" data-valign="top" width="26.590909090909086%" headers="d82113e252 "><span class="ph">Type: xs:int</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="25%" headers="d82113e243 "><span class="keyword parmname">InStockSupplyQuantity</span></td>
<td class="entry" data-valign="top" width="25.681818181818176%" headers="d82113e246 ">The item quantity that a seller has in <span class="ph">Amazon fulfillment center</span>s that is available for shipping. <span class="keyword parmname">InStockSupplyQuantity</span> is equivalent to the <span class="keyword parmname">afn-fulfillable-quantity</span> field in the FBA Manage Inventory Report (_GET_FBA_MYI_UNSUPPRESSED_INVENTORY_DATA_).</td>
<td class="entry" data-valign="top" width="22.727272727272727%" headers="d82113e249 ">Yes</td>
<td class="entry" data-valign="top" width="26.590909090909086%" headers="d82113e252 "><span class="ph">Type: xs:int</span></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="25%" headers="d82113e243 "><span class="keyword parmname">EarliestAvailability</span></td>
<td class="entry" data-valign="top" width="25.681818181818176%" headers="d82113e246 ">The earliest date that your inventory is expected to be available for picking.</td>
<td class="entry" data-valign="top" width="22.727272727272727%" headers="d82113e249 ">No
<p>If the value of <span class="keyword parmname">TotalSupplyQuantity</span> is zero, then the <span class="keyword parmname">EarliestAvailability</span> element is not returned.</p></td>
<td class="entry" data-valign="top" width="26.590909090909086%" headers="d82113e252 ">Type: <a href="FBAInventory_Datatypes.md#Timepoint" class="xref" title="Indicates whether inventory is immediately available for picking, whether inventory availability is unknown, or whether inventory is expected to be available for picking by a specific date.">Timepoint</a></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="25%" headers="d82113e243 "><span class="keyword parmname">SupplyDetail</span></td>
<td class="entry" data-valign="top" width="25.681818181818176%" headers="d82113e246 "><span id="InventorySupply__sd_InventoryDatatype_InventorySupplyDetail" class="ph">Detailed information about the availability of inventory for a specific item and its current location in <span class="ph">Amazon's fulfillment network</span> supply chain.</span></td>
<td class="entry" data-valign="top" width="22.727272727272727%" headers="d82113e249 ">No</td>
<td class="entry" data-valign="top" width="26.590909090909086%" headers="d82113e252 ">Type: List of <a href="FBAInventory_Datatypes.md#InventorySupplyDetail" class="xref" title="Specific information about the availability of inventory for a single SKU, including the number of units that are in an Amazon fulfillment center, in an inbound shipment, or being transferred between fulfillment centers.">InventorySupplyDetail</a></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="InventorySupplyDetail" class="topic reference nested1">

## InventorySupplyDetail

<div class="body refbody">

<span class="ph">Specific information about the availability of
inventory for a single SKU, including the number of units that are in an
Amazon fulfillment center, in an inbound shipment, or being transferred
between fulfillment centers.</span>

<div class="section">

### Operations

<div class="p">

The <span class="keyword cmdname">InventorySupplyDetail</span> datatype
is used in a response element of the following operations:

-   <a href="FBAInventory_ListInventorySupply.md" class="xref" title="Returns information about the availability of a seller&#39;s inventory.">ListInventorySupply</a>
-   <a href="FBAInventory_ListInventorySupplyByNextToken.md" class="xref" title="Returns the next page of information about the availability of a seller&#39;s inventory using the NextToken parameter.">ListInventorySupplyByNextToken</a>

</div>

</div>

<div class="section">

### Datatype content

The following table shows the elements of the <span
class="keyword cmdname">InventorySupplyDetail</span> datatype:

<div class="tablenoborder">

<table id="InventorySupplyDetail__RequestParametersTable" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d82113e715" class="entry" data-valign="top" width="27.146171693735493%">Name</th>
<th id="d82113e718" class="entry" data-valign="top" width="28.770301624129928%">Description</th>
<th id="d82113e721" class="entry" data-valign="top" width="11.600928074245937%">Required</th>
<th id="d82113e724" class="entry" data-valign="top" width="32.482598607888626%">Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="27.146171693735493%" headers="d82113e715 "><span class="keyword parmname">Quantity</span></td>
<td class="entry" data-valign="top" width="28.770301624129928%" headers="d82113e718 ">The quantity of inventory for a specific item.</td>
<td class="entry" data-valign="top" width="11.600928074245937%" headers="d82113e721 ">Yes</td>
<td class="entry" data-valign="top" width="32.482598607888626%" headers="d82113e724 "><span class="ph">Type: xs:int</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="27.146171693735493%" headers="d82113e715 "><span class="keyword parmname">SupplyType</span></td>
<td class="entry" data-valign="top" width="28.770301624129928%" headers="d82113e718 ">The current inventory status for a specific item.</td>
<td class="entry" data-valign="top" width="11.600928074245937%" headers="d82113e721 ">Yes</td>
<td class="entry" data-valign="top" width="32.482598607888626%" headers="d82113e724 "><span class="keyword parmname">SupplyType</span> values:
<ul>
<li><var class="keyword varname">InStock</var> - Inventory is in an <span class="ph">Amazon fulfillment center</span></li>
<li><var class="keyword varname">Inbound</var> - Inventory is in an inbound shipment to an <span class="ph">Amazon fulfillment center</span></li>
<li><var class="keyword varname">Transfer</var> - Inventory is being transferred from one <span class="ph">Amazon fulfillment center</span> to another</li>
</ul>
<div class="note note">
<span class="notetitle">Note:</span> <var class="keyword varname">InStock</var> inventory items might not be immediately available for picking. For example, inventory in a reserve location in an <span class="ph">Amazon fulfillment center</span> might take up to 12 hours to become available for picking.
</div>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="27.146171693735493%" headers="d82113e715 "><span class="keyword parmname">EarliestAvailableToPick</span></td>
<td class="entry" data-valign="top" width="28.770301624129928%" headers="d82113e718 ">The earliest date that your inventory is expected to be available for picking.</td>
<td class="entry" data-valign="top" width="11.600928074245937%" headers="d82113e721 ">Yes</td>
<td class="entry" data-valign="top" width="32.482598607888626%" headers="d82113e724 ">In <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>.
<p>Type: <a href="FBAInventory_Datatypes.md#Timepoint" class="xref" title="Indicates whether inventory is immediately available for picking, whether inventory availability is unknown, or whether inventory is expected to be available for picking by a specific date.">Timepoint</a></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="27.146171693735493%" headers="d82113e715 "><span class="keyword parmname">LatestAvailableToPick</span></td>
<td class="entry" data-valign="top" width="28.770301624129928%" headers="d82113e718 ">The latest date that your inventory is expected to be available for picking.</td>
<td class="entry" data-valign="top" width="11.600928074245937%" headers="d82113e721 ">Yes</td>
<td class="entry" data-valign="top" width="32.482598607888626%" headers="d82113e724 ">In <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>.
<p>Type: <a href="FBAInventory_Datatypes.md#Timepoint" class="xref" title="Indicates whether inventory is immediately available for picking, whether inventory availability is unknown, or whether inventory is expected to be available for picking by a specific date.">Timepoint</a></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="Timepoint" class="topic reference nested1">

## Timepoint

<div class="body refbody">

<span class="ph">Indicates whether inventory is immediately available
for picking, whether inventory availability is unknown, or whether
inventory is expected to be available for picking by a specific
date.</span>

<div class="section">

### Operations

<div class="p">

The <span class="keyword cmdname">Timepoint</span> datatype is used in a
response element of the following operations:

-   <a href="FBAInventory_ListInventorySupply.md" class="xref" title="Returns information about the availability of a seller&#39;s inventory.">ListInventorySupply</a>
-   <a href="FBAInventory_ListInventorySupplyByNextToken.md" class="xref" title="Returns the next page of information about the availability of a seller&#39;s inventory using the NextToken parameter.">ListInventorySupplyByNextToken</a>

</div>

</div>

<div class="section">

### Datatype content

The following table shows the elements of the <span
class="keyword cmdname">Timepoint</span> datatype:

<div class="tablenoborder">

<table id="Timepoint__RequestParametersTable" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d82113e987" class="entry" data-valign="top" width="19.4392523364486%">Name</th>
<th id="d82113e990" class="entry" data-valign="top" width="32.33644859813084%">Description</th>
<th id="d82113e993" class="entry" data-valign="top" width="18.691588785046733%">Required</th>
<th id="d82113e996" class="entry" data-valign="top" width="29.532710280373838%">Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="19.4392523364486%" headers="d82113e987 "><span class="keyword parmname">TimepointType</span></td>
<td class="entry" data-valign="top" width="32.33644859813084%" headers="d82113e990 "><span class="ph">Indicates whether inventory is immediately available for picking, whether inventory availability is unknown, or whether inventory is expected to be available for picking by a specific date.</span></td>
<td class="entry" data-valign="top" width="18.691588785046733%" headers="d82113e993 ">Yes</td>
<td class="entry" data-valign="top" width="29.532710280373838%" headers="d82113e996 "><span class="keyword parmname">TimepointType</span> values:
<ul>
<li><var class="keyword varname">Immediately</var> - The seller's inventory is immediately available for picking.</li>
<li><var class="keyword varname">DateTime</var> - The seller's inventory is expected to be available for picking at a specific date, represented by the <span class="keyword parmname">DateTime</span> element.</li>
<li><var class="keyword varname">Unknown</var> - The seller's inventory is expected to be available for picking at some point in the future, but it is not known with confidence when that will be.</li>
</ul>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="19.4392523364486%" headers="d82113e987 "><span class="keyword parmname">DateTime</span></td>
<td class="entry" data-valign="top" width="32.33644859813084%" headers="d82113e990 ">The date and time by which inventory is expected to be available for picking, in <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>.</td>
<td class="entry" data-valign="top" width="18.691588785046733%" headers="d82113e993 ">No
<p>If the value of the <span class="keyword parmname">TimepointType</span> element is <span class="keyword parmname">DateTime</span>, then the <span class="keyword parmname">DateTime</span> element is required.</p></td>
<td class="entry" data-valign="top" width="29.532710280373838%" headers="d82113e996 ">If the value of the <span class="keyword parmname">TimepointType</span> element is <var class="keyword varname">Immediately</var> or <var class="keyword varname">Unknown</var>, then the value of the <span class="keyword parmname">DateTime</span> element is null.
<p><span class="ph">Type: xs:dateTime</span></p></td>
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

<a href="FBAInventory_Overview.md" class="xref">What you should know about the Fulfillment Inventory API section</a>

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
