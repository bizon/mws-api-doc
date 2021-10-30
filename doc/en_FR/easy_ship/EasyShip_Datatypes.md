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

<div id="EasyShip_Datatypes" class="nested0">

# Easy Ship Datatypes

<div class="body">

The following datatypes are used in the request parameters and response
elements of the <span class="ph">Amazon Marketplace Web Service (Amazon
MWS)</span> <span class="ph">Easy Ship API section</span>:

<div class="tablenoborder">

| Datatype                                                                                                                            | Description                                                             |
|-------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------|
| <a href="#Dimensions" class="xref" title="The dimensions of the scheduled package.">Dimensions</a>                                  | <span class="ph">The dimensions of the scheduled package.</span>        |
| <a href="#InvoiceData" class="xref" title="Invoice number and date.">InvoiceData</a>                                                | <span class="ph">Invoice number and date.</span>                        |
| <a href="#Item" class="xref" title="Item ID and serial number information.">Item</a>                                                | <span class="ph">Item ID and serial number information.</span>          |
| <a href="#Package" class="xref" title="Information about a scheduled package.">Package</a>                                          | <span class="ph">Information about a scheduled package.</span>          |
| <a href="#PackageRequestDetails" class="xref" title="Information for scheduling a package.">PackageRequestDetails</a>               | <span class="ph">Information for scheduling a package.</span>           |
| <a href="#PickupSlot" class="xref" title="Pickup slot ID and pickup time information.">PickupSlot</a>                               | <span class="ph">Pickup slot ID and pickup time information.</span>     |
| <a href="#ScheduledPackageId" class="xref" title="Identifies the scheduled package to be updated.">ScheduledPackageId</a>           | <span class="ph">Identifies the scheduled package to be updated.</span> |
| <a href="#ScheduledPackageUpdateDetails" class="xref" title="Information for updating a package.">ScheduledPackageUpdateDetails</a> | <span class="ph">Information for updating a package.</span>             |
| <a href="#Weight" class="xref" title="The weight of the scheduled package.">Weight</a>                                              | <span class="ph">The weight of the scheduled package.</span>            |

</div>

</div>

<div id="Dimensions" class="topic reference nested1">

## Dimensions

<div class="body refbody">

<span class="ph">The dimensions of the scheduled package.</span>

<div id="Dimensions__section_idj_c5z_42b" class="section">

### Dimensions elements

<div class="tablenoborder">

<table id="Dimensions__table_jdj_c5z_42b" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d12724e295" class="entry" data-valign="top" width="34.18367346938776%">Name</th>
<th id="d12724e298" class="entry" data-valign="top" width="25.510204081632654%">Description</th>
<th id="d12724e301" class="entry" data-valign="top" width="12.755102040816327%">Required</th>
<th id="d12724e304" class="entry" data-valign="top" width="27.551020408163268%">Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d12724e295 "><span class="keyword parmname">Length</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d12724e298 ">The length dimension.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d12724e301 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d12724e304 ">A decimal greater than zero.
<p><span class="ph">Type: xs:decimal</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d12724e295 "><span class="keyword parmname">Width</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d12724e298 ">The width dimension.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d12724e301 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d12724e304 ">A decimal greater than zero.
<p><span class="ph">Type: xs:decimal</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d12724e295 "><span class="keyword parmname">Height</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d12724e298 ">The height dimension.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d12724e301 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d12724e304 ">A decimal greater than zero.
<p><span class="ph">Type: xs:decimal</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d12724e295 "><span class="keyword parmname">Unit</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d12724e298 ">The unit of measurement.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d12724e301 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d12724e304 ">Unit values: "cm"
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d12724e295 "><span class="keyword parmname">Name</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d12724e298 ">Identifier for custom package dimensions.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d12724e301 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d12724e304 "><span class="ph">Type: xs:string</span></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="InvoiceData" class="topic reference nested1">

## InvoiceData

<div class="body refbody">

<span class="ph">Invoice number and date.</span>

<div id="InvoiceData__section_hkb_25z_42b" class="section">

### InvoiceData elements

<div class="tablenoborder">

| Name                                                | Description                              | Required | Values                                    |
|-----------------------------------------------------|------------------------------------------|----------|-------------------------------------------|
| <span class="keyword parmname">InvoiceNumber</span> | The invoice number.                      | Yes      | <span class="ph">Type: xs:string</span>   |
| <span class="keyword parmname">InvoiceDate</span>   | The date that the invoice was generated. | No       | <span class="ph">Type: xs:dateTime</span> |

</div>

</div>

</div>

</div>

<div id="Item" class="topic reference nested1">

## Item

<div class="body refbody">

<span class="ph">Item ID and serial number information.</span>

<div id="Item__section_mxt_25z_42b" class="section">

### Item elements

<div class="tablenoborder">

| Name                                                            | Description                                                                                                         | Required | Values                                  |
|-----------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------|----------|-----------------------------------------|
| <span class="keyword parmname">OrderItemId</span>               | The Amazon-defined order item identifier.                                                                           | Yes      | <span class="ph">Type: xs:string</span> |
| <span class="keyword parmname">OrderItemSerialNumberList</span> | A list of serial numbers for the items associated with the <span class="keyword parmname">OrderItemId</span> value. | Yes      | <span class="ph">Type: xs:string</span> |

</div>

</div>

</div>

</div>

<div id="Package" class="topic reference nested1">

## Package

<div class="body refbody">

<span class="ph">Information about a scheduled package.</span>

<div id="Package__section_pgn_f5z_42b" class="section">

### Package elements

<div class="tablenoborder">

<table id="Package__table_qgn_f5z_42b" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d12724e725" class="entry" data-valign="top" width="34.18367346938776%">Name</th>
<th id="d12724e728" class="entry" data-valign="top" width="25.510204081632654%">Description</th>
<th id="d12724e731" class="entry" data-valign="top" width="12.755102040816327%">Required</th>
<th id="d12724e734" class="entry" data-valign="top" width="27.551020408163268%">Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d12724e725 "><span class="keyword parmname">ScheduledPackageId</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d12724e728 "><span class="ph">Identifies the scheduled package to be updated.</span></td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d12724e731 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d12724e734 ">Type: <a href="EasyShip_Datatypes.md#ScheduledPackageId" class="xref" title="Identifies the scheduled package to be updated.">ScheduledPackageId</a></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d12724e725 "><span class="keyword parmname">PackageDimensions</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d12724e728 "><span class="ph">The dimensions of the scheduled package.</span></td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d12724e731 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d12724e734 ">Type: <a href="EasyShip_Datatypes.md#Dimensions" class="xref" title="The dimensions of the scheduled package.">Dimensions</a></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d12724e725 "><span class="keyword parmname">PackageWeight</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d12724e728 "><span class="ph">The weight of the scheduled package.</span></td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d12724e731 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d12724e734 ">Type: <a href="EasyShip_Datatypes.md#Weight" class="xref" title="The weight of the scheduled package.">Weight</a></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d12724e725 "><span class="keyword parmname">PackageItemsList</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d12724e728 "><span class="ph">Item ID and serial number information.</span></td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d12724e731 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d12724e734 ">List of <a href="EasyShip_Datatypes.md#Item" class="xref" title="Item ID and serial number information.">Item</a></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d12724e725 "><span class="keyword parmname">PackagePickupSlot</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d12724e728 "><span class="ph">Pickup slot ID and pickup time information.</span></td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d12724e731 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d12724e734 ">Type: <a href="EasyShip_Datatypes.md#PickupSlot" class="xref" title="Pickup slot ID and pickup time information.">PickupSlot</a></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d12724e725 "><span class="keyword parmname">PackageIdentifier</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d12724e728 "><span class="ph">Optional seller-created identifier that is printed on the shipping label to help the seller identify the package.</span></td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d12724e731 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d12724e734 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d12724e725 "><span class="keyword parmname">Invoice</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d12724e728 "><span class="ph">Invoice number and date.</span></td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d12724e731 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d12724e734 ">Type: <a href="EasyShip_Datatypes.md#InvoiceData" class="xref" title="Invoice number and date.">InvoiceData</a></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d12724e725 "><span class="keyword parmname">PackageStatus</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d12724e728 ">The status of the package.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d12724e731 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d12724e734 "><span class="keyword parmname">PackageStatus</span> values:
<ul>
<li><var class="keyword varname">Unscheduled</var> - Not scheduled for pickup.</li>
<li><var class="keyword varname">Scheduled</var> - Scheduled for pickup.</li>
</ul>
<p>Type: xs:string</p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="PackageRequestDetails" class="topic reference nested1">

## PackageRequestDetails

<div class="body refbody">

<span class="ph">Information for scheduling a package.</span>

<div id="PackageRequestDetails__section_wlh_g5z_42b" class="section">

### PackageRequestDetails elements

<div class="tablenoborder">

<table id="PackageRequestDetails__table_xlh_g5z_42b" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d12724e1011" class="entry" data-valign="top" width="34.18367346938776%">Name</th>
<th id="d12724e1014" class="entry" data-valign="top" width="25.510204081632654%">Description</th>
<th id="d12724e1017" class="entry" data-valign="top" width="12.755102040816327%">Required</th>
<th id="d12724e1020" class="entry" data-valign="top" width="27.551020408163268%">Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d12724e1011 "><span class="keyword parmname">PackageDimensions</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d12724e1014 "><span class="ph">The dimensions of the scheduled package.</span></td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d12724e1017 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d12724e1020 ">Type: <a href="EasyShip_Datatypes.md#Dimensions" class="xref" title="The dimensions of the scheduled package.">Dimensions</a></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d12724e1011 "><span class="keyword parmname">PackageWeight</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d12724e1014 "><span class="ph">The weight of the scheduled package.</span></td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d12724e1017 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d12724e1020 ">Type: <a href="EasyShip_Datatypes.md#Weight" class="xref" title="The weight of the scheduled package.">Weight</a></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d12724e1011 "><span class="keyword parmname">PackageItemList</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d12724e1014 "><span class="ph">Item ID and serial number information.</span> Amazon generates a warranty document only if <span class="keyword parmname">PackageItemList</span> is specified. For retrieving warranty documents, see <a href="../easy_ship/EasyShip_HowToGetEasyShipDocs.md" class="xref">How to get invoice, shipping label, and warranty documents</a>.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d12724e1017 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d12724e1020 ">List of <a href="EasyShip_Datatypes.md#Item" class="xref" title="Item ID and serial number information.">Item</a></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d12724e1011 "><span class="keyword parmname">PackagePickupSlot</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d12724e1014 "><span class="ph">Pickup slot ID and pickup time information.</span></td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d12724e1017 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d12724e1020 ">Default: First available pickup slot.
<p>Type: <a href="EasyShip_Datatypes.md#PickupSlot" class="xref" title="Pickup slot ID and pickup time information.">PickupSlot</a></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d12724e1011 "><span class="keyword parmname">PackageIdentifier</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d12724e1014 "><span class="ph">Optional seller-created identifier that is printed on the shipping label to help the seller identify the package.</span></td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d12724e1017 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d12724e1020 "><span class="ph">Type: xs:string</span></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="PickupSlot" class="topic reference nested1">

## PickupSlot

<div class="body refbody">

<span class="ph">Pickup slot ID and pickup time information.</span>

<div id="PickupSlot__section_ezf_h5z_42b" class="section">

### PickupSlot elements

<div class="tablenoborder">

| Name                                                  | Description                                                                                                                                                | Required | Values                                    |
|-------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------|----------|-------------------------------------------|
| <span class="keyword parmname">SlotId</span>          | An Amazon-defined identifier for a pickup slot. Get this from a previous call to <a href="EasyShip_ListPickupSlots.md" class="xref">ListPickupSlots</a>. | Yes      | <span class="ph">Type: xs:string</span>   |
| <span class="keyword parmname">PickupTimeStart</span> | The start of the pickup time slot.                                                                                                                         | No       | <span class="ph">Type: xs:dateTime</span> |
| <span class="keyword parmname">PickupTimeEnd</span>   | The end of the pickup time slot.                                                                                                                           | No       | <span class="ph">Type: xs:dateTime</span> |

</div>

</div>

</div>

</div>

<div id="ScheduledPackageId" class="topic reference nested1">

## ScheduledPackageId

<div class="body refbody">

<span class="ph">Identifies the scheduled package to be updated.</span>

<div class="section">

### ScheduledPackageId elements

<div class="tablenoborder">

| Name                                                | Description                                                                                                                                                       | Required | Values                                  |
|-----------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------|-----------------------------------------|
| <span class="keyword parmname">AmazonOrderId</span> | <span class="ph">An Amazon-defined order identifier. Identifies the order that the seller wants to deliver using <span class="ph">Amazon Easy Ship</span>.</span> | Yes      | <span class="ph">Type: xs:string</span> |
| <span class="keyword parmname">PackageId</span>     | An Amazon-defined identifier for the scheduled package.                                                                                                           | No       | <span class="ph">Type: xs:string</span> |

</div>

</div>

</div>

</div>

<div id="ScheduledPackageUpdateDetails" class="topic reference nested1">

## ScheduledPackageUpdateDetails

<div class="body refbody">

<span class="ph">Information for updating a package.</span>

<div id="ScheduledPackageUpdateDetails__section_ehn_j5z_42b"
class="section">

### ScheduledPackageUpdateDetails elements

<div class="tablenoborder">

| Name                                                     | Description                                                                                                                                                                                                  | Required | Values                                                                                                                                                 |
|----------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------|--------------------------------------------------------------------------------------------------------------------------------------------------------|
| <span class="keyword parmname">ScheduledPackageId</span> | <span class="ph">Identifies the scheduled package to be updated.</span> Returned by a previous call to the <a href="EasyShip_CreateScheduledPackage.md" class="xref">CreateScheduledPackage</a> operation. | Yes      | Type: <a href="EasyShip_Datatypes.md#ScheduledPackageId" class="xref" title="Identifies the scheduled package to be updated.">ScheduledPackageId</a> |
| <span class="keyword parmname">PackagePickupSlot</span>  | <span class="ph">Pickup slot ID and pickup time information.</span> Returned by a previous call to the <a href="EasyShip_ListPickupSlots.md" class="xref">ListPickupSlots</a> operation.                   | Yes      | Type: <a href="EasyShip_Datatypes.md#PickupSlot" class="xref" title="Pickup slot ID and pickup time information.">PickupSlot</a>                     |

</div>

</div>

</div>

</div>

<div id="Weight" class="topic reference nested1">

## Weight

<div class="body refbody">

<span class="ph">The weight of the scheduled package.</span>

<div class="section">

### Weight elements

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d12724e1640" class="entry" data-valign="top" width="34.18367346938776%">Name</th>
<th id="d12724e1643" class="entry" data-valign="top" width="25.510204081632654%">Description</th>
<th id="d12724e1646" class="entry" data-valign="top" width="12.755102040816327%">Required</th>
<th id="d12724e1649" class="entry" data-valign="top" width="27.551020408163268%">Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d12724e1640 "><span class="keyword parmname">Value</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d12724e1643 ">The weight of the package.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d12724e1646 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d12724e1649 "><span class="ph">Type: xs:decimal</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d12724e1640 "><span class="keyword parmname">Unit</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d12724e1643 ">The unit of measurement used for weight.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d12724e1646 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d12724e1649 "><span class="keyword parmname">Unit</span> values: <var class="keyword varname">g</var> (for grams)
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

<a href="EasyShip_Overview.md" class="xref">What you should know about the Easy Ship API section</a>

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
