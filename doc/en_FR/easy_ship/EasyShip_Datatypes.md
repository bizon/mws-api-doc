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

<div id="EasyShip_Datatypes" class="nested0">

# Easy Ship Datatypes

<div class="body">

The following datatypes are used in the request parameters and response
elements of the <span class="ph">Amazon Marketplace Web Service (Amazon
MWS)</span> <span class="ph">Easy Ship API
section</span>:

<div class="tablenoborder">

| Datatype                                                                                              | Description                                                             |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------- |
| [Dimensions](#Dimensions "The dimensions of the scheduled package.")                                  | <span class="ph">The dimensions of the scheduled package.</span>        |
| [InvoiceData](#InvoiceData "Invoice number and date.")                                                | <span class="ph">Invoice number and date.</span>                        |
| [Item](#Item "Item ID and serial number information.")                                                | <span class="ph">Item ID and serial number information.</span>          |
| [Package](#Package "Information about a scheduled package.")                                          | <span class="ph">Information about a scheduled package.</span>          |
| [PackageRequestDetails](#PackageRequestDetails "Information for scheduling a package.")               | <span class="ph">Information for scheduling a package.</span>           |
| [PickupSlot](#PickupSlot "Pickup slot ID and pickup time information.")                               | <span class="ph">Pickup slot ID and pickup time information.</span>     |
| [ScheduledPackageId](#ScheduledPackageId "Identifies the scheduled package to be updated.")           | <span class="ph">Identifies the scheduled package to be updated.</span> |
| [ScheduledPackageUpdateDetails](#ScheduledPackageUpdateDetails "Information for updating a package.") | <span class="ph">Information for updating a package.</span>             |
| [Weight](#Weight "The weight of the scheduled package.")                                              | <span class="ph">The weight of the scheduled package.</span>            |

</div>

</div>

<div id="Dimensions" class="topic reference nested1">

## Dimensions

<div class="body refbody">

<span class="ph">The dimensions of the scheduled package.</span>

<div id="Dimensions__section_idj_c5z_42b" class="section">

### Dimensions elements

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
<td><span class="keyword parmname">Length</span></td>
<td>The length dimension.</td>
<td>Yes</td>
<td>A decimal greater than zero.
<p><span class="ph">Type: xs:decimal</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">Width</span></td>
<td>The width dimension.</td>
<td>Yes</td>
<td>A decimal greater than zero.
<p><span class="ph">Type: xs:decimal</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">Height</span></td>
<td>The height dimension.</td>
<td>Yes</td>
<td>A decimal greater than zero.
<p><span class="ph">Type: xs:decimal</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">Unit</span></td>
<td>The unit of measurement.</td>
<td>Yes</td>
<td>Unit values: &quot;cm&quot;
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">Name</span></td>
<td>Identifier for custom package dimensions.</td>
<td>No</td>
<td><span class="ph">Type: xs:string</span></td>
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

<span class="ph">Invoice number and
date.</span>

<div id="InvoiceData__section_hkb_25z_42b" class="section">

### InvoiceData elements

<div class="tablenoborder">

| Name                                                | Description                              | Required | Values                                    |
| --------------------------------------------------- | ---------------------------------------- | -------- | ----------------------------------------- |
| <span class="keyword parmname">InvoiceNumber</span> | The invoice number.                      | Yes      | <span class="ph">Type: xs:string</span>   |
| <span class="keyword parmname">InvoiceDate</span>   | The date that the invoice was generated. | No       | <span class="ph">Type: xs:dateTime</span> |

</div>

</div>

</div>

</div>

<div id="Item" class="topic reference nested1">

## Item

<div class="body refbody">

<span class="ph">Item ID and serial number
information.</span>

<div id="Item__section_mxt_25z_42b" class="section">

### Item elements

<div class="tablenoborder">

| Name                                                            | Description                                                                                                         | Required | Values                                  |
| --------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | -------- | --------------------------------------- |
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
<td><span class="keyword parmname">ScheduledPackageId</span></td>
<td><span class="ph">Identifies the scheduled package to be updated.</span></td>
<td>Yes</td>
<td>Type: <a href="EasyShip_Datatypes.html#ScheduledPackageId" class="xref" title="Identifies the scheduled package to be updated.">ScheduledPackageId</a></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">PackageDimensions</span></td>
<td><span class="ph">The dimensions of the scheduled package.</span></td>
<td>Yes</td>
<td>Type: <a href="EasyShip_Datatypes.html#Dimensions" class="xref" title="The dimensions of the scheduled package.">Dimensions</a></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">PackageWeight</span></td>
<td><span class="ph">The weight of the scheduled package.</span></td>
<td>Yes</td>
<td>Type: <a href="EasyShip_Datatypes.html#Weight" class="xref" title="The weight of the scheduled package.">Weight</a></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">PackageItemsList</span></td>
<td><span class="ph">Item ID and serial number information.</span></td>
<td>No</td>
<td>List of <a href="EasyShip_Datatypes.html#Item" class="xref" title="Item ID and serial number information.">Item</a></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">PackagePickupSlot</span></td>
<td><span class="ph">Pickup slot ID and pickup time information.</span></td>
<td>Yes</td>
<td>Type: <a href="EasyShip_Datatypes.html#PickupSlot" class="xref" title="Pickup slot ID and pickup time information.">PickupSlot</a></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">PackageIdentifier</span></td>
<td><span class="ph">Optional seller-created identifier that is printed on the shipping label to help the seller identify the package.</span></td>
<td>No</td>
<td><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">Invoice</span></td>
<td><span class="ph">Invoice number and date.</span></td>
<td>No</td>
<td>Type: <a href="EasyShip_Datatypes.html#InvoiceData" class="xref" title="Invoice number and date.">InvoiceData</a></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">PackageStatus</span></td>
<td>The status of the package.</td>
<td>No</td>
<td><span class="keyword parmname">PackageStatus</span> values:
<ul>
<li>Unscheduled - Not scheduled for pickup.</li>
<li>Scheduled - Scheduled for pickup.</li>
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
<td><span class="keyword parmname">PackageDimensions</span></td>
<td><span class="ph">The dimensions of the scheduled package.</span></td>
<td>No</td>
<td>Type: <a href="EasyShip_Datatypes.html#Dimensions" class="xref" title="The dimensions of the scheduled package.">Dimensions</a></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">PackageWeight</span></td>
<td><span class="ph">The weight of the scheduled package.</span></td>
<td>No</td>
<td>Type: <a href="EasyShip_Datatypes.html#Weight" class="xref" title="The weight of the scheduled package.">Weight</a></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">PackageItemList</span></td>
<td><span class="ph">Item ID and serial number information.</span> Amazon generates a warranty document only if <span class="keyword parmname">PackageItemList</span> is specified. For retrieving warranty documents, see <a href="../easy_ship/EasyShip_HowToGetEasyShipDocs.html" class="xref">How to get invoice, shipping label, and warranty documents</a>.</td>
<td>No</td>
<td>List of <a href="EasyShip_Datatypes.html#Item" class="xref" title="Item ID and serial number information.">Item</a></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">PackagePickupSlot</span></td>
<td><span class="ph">Pickup slot ID and pickup time information.</span></td>
<td>Yes</td>
<td>Default: First available pickup slot.
<p>Type: <a href="EasyShip_Datatypes.html#PickupSlot" class="xref" title="Pickup slot ID and pickup time information.">PickupSlot</a></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">PackageIdentifier</span></td>
<td><span class="ph">Optional seller-created identifier that is printed on the shipping label to help the seller identify the package.</span></td>
<td>No</td>
<td><span class="ph">Type: xs:string</span></td>
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

<span class="ph">Pickup slot ID and pickup time
information.</span>

<div id="PickupSlot__section_ezf_h5z_42b" class="section">

### PickupSlot elements

<div class="tablenoborder">

| Name                                                  | Description                                                                                                                        | Required | Values                                    |
| ----------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------- | -------- | ----------------------------------------- |
| <span class="keyword parmname">SlotId</span>          | An Amazon-defined identifier for a pickup slot. Get this from a previous call to [ListPickupSlots](EasyShip_ListPickupSlots.html). | Yes      | <span class="ph">Type: xs:string</span>   |
| <span class="keyword parmname">PickupTimeStart</span> | The start of the pickup time slot.                                                                                                 | No       | <span class="ph">Type: xs:dateTime</span> |
| <span class="keyword parmname">PickupTimeEnd</span>   | The end of the pickup time slot.                                                                                                   | No       | <span class="ph">Type: xs:dateTime</span> |

</div>

</div>

</div>

</div>

<div id="ScheduledPackageId" class="topic reference nested1">

## ScheduledPackageId

<div class="body refbody">

<span class="ph">Identifies the scheduled package to be
updated.</span>

<div class="section">

### ScheduledPackageId elements

<div class="tablenoborder">

| Name                                                | Description                                                                                                                                                       | Required | Values                                  |
| --------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------- | --------------------------------------- |
| <span class="keyword parmname">AmazonOrderId</span> | <span class="ph">An Amazon-defined order identifier. Identifies the order that the seller wants to deliver using <span class="ph">Amazon Easy Ship</span>.</span> | Yes      | <span class="ph">Type: xs:string</span> |
| <span class="keyword parmname">PackageId</span>     | An Amazon-defined identifier for the scheduled package.                                                                                                           | No       | <span class="ph">Type: xs:string</span> |

</div>

</div>

</div>

</div>

<div id="ScheduledPackageUpdateDetails" class="topic reference nested1">

## ScheduledPackageUpdateDetails

<div class="body refbody">

<span class="ph">Information for updating a
package.</span>

<div id="ScheduledPackageUpdateDetails__section_ehn_j5z_42b" class="section">

### ScheduledPackageUpdateDetails elements

<div class="tablenoborder">

| Name                                                     | Description                                                                                                                                                                          | Required | Values                                                                                                                   |
| -------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | -------- | ------------------------------------------------------------------------------------------------------------------------ |
| <span class="keyword parmname">ScheduledPackageId</span> | <span class="ph">Identifies the scheduled package to be updated.</span> Returned by a previous call to the [CreateScheduledPackage](EasyShip_CreateScheduledPackage.html) operation. | Yes      | Type: [ScheduledPackageId](EasyShip_Datatypes.html#ScheduledPackageId "Identifies the scheduled package to be updated.") |
| <span class="keyword parmname">PackagePickupSlot</span>  | <span class="ph">Pickup slot ID and pickup time information.</span> Returned by a previous call to the [ListPickupSlots](EasyShip_ListPickupSlots.html) operation.                   | Yes      | Type: [PickupSlot](EasyShip_Datatypes.html#PickupSlot "Pickup slot ID and pickup time information.")                     |

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
<td><span class="keyword parmname">Value</span></td>
<td>The weight of the package.</td>
<td>Yes</td>
<td><span class="ph">Type: xs:decimal</span></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">Unit</span></td>
<td>The unit of measurement used for weight.</td>
<td>Yes</td>
<td><span class="keyword parmname">Unit</span> values: g (for grams)
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

[What you should know about the Easy Ship API
section](EasyShip_Overview.html)

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
