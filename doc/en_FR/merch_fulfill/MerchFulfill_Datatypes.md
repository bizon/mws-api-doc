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

<div id="MerchFulfill_Datatypes" class="nested0">

# Merchant Fulfillment Datatypes

<div class="body">

The following datatypes are used in the <span class="ph">Amazon
Marketplace Web Service (Amazon MWS)</span> <span class="ph">Merchant
Fulfillment
service</span>:

<div class="tablenoborder">

| Datatype                                                                                                                                                                                               | Description                                                                                                                       |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | --------------------------------------------------------------------------------------------------------------------------------- |
| [Address](MerchFulfill_Datatypes.md#Address "Postal address information.")                                                                                                                           | <span class="ph">Postal address information.</span>                                                                               |
| [CurrencyAmount](MerchFulfill_Datatypes.md#CurrencyAmount "Currency type and amount.")                                                                                                               | <span class="ph">Currency type and amount.</span>                                                                                 |
| [FileContents](MerchFulfill_Datatypes.md#FileContents "Document data and checksum.")                                                                                                                 | <span class="ph">Document data and checksum.</span>                                                                               |
| [HazmatType](MerchFulfill_Datatypes.md#HazmatType "Hazardous materials options for a package. Consult the terms and conditions for each carrier for more information on hazardous materials.")       | <span class="ph">Hazardous materials options for a package.</span>                                                                |
| [Item](MerchFulfill_Datatypes.md#Item "An Amazon order item identifier and a quantity.")                                                                                                             | <span class="ph">An Amazon order item identifier and a quantity.</span>                                                           |
| [Label](MerchFulfill_Datatypes.md#Label "Data for creating a shipping label and dimensions for printing the label.")                                                                                 | <span class="ph">Data for creating a shipping label and dimensions for printing the label.</span>                                 |
| [LabelCustomization](MerchFulfill_Datatypes.md#LabelCustomization "Custom text for shipping labels.")                                                                                                | <span class="ph">Custom text for shipping labels.</span>                                                                          |
| [LabelDimensions](MerchFulfill_Datatypes.md#LabelDimensions "Dimensions for printing a shipping label.")                                                                                             | <span class="ph">Dimensions for printing a shipping label.</span>                                                                 |
| [PackageDimensions](MerchFulfill_Datatypes.md#PackageDimensions "The dimensions of a package contained in a shipment.")                                                                              | <span class="ph">The dimensions of a package contained in a shipment.</span>                                                      |
| [Shipment](MerchFulfill_Datatypes.md#Shipment "The details of a shipment, including the shipment status.")                                                                                           | <span class="ph">The details of a shipment, including the shipment status.</span>                                                 |
| [ShipmentRequestDetails](MerchFulfill_Datatypes.md#ShipmentRequestDetails "Shipment information required for requesting shipping service offers or for creating a shipment.")                        | <span class="ph">Shipment information required for requesting shipping service offers or for creating a shipment.</span>          |
| [ShippingService](MerchFulfill_Datatypes.md#ShippingService "A shipping service offer made by a carrier.")                                                                                           | <span class="ph">A shipping service offer made by a carrier.</span>                                                               |
| [ShippingServiceOptions](MerchFulfill_Datatypes.md#ShippingServiceOptions "Extra services provided by a carrier.")                                                                                   | <span class="ph">Extra services provided by a carrier.</span>                                                                     |
| [TemporarilyUnavailableCarrier](MerchFulfill_Datatypes.md#TemporarilyUnavailableCarrier "A carrier who is temporarily unavailable, most likely due to a service outage experienced by the carrier.") | <span class="ph">A carrier who is temporarily unavailable, most likely due to a service outage experienced by the carrier.</span> |
| [TermsAndConditionsNotAcceptedCarrier](MerchFulfill_Datatypes.md#TermsAndConditionsNotAcceptedCarrier "A carrier whose terms and conditions have not been accepted by the seller.")                  | <span class="ph">A carrier whose terms and conditions have not been accepted by the seller.</span>                                |
| [TransparencyCodeList](MerchFulfill_Datatypes.md#TransparencyCodeList "List of Transparency codes.")                                                                                                 | <span class="ph">List of Transparency codes.</span>                                                                               |
| [Weight](MerchFulfill_Datatypes.md#Weight "The weight value and unit of measurement.")                                                                                                               | <span class="ph">The weight value and unit of measurement.</span>                                                                 |

</div>

</div>

<div id="Address" class="topic reference nested1">

## Address

<div class="body refbody">

<span class="ph">Postal address information.</span>

<div id="Address__DatatypeContent" class="section">

### Address elements

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
<td><span class="keyword parmname">Name</span></td>
<td>The name or business name.</td>
<td>Yes</td>
<td>Maximum: 30 characters.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">AddressLine1</span></td>
<td>The street address information.</td>
<td>Yes</td>
<td>Maximum: 180 characters.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">AddressLine2</span></td>
<td>Additional street address information.</td>
<td>No</td>
<td>Maximum: 60 characters.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">AddressLine3</span></td>
<td>Additional street address information.</td>
<td>No</td>
<td>Maximum: 60 characters.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">DistrictOrCounty</span></td>
<td>The district or county.</td>
<td>No</td>
<td>Maximum: 30 characters.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">Email</span></td>
<td>The email address.</td>
<td>Yes</td>
<td>Maximum: 256 characters.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">City</span></td>
<td>The city.</td>
<td>Yes</td>
<td>Maximum: 30 characters.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">StateOrProvinceCode</span></td>
<td>The state or province code.</td>
<td>No. Required only in the Canada, US, and UK marketplaces.</td>
<td>Maximum: 30 characters.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">PostalCode</span></td>
<td>The zip code or postal code.</td>
<td>Yes</td>
<td>Maximum: 30 characters.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">CountryCode</span></td>
<td>The country code.</td>
<td>Yes</td>
<td><span class="ph">A two-character country code, in ISO 3166-1 alpha-2 format.</span>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">Phone</span></td>
<td>The phone number.</td>
<td>Yes</td>
<td>Maximum: 30 characters.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="CurrencyAmount" class="topic reference nested1">

## CurrencyAmount

<div class="body refbody">

<span class="ph">Currency type and amount.</span>

<div id="CurrencyAmount__DatatypeContent" class="section">

### CurrencyAmount elements

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
<td><span class="keyword parmname">CurrencyCode</span></td>
<td>Three-digit currency code.</td>
<td>Yes</td>
<td>In <span class="ph"> <a href="../dev_guide/DG_ISO4217.md" class="xref">ISO 4217 format</a> </span>.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">Amount</span></td>
<td>The currency amount.</td>
<td>Yes</td>
<td><span class="ph">Type: xs:decimal</span></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="FileContents" class="topic reference nested1">

## FileContents

<div class="body refbody">

<span class="ph">Document data and checksum.</span>

<div id="FileContents__DatatypeContent" class="section">

### FileContents elements

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
<td><span class="keyword parmname">Contents</span></td>
<td>Data for printing labels, in the form of a Base64-encoded, GZip-compressed string.</td>
<td>Yes</td>
<td><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">FileType</span></td>
<td>The file type for a label.</td>
<td>Yes</td>
<td><span class="ph">Type: xs:string</span>
<div class="p">
Valid values:
<ul>
<li><code class="ph tt">application/pdf</code></li>
<li><code class="ph tt">application/zpl</code></li>
<li><code class="ph tt">image/png</code></li>
</ul>
</div></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">Checksum</span></td>
<td>An MD5 hash to validate the PDF document data, in the form of a Base64-encoded string.</td>
<td>Yes</td>
<td><span class="ph">Type: xs:string</span></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="HazmatType" class="topic reference nested1">

## HazmatType

<div class="body refbody">

<span class="ph">Hazardous materials options for a package.</span>
Consult the terms and conditions for each carrier for more information
on hazardous
materials.

<div id="HazmatType__DatatypeContent" class="section">

### HazmatType enumeration

<div class="tablenoborder">

| Name     | Description                                                     |
| -------- | --------------------------------------------------------------- |
| None     | This package does not contain hazardous material.               |
| LQHazmat | This package contains limited quantities of hazardous material. |

</div>

</div>

</div>

</div>

<div id="Item" class="topic reference nested1">

## Item

<div class="body refbody">

<span class="ph">An Amazon order item identifier and a
quantity.</span>

<div id="Item__DatatypeContent" class="section">

### Item elements

<div class="tablenoborder">

| Name                                                       | Description                                                                                                                                | Required | Values                                                                                                       |
| ---------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------ | -------- | ------------------------------------------------------------------------------------------------------------ |
| <span class="keyword parmname">OrderItemId</span>          | An Amazon-defined identifier for an individual item in an order. Used in the XML response to an order query request (Order API/Order XML). | Yes      | <span class="ph">Type: xs:string</span>                                                                      |
| <span class="keyword parmname">Quantity</span>             | The number of items.                                                                                                                       | Yes      | <span class="ph">Type: xs:int</span>                                                                         |
| <span class="keyword parmname">TransparencyCodeList</span> | <span class="ph">List of Transparency codes.</span>                                                                                        | No       | Type: [TransparencyCodeList](MerchFulfill_Datatypes.md#TransparencyCodeList "List of Transparency codes.") |

</div>

</div>

</div>

</div>

<div id="Label" class="topic reference nested1">

## Label

<div class="body refbody">

<span class="ph">Data for creating a shipping label and dimensions for
printing the label.</span>

<div id="Label__DatatypeContent" class="section">

### Label elements

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
<td><span class="keyword parmname">CustomTextForLabel</span></td>
<td>Custom text to print on the label.
<div class="note note">
<span class="notetitle">Note:</span> Custom text is only included on labels that are in ZPL format (ZPL203). FedEx does not support <span class="keyword parmname">CustomTextForLabel</span>.
</div></td>
<td>No</td>
<td>Maximum: 14 characters
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">Dimensions</span></td>
<td><span class="ph">Dimensions for printing a shipping label.</span></td>
<td>Yes</td>
<td>Type: <a href="MerchFulfill_Datatypes.md#LabelDimensions" class="xref" title="Dimensions for printing a shipping label.">LabelDimensions</a></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">FileContents</span></td>
<td><span class="ph">Document data and checksum.</span></td>
<td>Yes</td>
<td>Type: <a href="MerchFulfill_Datatypes.md#FileContents" class="xref" title="Document data and checksum.">FileContents</a></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">LabelFormat</span></td>
<td>The label format.</td>
<td>No</td>
<td>Must match one of the <span class="keyword parmname">AvailableLabelFormats</span> returned by <a href="MerchFulfill_GetEligibleShippingServices.md" class="xref" title="Returns a list of shipping service offers.">GetEligibleShippingServices</a>.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">StandardIdForLabel</span></td>
<td>The type of standard identifier to print on the label.</td>
<td>No</td>
<td><span class="keyword parmname">StandardIdForLabel</span> values: AmazonOrderId.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="LabelCustomization" class="topic reference nested1">

## LabelCustomization

<div class="body refbody">

<span class="ph">Custom text for shipping labels.</span>

<div id="LabelCustomization__DatatypeContent" class="section">

### Label elements

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
<td><span class="keyword parmname">CustomTextForLabel</span></td>
<td>Custom text to print on the label.
<div class="note note">
<span class="notetitle">Note:</span> Custom text is only included on labels that are in ZPL format (ZPL203). FedEx does not support <span class="keyword parmname">CustomTextForLabel</span>.
</div></td>
<td>No</td>
<td>Maximum: 14 characters
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">StandardIdForLabel</span></td>
<td>The type of standard identifier to print on the label.</td>
<td>No</td>
<td><span class="keyword parmname">StandardIdForLabel</span> values: AmazonOrderId.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="LabelDimensions" class="topic reference nested1">

## LabelDimensions

<div class="body refbody">

<span class="ph">Dimensions for printing a shipping label.</span>

<div id="LabelDimensions__DatatypeContent" class="section">

### LabelDimensions elements

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
<td><span class="keyword parmname">Unit</span></td>
<td>The unit of measurement.</td>
<td>Yes</td>
<td><span class="keyword parmname">Unit</span> values: inches or centimeters
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="PackageDimensions" class="topic reference nested1">

## PackageDimensions

<div class="body refbody">

<span class="ph">The dimensions of a package contained in a
shipment.</span>

<div id="PackageDimensions__DatatypeContent" class="section">

### PackageDimensions elements

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
<td>No. If you don't specify the <span class="keyword parmname">PredefinedPackageDimensions</span> request parameter, you must specify the <span class="keyword parmname">Length</span> request parameter.</td>
<td>A decimal greater than zero.
<p><span class="ph">Type: xs:decimal</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">Width</span></td>
<td>The width dimension.</td>
<td>No. If you don't specify the <span class="keyword parmname">PredefinedPackageDimensions</span> request parameter, you must specify the <span class="keyword parmname">Width</span> request parameter.</td>
<td>A decimal greater than zero.
<p><span class="ph">Type: xs:decimal</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">Height</span></td>
<td>The height dimension.</td>
<td>No. If you don't specify the <span class="keyword parmname">PredefinedPackageDimensions</span> request parameter, you must specify the <span class="keyword parmname">Height</span> request parameter.</td>
<td>A decimal greater than zero.
<p><span class="ph">Type: xs:decimal</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">Unit</span></td>
<td>The unit of measurement.</td>
<td>No. If you don't specify the <span class="keyword parmname">PredefinedPackageDimensions</span> request parameter, you must specify the <span class="keyword parmname">Unit</span> request parameter.</td>
<td><span class="keyword parmname">Unit</span> values: inches or centimeters
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">PredefinedPackageDimensions</span></td>
<td>A parcel token that specifies pre-defined package dimensions.</td>
<td>No</td>
<td>For <span class="keyword parmname">PredefinedPackageDimensions</span> values, see the <a href="MerchFulfill_PrePackDimenEnum.md" class="xref" title="An enumeration of predefined parcel tokens.">PredefinedPackageDimensions enumeration</a> table.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="Shipment" class="topic reference nested1">

## Shipment

<div class="body refbody">

<span class="ph">The details of a shipment, including the shipment
status.</span>

<div id="Shipment__DatatypeContent" class="section">

### Shipment elements

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
<td><span class="keyword parmname">ShipmentId</span></td>
<td>An Amazon-defined shipment identifier.</td>
<td>Yes</td>
<td><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">AmazonOrderId</span></td>
<td>An Amazon-defined order identifier in 3-7-7 format.</td>
<td>Yes</td>
<td>Maximum: 50 characters.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">SellerOrderId</span></td>
<td>A seller-defined order identifier.</td>
<td>No</td>
<td>Maximum: 64 characters.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">ItemList</span></td>
<td>A list of items to be included in a shipment.</td>
<td>Yes</td>
<td>Type: List of <a href="MerchFulfill_Datatypes.md#Item" class="xref" title="An Amazon order item identifier and a quantity.">Item</a></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">ShipFromAddress</span></td>
<td>The address from which the shipment ships.</td>
<td>Yes</td>
<td>Type: <a href="MerchFulfill_Datatypes.md#Address" class="xref" title="Postal address information.">Address</a></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">ShipToAddress</span></td>
<td>The destination address of the shipment.</td>
<td>Yes</td>
<td>Type: <a href="MerchFulfill_Datatypes.md#Address" class="xref" title="Postal address information.">Address</a></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">PackageDimensions</span></td>
<td>The package dimensions.</td>
<td>Yes</td>
<td>Type: <a href="MerchFulfill_Datatypes.md#PackageDimensions" class="xref" title="The dimensions of a package contained in a shipment.">PackageDimensions</a></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">Weight</span></td>
<td>The package weight.</td>
<td>Yes</td>
<td>Type: <a href="MerchFulfill_Datatypes.md#Weight" class="xref" title="The weight value and unit of measurement.">Weight</a></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">Insurance</span></td>
<td>If <span class="keyword parmname">DeclaredValue</span> was specified with a previous call to the <span class="keyword apiname">CreateShipment</span> operation, then <span class="keyword parmname">Insurance</span> indicates the amount that the carrier will insure the shipment for.
<p>If <span class="keyword parmname">DeclaredValue</span> was not specified with a previous call to the <span class="keyword apiname">CreateShipment</span> operation, then the shipment will be insured for the carrier's minimum insurance amount, or the combined sale prices that the items in the shipment are listed for, whichever is less.</p>
<p><span class="ph">For information about optional insurance coverage, see the Seller Central Help (<a href="https://sellercentral.amazon.co.uk/gp/help/200204080" class="xref">UK</a>) (<a href="https://sellercentral.amazon.com/gp/help/200204080" class="xref">US</a>).</span></p></td>
<td>Yes</td>
<td>The <span class="keyword parmname">DeclaredValue</span> value specified in a previous call to the <span class="keyword apiname">CreateShipment</span> operation. If <span class="keyword parmname">DeclaredValue</span> was not specified, then the value is zero.
<p>Type: <a href="MerchFulfill_Datatypes.md#CurrencyAmount" class="xref" title="Currency type and amount.">CurrencyAmount</a></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">ShippingService</span></td>
<td>The shipping service offer for this shipment.</td>
<td>Yes</td>
<td>Type: <a href="MerchFulfill_Datatypes.md#ShippingService" class="xref" title="A shipping service offer made by a carrier.">ShippingService</a></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">Label</span></td>
<td><span class="ph">Data for creating a shipping label and dimensions for printing the label.</span> If the shipment is canceled, an empty <span class="keyword parmname">Label</span> element is returned.</td>
<td>Yes</td>
<td>Type: <a href="MerchFulfill_Datatypes.md#Label" class="xref" title="Data for creating a shipping label and dimensions for printing the label.">Label</a></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">Status</span></td>
<td>The shipment status.</td>
<td>Yes</td>
<td><span class="keyword parmname">Status</span> values: Purchased, RefundPending, RefundRejected, or RefundApplied. See <a href="MerchFulfill_Datatypes.md#Status_Values" class="xref">Status Values table</a> for details.
<p><span class="ph">Type: List of xs:string</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">TrackingId</span></td>
<td>The shipment tracking identifier provided by the carrier.</td>
<td>No</td>
<td>Maximum: 30 characters
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">CreatedDate</span></td>
<td>The date that the shipment was created, in <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>.</td>
<td>Yes</td>
<td><span class="ph">Type: xs:dateTime</span></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">LastUpdatedDate</span></td>
<td>The date that the shipment status last changed, in <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>.</td>
<td>No</td>
<td><span class="ph">Type: xs:dateTime</span></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div id="Status_Values" class="topic nested2">

### Status Values

<div class="body">

<div class="section">

<span class="keyword parmname">Status</span> is a list of strings with
the following values.

<div class="tablenoborder">

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Purchased</td>
<td>The seller purchased a label by calling the <span class="keyword apiname">CreateShipment</span> operation.</td>
</tr>
<tr class="even">
<td>RefundPending</td>
<td>The seller requested a label refund by calling the <span class="keyword apiname">CancelShipment</span> operation, and the refund request is being processed by the carrier.
<div class="note note">
<span class="notetitle">Note:</span>
<ul>
<li>A seller can create a new shipment for an order while <span class="keyword parmname">Status</span>=RefundPending for a canceled shipment.</li>
<li>After a label refund is requested by calling the <span class="keyword apiname">CancelShipment</span> operation, the order status of the order remains &quot;Shipped&quot;.</li>
</ul>
</div></td>
</tr>
<tr class="odd">
<td>RefundRejected</td>
<td>The label refund request was rejected by the carrier. A refund request is rejected for either of the following reasons:
<ul>
<li>The cancellation window has expired. <span class="ph">Cancellation policies vary by carrier. For more information about carrier cancellation policies, see the Seller Central Help.</span>.</li>
<li>The carrier has already accepted the shipment for delivery.</li>
</ul></td>
</tr>
<tr class="even">
<td>RefundApplied</td>
<td>The refund has been approved and credited to the seller's account.</td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

</div>

<div id="ShipmentRequestDetails" class="topic reference nested1">

## ShipmentRequestDetails

<div class="body refbody">

<span class="ph">Shipment information required for requesting shipping
service offers or for creating a shipment.</span>

<div id="ShipmentRequestDetails__DatatypeContent" class="section">

### ShipmentRequestDetails elements

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
<td><span class="keyword parmname">AmazonOrderId</span></td>
<td>An Amazon-defined order identifier in 3-7-7 format.</td>
<td>Yes</td>
<td>Maximum: 50 characters.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">SellerOrderId</span></td>
<td>A seller-defined order identifier.</td>
<td>No</td>
<td>Maximum: 64 characters.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">ItemList</span></td>
<td>A list of items to be included in a shipment.</td>
<td>Yes</td>
<td>Type: List of <a href="MerchFulfill_Datatypes.md#Item" class="xref" title="An Amazon order item identifier and a quantity.">Item</a></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">ShipFromAddress</span></td>
<td>The address from which the shipment ships.</td>
<td>Yes</td>
<td>Type: <a href="MerchFulfill_Datatypes.md#Address" class="xref" title="Postal address information.">Address</a></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">PackageDimensions</span></td>
<td>The package dimensions.</td>
<td>Yes</td>
<td>Type: <a href="MerchFulfill_Datatypes.md#PackageDimensions" class="xref" title="The dimensions of a package contained in a shipment.">PackageDimensions</a></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">Weight</span></td>
<td>The package weight.</td>
<td>Yes</td>
<td>Type: <a href="MerchFulfill_Datatypes.md#Weight" class="xref" title="The weight value and unit of measurement.">Weight</a></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">MustArriveByDate</span></td>
<td>The date by which the package must arrive to keep the promise to the customer, in <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>.
<p>If <span class="keyword parmname">MustArriveByDate</span> is specified, only shipping service offers that can be delivered by that date are returned.</p></td>
<td>No</td>
<td><span class="ph">Type: xs:dateTime</span></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">ShipDate</span></td>
<td>When used in a request, this is the date that the seller wants to ship the package. When used in a response, this is the date that the package can be shipped by the indicated method.</td>
<td>No</td>
<td><span class="ph">Type: xs:dateTime</span></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">ShippingServiceOptions</span></td>
<td>Extra services offered by the carrier.</td>
<td>Yes</td>
<td>Type: <a href="MerchFulfill_Datatypes.md#ShippingServiceOptions" class="xref" title="Extra services provided by a carrier.">ShippingServiceOptions</a></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">LabelCustomization</span></td>
<td>Label customization options.</td>
<td>No</td>
<td>Type: <a href="MerchFulfill_Datatypes.md#LabelCustomization" class="xref" title="Custom text for shipping labels.">LabelCustomization</a></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="ShippingService" class="topic reference nested1">

## ShippingService

<div class="body refbody">

<span class="ph">A shipping service offer made by a carrier.</span>

<div id="ShippingService__DatatypeContent" class="section">

### ShippingService elements

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
<td><span class="keyword parmname">ShippingServiceName</span></td>
<td><span class="ph">A plain text representation of a carrier's shipping service. For example, &quot;UPS Ground&quot; or &quot;FedEx Standard Overnight&quot;.</span></td>
<td>Yes</td>
<td><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">CarrierName</span></td>
<td>The name of the carrier.</td>
<td>Yes</td>
<td><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">ShippingServiceId</span></td>
<td><span class="ph">An Amazon-defined shipping service identifier. <span class="ph">For definitions, see <a href="../merch_fulfill/MerchFulfill_Overview.md#Terminology" class="xref">Terminology</a>.</span></span></td>
<td>Yes</td>
<td><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">ShippingServiceOfferId</span></td>
<td><span class="ph">An Amazon-defined shipping service offer identifier. <span class="ph">For definitions, see <a href="../merch_fulfill/MerchFulfill_Overview.md#Terminology" class="xref">Terminology</a>.</span></span></td>
<td>Yes</td>
<td><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">ShipDate</span></td>
<td>The date that the carrier will ship the package.</td>
<td>Yes</td>
<td><span class="ph">Type: xs:dateTime</span></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">EarliestEstimatedDeliveryDate</span></td>
<td>The earliest date by which the shipment will be delivered.</td>
<td>No</td>
<td><span class="ph">Type: xs:dateTime</span></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">LatestEstimatedDeliveryDate</span></td>
<td>The latest date by which the shipment will be delivered.</td>
<td>No</td>
<td><span class="ph">Type: xs:dateTime</span></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">Rate</span></td>
<td>The amount that the carrier will charge for the shipment.</td>
<td>Yes</td>
<td>Type: <a href="MerchFulfill_Datatypes.md#CurrencyAmount" class="xref" title="Currency type and amount.">CurrencyAmount</a></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">ShippingServiceOptions</span></td>
<td>Extra services offered by the carrier.</td>
<td>Yes</td>
<td>Type: <a href="MerchFulfill_Datatypes.md#ShippingServiceOptions" class="xref" title="Extra services provided by a carrier.">ShippingServiceOptions</a></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">AvailableLabelFormats</span></td>
<td>The available label formats for a carrier.</td>
<td>No</td>
<td>May include <span class="keyword parmname">PNG</span>, <span class="keyword parmname">PDF</span>, and <span class="keyword parmname">ZPL203</span>.
<p><span class="ph">Type: List of xs:string</span></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="ShippingServiceOptions" class="topic reference nested1">

## ShippingServiceOptions

<div class="body refbody">

<span class="ph">Extra services provided by a carrier.</span>

<div id="ShippingServiceOptions__DatatypeContent" class="section">

### ShippingServiceOptions elements

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
<td><span class="keyword parmname">DeliveryExperience</span></td>
<td>The delivery confirmation level.</td>
<td>Yes</td>
<td><span class="keyword parmname">DeliveryExperience</span> values:
<ul>
<li>DeliveryConfirmationWithAdultSignature - Delivery confirmation with adult signature.</li>
<li>DeliveryConfirmationWithSignature - Delivery confirmation with signature. Required for DPD (UK).</li>
<li>DeliveryConfirmationWithoutSignature - Delivery confirmation without signature.</li>
<li>NoTracking - No delivery confirmation.</li>
</ul>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">DeclaredValue</span></td>
<td>The declared value of the shipment. The carrier uses this value to determine how much to insure the shipment for. If <span class="keyword parmname">DeclaredValue</span> is greater than the carrier's minimum insurance amount, the seller is charged for the additional insurance as determined by the carrier. <span class="ph">For information about optional insurance coverage, see the Seller Central Help (<a href="https://sellercentral.amazon.co.uk/gp/help/200204080" class="xref">UK</a>) (<a href="https://sellercentral.amazon.com/gp/help/200204080" class="xref">US</a>).</span></td>
<td>No</td>
<td>Default: 0
<p>Type: <a href="MerchFulfill_Datatypes.md#CurrencyAmount" class="xref" title="Currency type and amount.">CurrencyAmount</a></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">CarrierWillPickUp</span></td>
<td>Indicates whether the carrier will pick up the package.
<div class="note note">
<span class="notetitle">Note:</span> Scheduled carrier pickup is available only using Dynamex (US), DPD (UK), and Royal Mail (UK).
</div></td>
<td>Yes</td>
<td>true if the carrier will pick up the package, otherwise false.
<p><span class="ph">Type: xs:boolean</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">LabelFormat</span></td>
<td>The seller's preferred label format.
<div class="p">
<div class="note note">
<span class="notetitle">Note:</span> Not all <span class="keyword parmname">LabelFormat</span> values are supported by all carriers. Specifying a <span class="keyword parmname">LabelFormat</span> value that is not supported by a carrier will filter out shipping service offers from that carrier.
</div>
</div></td>
<td>No</td>
<td>Must match one of the <span class="keyword parmname">AvailableLabelFormats</span> returned by <a href="MerchFulfill_GetEligibleShippingServices.md" class="xref" title="Returns a list of shipping service offers.">GetEligibleShippingServices</a>.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="TemporarilyUnavailableCarrier" class="topic reference nested1">

## TemporarilyUnavailableCarrier

<div class="body refbody">

<span class="ph">A carrier who is temporarily unavailable, most likely
due to a service outage experienced by the
carrier.</span>

<div id="TemporarilyUnavailableCarrier__DatatypeContent" class="section">

### TemporarilyUnavailableCarrier elements

<div class="tablenoborder">

| Name                                              | Description              | Required | Values                                  |
| ------------------------------------------------- | ------------------------ | -------- | --------------------------------------- |
| <span class="keyword parmname">CarrierName</span> | The name of the carrier. | Yes      | <span class="ph">Type: xs:string</span> |

</div>

</div>

</div>

</div>

<div id="TermsAndConditionsNotAcceptedCarrier" class="topic reference nested1">

## TermsAndConditionsNotAcceptedCarrier

<div class="body refbody">

<span class="ph">A carrier whose terms and conditions have not been
accepted by the
seller.</span>

<div class="section">

### TermsAndConditionsNotAcceptedCarrier elements

<div class="tablenoborder">

| Name                                              | Description              | Required | Values                                  |
| ------------------------------------------------- | ------------------------ | -------- | --------------------------------------- |
| <span class="keyword parmname">CarrierName</span> | The name of the carrier. | Yes      | <span class="ph">Type: xs:string</span> |

</div>

</div>

</div>

</div>

<div id="TransparencyCodeList" class="topic reference nested1">

## TransparencyCodeList

<div class="body refbody">

<span class="ph">List of Transparency
codes.</span>

<div class="section">

### TransparencyCodeList elements

<div class="tablenoborder">

| Name                                                   | Description                                     | Required | Values                                  |
| ------------------------------------------------------ | ----------------------------------------------- | -------- | --------------------------------------- |
| <span class="keyword parmname">TransparencyCode</span> | The Transparency code associated with the item. | No       | <span class="ph">Type: xs:string</span> |

</div>

</div>

</div>

</div>

<div id="Weight" class="topic reference nested1">

## Weight

<div class="body refbody">

<span class="ph">The weight value and unit of measurement.</span>

<div id="Weight__DatatypeContent" class="section">

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
<td>The weight of the object.</td>
<td>Yes</td>
<td><span class="ph">Type: xs:decimal</span></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">Unit</span></td>
<td>The unit of measurement for weight.</td>
<td>Yes</td>
<td><span class="keyword parmname">Unit</span> values: oz (for ounces) or g (for grams)
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

[Merchant Fulfillment API](../merch_fulfill/MerchFulfill_Overview.md)

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
