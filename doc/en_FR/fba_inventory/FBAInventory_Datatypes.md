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

<div id="FBAInventoy_Datatypes" class="nested0">

# Inventory Datatypes

<div class="body">

The following datatypes are used in the response elements of the
<span class="ph">Amazon Marketplace Web Service (Amazon MWS)</span>
<span class="ph">Fulfillment Inventory API section</span>:

<div class="tablenoborder">

| Datatype                                                                                                                                                                                                                                                                       | Description                                                                                                                                                                                                                                          |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [InventorySupply](#InventorySupply "General information about the availability of inventory for a single SKU.")                                                                                                                                                                | <span class="ph">General information about the availability of inventory for a single SKU.</span>                                                                                                                                                    |
| [InventorySupplyDetail](#InventorySupplyDetail "Specific information about the availability of inventory for a single SKU, including the number of units that are in an Amazon fulfillment center, in an inbound shipment, or being transferred between fulfillment centers.") | <span class="ph">Specific information about the availability of inventory for a single SKU, including the number of units that are in an Amazon fulfillment center, in an inbound shipment, or being transferred between fulfillment centers.</span> |
| [Timepoint](#Timepoint "Indicates whether inventory is immediately available for picking, whether inventory availability is unknown, or whether inventory is expected to be available for picking by a specific date.")                                                        | <span class="ph">Indicates whether inventory is immediately available for picking, whether inventory availability is unknown, or whether inventory is expected to be available for picking by a specific date.</span>                                |

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

  - [ListInventorySupply](FBAInventory_ListInventorySupply.md "Returns information about the availability of a seller's inventory.")
  - [ListInventorySupplyByNextToken](FBAInventory_ListInventorySupplyByNextToken.md "Returns the next page of information about the availability of a seller's inventory using the NextToken parameter.")

</div>

</div>

<div class="section">

### Datatype content

The following table shows the elements of the
<span class="keyword cmdname">InventorySupply</span> datatype:

<div class="tablenoborder">

<table>
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Description</th>
<th>Required</th>
<th>Values</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><span class="keyword parmname">SellerSKU</span></td>
<td><span class="ph">The Seller SKU of the item.</span></td>
<td>No</td>
<td><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">FNSKU</span></td>
<td>The Fulfillment Network SKU (FNSKU) of the item. The <span class="keyword parmname">FNSKU</span> is a unique identifier for each inventory item stored in an <span class="ph">Amazon fulfillment center</span>.</td>
<td>Yes</td>
<td><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">ASIN</span></td>
<td><span class="ph">The Amazon Standard Identification Number (ASIN) of the item.</span></td>
<td>No</td>
<td><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">Condition</span></td>
<td><span class="ph">The condition of the item.</span></td>
<td>No</td>
<td><span class="ph"><span class="keyword parmname">Condition</span> values:</span>
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
<tr class="odd">
<td><span class="keyword parmname">TotalSupplyQuantity</span></td>
<td>The total item quantity that a seller has in <span class="ph">Amazon's fulfillment network</span> supply chain. This includes inventory that is available for shipping, inventory in inbound shipments, and inventory being transferred between <span class="ph">Amazon fulfillment center</span>s. <span class="keyword parmname">TotalSupplyQuantity</span> is equivalent to the sum of the <span class="keyword parmname">afn-inbound-shipped-quantity</span>, <span class="keyword parmname">afn-inbound-receiving-quantity</span>, and <span class="keyword parmname">afn-fulfillable-quantity</span> fields of the FBA Manage Inventory Report (_GET_FBA_MYI_UNSUPPRESSED_INVENTORY_DATA_) and the <span class="keyword parmname">Reserved - FC transfer</span> field of the FBA Reserved Inventory Report (_GET_RESERVED_INVENTORY_DATA_).</td>
<td>Yes</td>
<td><span class="ph">Type: xs:int</span></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">InStockSupplyQuantity</span></td>
<td>The item quantity that a seller has in <span class="ph">Amazon fulfillment center</span>s that is available for shipping. <span class="keyword parmname">InStockSupplyQuantity</span> is equivalent to the <span class="keyword parmname">afn-fulfillable-quantity</span> field in the FBA Manage Inventory Report (_GET_FBA_MYI_UNSUPPRESSED_INVENTORY_DATA_).</td>
<td>Yes</td>
<td><span class="ph">Type: xs:int</span></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">EarliestAvailability</span></td>
<td>The earliest date that your inventory is expected to be available for picking.</td>
<td>No
<p>If the value of <span class="keyword parmname">TotalSupplyQuantity</span> is zero, then the <span class="keyword parmname">EarliestAvailability</span> element is not returned.</p></td>
<td>Type: <a href="FBAInventory_Datatypes.md#Timepoint" class="xref" title="Indicates whether inventory is immediately available for picking, whether inventory availability is unknown, or whether inventory is expected to be available for picking by a specific date.">Timepoint</a></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">SupplyDetail</span></td>
<td><span id="InventorySupply__sd_InventoryDatatype_InventorySupplyDetail" class="ph">Detailed information about the availability of inventory for a specific item and its current location in <span class="ph">Amazon's fulfillment network</span> supply chain.</span></td>
<td>No</td>
<td>Type: List of <a href="FBAInventory_Datatypes.md#InventorySupplyDetail" class="xref" title="Specific information about the availability of inventory for a single SKU, including the number of units that are in an Amazon fulfillment center, in an inbound shipment, or being transferred between fulfillment centers.">InventorySupplyDetail</a></td>
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

  - [ListInventorySupply](FBAInventory_ListInventorySupply.md "Returns information about the availability of a seller's inventory.")
  - [ListInventorySupplyByNextToken](FBAInventory_ListInventorySupplyByNextToken.md "Returns the next page of information about the availability of a seller's inventory using the NextToken parameter.")

</div>

</div>

<div class="section">

### Datatype content

The following table shows the elements of the
<span class="keyword cmdname">InventorySupplyDetail</span> datatype:

<div class="tablenoborder">

<table>
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Description</th>
<th>Required</th>
<th>Values</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><span class="keyword parmname">Quantity</span></td>
<td>The quantity of inventory for a specific item.</td>
<td>Yes</td>
<td><span class="ph">Type: xs:int</span></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">SupplyType</span></td>
<td>The current inventory status for a specific item.</td>
<td>Yes</td>
<td><span class="keyword parmname">SupplyType</span> values:
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
<tr class="odd">
<td><span class="keyword parmname">EarliestAvailableToPick</span></td>
<td>The earliest date that your inventory is expected to be available for picking.</td>
<td>Yes</td>
<td>In <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>.
<p>Type: <a href="FBAInventory_Datatypes.md#Timepoint" class="xref" title="Indicates whether inventory is immediately available for picking, whether inventory availability is unknown, or whether inventory is expected to be available for picking by a specific date.">Timepoint</a></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">LatestAvailableToPick</span></td>
<td>The latest date that your inventory is expected to be available for picking.</td>
<td>Yes</td>
<td>In <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>.
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

  - [ListInventorySupply](FBAInventory_ListInventorySupply.md "Returns information about the availability of a seller's inventory.")
  - [ListInventorySupplyByNextToken](FBAInventory_ListInventorySupplyByNextToken.md "Returns the next page of information about the availability of a seller's inventory using the NextToken parameter.")

</div>

</div>

<div class="section">

### Datatype content

The following table shows the elements of the
<span class="keyword cmdname">Timepoint</span> datatype:

<div class="tablenoborder">

<table>
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Description</th>
<th>Required</th>
<th>Values</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><span class="keyword parmname">TimepointType</span></td>
<td><span class="ph">Indicates whether inventory is immediately available for picking, whether inventory availability is unknown, or whether inventory is expected to be available for picking by a specific date.</span></td>
<td>Yes</td>
<td><span class="keyword parmname">TimepointType</span> values:
<ul>
<li><var class="keyword varname">Immediately</var> - The seller's inventory is immediately available for picking.</li>
<li><var class="keyword varname">DateTime</var> - The seller's inventory is expected to be available for picking at a specific date, represented by the <span class="keyword parmname">DateTime</span> element.</li>
<li><var class="keyword varname">Unknown</var> - The seller's inventory is expected to be available for picking at some point in the future, but it is not known with confidence when that will be.</li>
</ul>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">DateTime</span></td>
<td>The date and time by which inventory is expected to be available for picking, in <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>.</td>
<td>No
<p>If the value of the <span class="keyword parmname">TimepointType</span> element is <span class="keyword parmname">DateTime</span>, then the <span class="keyword parmname">DateTime</span> element is required.</p></td>
<td>If the value of the <span class="keyword parmname">TimepointType</span> element is <var class="keyword varname">Immediately</var> or <var class="keyword varname">Unknown</var>, then the value of the <span class="keyword parmname">DateTime</span> element is null.
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

[What you should know about the Fulfillment Inventory API
section](FBAInventory_Overview.md)

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
