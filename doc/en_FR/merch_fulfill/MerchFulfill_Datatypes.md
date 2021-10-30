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

<div id="MerchFulfill_Datatypes" class="nested0">

# Merchant Fulfillment Datatypes

<div class="body">

The following datatypes are used in the <span class="ph">Amazon
Marketplace Web Service (Amazon MWS)</span> <span class="ph">Merchant
Fulfillment service</span>:

<div class="tablenoborder">

| Datatype                                                                                                                                                                                                                                       | Description                                                                                                                                                                                                                                       |
|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| <a href="MerchFulfill_Datatypes.md#AdditionalInputs" class="xref" title="Contains the SellerInputDefinition element (a map of additional seller inputs) and the AdditionalInputFieldName element (the key to the map).">AdditionalInputs</a> | <span class="ph">Contains the <span class="keyword parmname">SellerInputDefinition</span> element (a map of additional seller inputs) and the <span class="keyword parmname">AdditionalInputFieldName</span> element (the key to the map).</span> |
| <a href="MerchFulfill_Datatypes.md#Address" class="xref" title="Postal address information.">Address</a>                                                                                                                                     | <span class="ph">Postal address information.</span>                                                                                                                                                                                               |
| <a href="MerchFulfill_Datatypes.md#CurrencyAmount" class="xref" title="Currency type and amount.">CurrencyAmount</a>                                                                                                                         | <span class="ph">Currency type and amount.</span>                                                                                                                                                                                                 |
| <a href="MerchFulfill_Datatypes.md#FileContents" class="xref" title="Document data and checksum.">FileContents</a>                                                                                                                           | <span class="ph">Document data and checksum.</span>                                                                                                                                                                                               |
| <a href="MerchFulfill_Datatypes.md#HazmatType" class="xref" title="Hazardous materials options for a package. Consult the terms and conditions for each carrier for more information on hazardous materials.">HazmatType</a>                 | <span class="ph">Hazardous materials options for a package.</span>                                                                                                                                                                                |
| <a href="MerchFulfill_Datatypes.md#Item" class="xref" title="An Amazon order item identifier and a quantity.">Item</a>                                                                                                                       | <span class="ph">An Amazon order item identifier and a quantity.</span>                                                                                                                                                                           |
| <a href="MerchFulfill_Datatypes.md#ItemLevelFields" class="xref" title="A list of additional seller inputs (at the item level), returned by the GetAdditionalSellerInputs operation.">ItemLevelFieldsList</a>                                | <span class="ph">A list of additional seller inputs (at the item level), returned by the <span class="keyword apiname">GetAdditionalSellerInputs</span> operation.</span>                                                                         |
| <a href="MerchFulfill_Datatypes.md#ItemLevelSellerInputs" class="xref" title="A list of additional seller inputs (at the item level), used as input to the CreateShipment operation.">ItemLevelSellerInputsList</a>                          | <span class="ph">A list of additional seller inputs (at the item level), used as input to the <span class="keyword apiname">CreateShipment</span> operation.</span>                                                                               |
| <a href="MerchFulfill_Datatypes.md#Label" class="xref" title="Data for creating a shipping label and dimensions for printing the label.">Label</a>                                                                                           | <span class="ph">Data for creating a shipping label and dimensions for printing the label.</span>                                                                                                                                                 |
| <a href="MerchFulfill_Datatypes.md#LabelCustomization" class="xref" title="Custom text for shipping labels.">LabelCustomization</a>                                                                                                          | <span class="ph">Custom text for shipping labels.</span>                                                                                                                                                                                          |
| <a href="MerchFulfill_Datatypes.md#LabelDimensions" class="xref" title="Dimensions for printing a shipping label.">LabelDimensions</a>                                                                                                       | <span class="ph">Dimensions for printing a shipping label.</span>                                                                                                                                                                                 |
| <a href="MerchFulfill_Datatypes.md#PackageDimensions" class="xref" title="The dimensions of a package contained in a shipment.">PackageDimensions</a>                                                                                        | <span class="ph">The dimensions of a package contained in a shipment.</span>                                                                                                                                                                      |
| <a href="MerchFulfill_Datatypes.md#RejectedShippingService" class="xref" title="A shipping service that is ineligible based on the specified ShipmentRequestDetails information.">RejectedShippingService</a>                                | <span class="ph">A shipping service that is ineligible based on the specified <span class="keyword parmname">ShipmentRequestDetails</span> information.</span>                                                                                    |
| <a href="MerchFulfill_Datatypes.md#SellerInputDefinition" class="xref" title="Defines the additional seller input that is required from the seller.">SellerInputDefinition</a>                                                               | <span class="ph">Defines the additional seller input that is required from the seller.</span>                                                                                                                                                     |
| <a href="MerchFulfill_Datatypes.md#Shipment" class="xref" title="The details of a shipment, including the shipment status.">Shipment</a>                                                                                                     | <span class="ph">The details of a shipment, including the shipment status.</span>                                                                                                                                                                 |
| <a href="MerchFulfill_Datatypes.md#ShipmentLevelFields" class="xref" title="A list of additional seller inputs (at the shipment level), used as input to the CreateShipment operation.">ShipmentLevelFields</a>                              | <span class="ph">A list of additional seller inputs (at the shipment level), used as input to the <span class="keyword apiname">CreateShipment</span> operation.</span>                                                                           |
| <a href="MerchFulfill_Datatypes.md#ShipmentLevelSellerInputs" class="xref" title="A list of additional seller inputs (at the shipment level), used as input to the CreateShipment operation.">ShipmentLevelSellerInputsList</a>              | <span class="ph">A list of additional seller inputs (at the shipment level), used as input to the <span class="keyword apiname">CreateShipment</span> operation.</span>                                                                           |
| <a href="MerchFulfill_Datatypes.md#ShipmentRequestDetails" class="xref" title="Shipment information required for requesting shipping service offers or for creating a shipment.">ShipmentRequestDetails</a>                                  | <span class="ph">Shipment information required for requesting shipping service offers or for creating a shipment.</span>                                                                                                                          |
| <a href="MerchFulfill_Datatypes.md#ShippingOfferingFilter" class="xref" title="Specifies particular requirements for eligible shipping service offers.">ShippingOfferingFilter</a>                                                           | <span class="ph">Specifies particular requirements for eligible shipping service offers.</span>                                                                                                                                                   |
| <a href="MerchFulfill_Datatypes.md#ShippingService" class="xref" title="A shipping service offer made by a carrier.">ShippingService</a>                                                                                                     | <span class="ph">A shipping service offer made by a carrier.</span>                                                                                                                                                                               |
| <a href="MerchFulfill_Datatypes.md#ShippingServiceOptions" class="xref" title="Extra services provided by a carrier.">ShippingServiceOptions</a>                                                                                             | <span class="ph">Extra services provided by a carrier.</span>                                                                                                                                                                                     |
| <a href="MerchFulfill_Datatypes.md#TemporarilyUnavailableCarrier" class="xref" title="A carrier who is temporarily unavailable, most likely due to a service outage experienced by the carrier.">TemporarilyUnavailableCarrier</a>           | <span class="ph">A carrier who is temporarily unavailable, most likely due to a service outage experienced by the carrier.</span>                                                                                                                 |
| <a href="MerchFulfill_Datatypes.md#TermsAndConditionsNotAcceptedCarrier" class="xref" title="A carrier whose terms and conditions have not been accepted by the seller.">TermsAndConditionsNotAcceptedCarrier</a>                            | <span class="ph">A carrier whose terms and conditions have not been accepted by the seller.</span>                                                                                                                                                |
| <a href="MerchFulfill_Datatypes.md#TransparencyCodeList" class="xref" title="List of Transparency codes.">TransparencyCodeList</a>                                                                                                           | <span class="ph">List of Transparency codes.</span>                                                                                                                                                                                               |
| <a href="MerchFulfill_Datatypes.md#Weight" class="xref" title="The weight value and unit of measurement.">Weight</a>                                                                                                                         | <span class="ph">The weight value and unit of measurement.</span>                                                                                                                                                                                 |

</div>

</div>

<div id="AdditionalInputs" class="topic reference nested1">

## AdditionalInputs

<div class="body refbody">

<span class="ph">Contains the <span
class="keyword parmname">SellerInputDefinition</span> element (a map of
additional seller inputs) and the <span
class="keyword parmname">AdditionalInputFieldName</span> element (the
key to the map).</span>

<div class="section">

### AdditionalInputs elements

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
<th id="d168449e736" class="entry" data-valign="top" width="34.18367346938776%">Name</th>
<th id="d168449e739" class="entry" data-valign="top" width="25.510204081632654%">Description</th>
<th id="d168449e742" class="entry" data-valign="top" width="12.755102040816327%">Required</th>
<th id="d168449e745" class="entry" data-valign="top" width="27.551020408163268%">Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d168449e736 "><span class="keyword parmname">AdditionalInputFieldName</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d168449e739 ">The name of the additional seller input. Get this value from a <span class="keyword parmname">ShipmentLevelFields</span> response member returned by the <a href="MerchFulfill_GetAdditionalSellerInputs.md" class="xref" title="Returns a list of additional seller inputs that are required from the seller to purchase the shipping service that you specify.">GetAdditionalSellerInputs</a> operation.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d168449e742 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d168449e745 ">Example values: <var class="keyword varname">NON_DELIVERABLE_INSTRUCTIONS</var>, <var class="keyword varname">SENDER_ADDRESS_TRANSLATED</var>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d168449e736 "><span class="keyword parmname">SellerInputDefinition</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d168449e739 "><span class="ph">Defines the additional seller input that is required from the seller.</span></td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d168449e742 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d168449e745 ">Type: <a href="MerchFulfill_Datatypes.md#SellerInputDefinition" class="xref" title="Defines the additional seller input that is required from the seller.">SellerInputDefinition</a></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="Address" class="topic reference nested1">

## Address

<div class="body refbody">

<span class="ph">Postal address information.</span>

<div class="section">

### Address elements

<div class="tablenoborder">

<table id="Address__RequestParametersTable" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d168449e883" class="entry" data-valign="top" width="34.18367346938776%">Name</th>
<th id="d168449e886" class="entry" data-valign="top" width="25.510204081632654%">Description</th>
<th id="d168449e889" class="entry" data-valign="top" width="12.755102040816327%">Required</th>
<th id="d168449e892" class="entry" data-valign="top" width="27.551020408163268%">Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d168449e883 "><span class="keyword parmname">Name</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d168449e886 ">The name or business name.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d168449e889 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d168449e892 ">Maximum: 30 characters.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d168449e883 "><span class="keyword parmname">AddressLine1</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d168449e886 ">The street address information.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d168449e889 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d168449e892 ">Maximum: 180 characters.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d168449e883 "><span class="keyword parmname">AddressLine2</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d168449e886 ">Additional street address information.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d168449e889 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d168449e892 ">Maximum: 60 characters.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d168449e883 "><span class="keyword parmname">AddressLine3</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d168449e886 ">Additional street address information.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d168449e889 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d168449e892 ">Maximum: 60 characters.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d168449e883 "><span class="keyword parmname">DistrictOrCounty</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d168449e886 ">The district or county.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d168449e889 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d168449e892 ">Maximum: 30 characters.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d168449e883 "><span class="keyword parmname">Email</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d168449e886 ">The email address.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d168449e889 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d168449e892 ">Maximum: 256 characters.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d168449e883 "><span class="keyword parmname">City</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d168449e886 ">The city.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d168449e889 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d168449e892 ">Maximum: 30 characters.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d168449e883 "><span class="keyword parmname">StateOrProvinceCode</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d168449e886 ">The state or province code.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d168449e889 ">No. Required in the Canada, US, and UK marketplaces. Also required for shipments originating from China.</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d168449e892 ">Maximum: 30 characters.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d168449e883 "><span class="keyword parmname">PostalCode</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d168449e886 ">The zip code or postal code.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d168449e889 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d168449e892 ">Maximum: 30 characters.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d168449e883 "><span class="keyword parmname">CountryCode</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d168449e886 ">The country code.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d168449e889 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d168449e892 "><span class="ph">A two-character country code, in ISO 3166-1 alpha-2 format.</span>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d168449e883 "><span class="keyword parmname">Phone</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d168449e886 ">The phone number.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d168449e889 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d168449e892 ">Maximum: 30 characters.
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

<table id="CurrencyAmount__RequestParametersTable" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d168449e1197" class="entry" data-valign="top" width="34.18367346938776%">Name</th>
<th id="d168449e1200" class="entry" data-valign="top" width="25.510204081632654%">Description</th>
<th id="d168449e1203" class="entry" data-valign="top" width="12.755102040816327%">Required</th>
<th id="d168449e1206" class="entry" data-valign="top" width="27.551020408163268%">Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d168449e1197 "><span class="keyword parmname">CurrencyCode</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d168449e1200 ">Three-digit currency code.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d168449e1203 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d168449e1206 ">In <span class="ph"> <a href="../dev_guide/DG_ISO4217.md" class="xref">ISO 4217 format</a> </span>.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d168449e1197 "><span class="keyword parmname">Amount</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d168449e1200 ">The currency amount.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d168449e1203 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d168449e1206 "><span class="ph">Type: xs:decimal</span></td>
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

<table id="FileContents__RequestParametersTable" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d168449e1328" class="entry" data-valign="top" width="34.18367346938776%">Name</th>
<th id="d168449e1331" class="entry" data-valign="top" width="25.510204081632654%">Description</th>
<th id="d168449e1334" class="entry" data-valign="top" width="12.755102040816327%">Required</th>
<th id="d168449e1337" class="entry" data-valign="top" width="27.551020408163268%">Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d168449e1328 "><span class="keyword parmname">Contents</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d168449e1331 ">Data for printing labels, in the form of a Base64-encoded, GZip-compressed string.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d168449e1334 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d168449e1337 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d168449e1328 "><span class="keyword parmname">FileType</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d168449e1331 ">The file type for a label.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d168449e1334 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d168449e1337 "><span class="ph">Type: xs:string</span>
<div class="p">
Valid values:
<ul>
<li>application/pdf</li>
<li>application/zpl</li>
<li>image/png</li>
</ul>
</div></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d168449e1328 "><span class="keyword parmname">Checksum</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d168449e1331 ">An MD5 hash to validate the PDF document data, in the form of a Base64-encoded string.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d168449e1334 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d168449e1337 "><span class="ph">Type: xs:string</span></td>
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
on hazardous materials.

<div id="HazmatType__DatatypeContent" class="section">

### HazmatType enumeration

<div class="tablenoborder">

| Name       | Description                                                     |
|------------|-----------------------------------------------------------------|
| `None`     | This package does not contain hazardous material.               |
| `LQHazmat` | This package contains limited quantities of hazardous material. |

</div>

</div>

</div>

</div>

<div id="Item" class="topic reference nested1">

## Item

<div class="body refbody">

<span class="ph">An Amazon order item identifier and a quantity.</span>

<div id="Item__DatatypeContent" class="section">

### Item elements

<div class="tablenoborder">

| Name                                                            | Description                                                                                                                                                         | Required | Values                                                                                                                                                                                                                      |
|-----------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| <span class="keyword parmname">OrderItemId</span>               | An Amazon-defined identifier for an individual item in an order. Used in the XML response to an order query request (Order API/Order XML).                          | Yes      | <span class="ph">Type: xs:string</span>                                                                                                                                                                                     |
| <span class="keyword parmname">Quantity</span>                  | The number of items.                                                                                                                                                | Yes      | <span class="ph">Type: xs:int</span>                                                                                                                                                                                        |
| <span class="keyword parmname">ItemWeight</span>                | The weight of the item.                                                                                                                                             | No       | Type: <a href="MerchFulfill_Datatypes.md#Weight" class="xref" title="The weight value and unit of measurement.">Weight</a>                                                                                                |
| <span class="keyword parmname">ItemDescription</span>           | The description of the item.                                                                                                                                        | No       | <span class="ph">Type: xs:string</span>                                                                                                                                                                                     |
| <span class="keyword parmname">TransparencyCodeList</span>      | <span class="ph">List of Transparency codes.</span>                                                                                                                 | No       | Type: <a href="MerchFulfill_Datatypes.md#TransparencyCodeList" class="xref" title="List of Transparency codes.">TransparencyCodeList</a>                                                                                  |
| <span class="keyword parmname">ItemLevelSellerInputsList</span> | <span class="ph">A list of additional seller inputs (at the item level), used as input to the <span class="keyword apiname">CreateShipment</span> operation.</span> | No       | Type: <a href="MerchFulfill_Datatypes.md#ItemLevelSellerInputs" class="xref" title="A list of additional seller inputs (at the item level), used as input to the CreateShipment operation.">ItemLevelSellerInputsList</a> |

</div>

</div>

</div>

</div>

<div id="ItemLevelFields" class="topic reference nested1">

## ItemLevelFieldsList

<div class="body refbody">

<span class="ph">A list of additional seller inputs (at the item level),
returned by the <span
class="keyword apiname">GetAdditionalSellerInputs</span>
operation.</span>

<div id="ItemLevelFields__DatatypeContent" class="section">

### ItemLevelFieldsList elements

<div class="tablenoborder">

| Name                                                   | Description                                                                                                                                                                                                                                       | Required | Values                                                                                                                                                                                                                                               |
|--------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| <span class="keyword parmname">Asin</span>             | The ASIN of the item for which you are getting additional seller inputs.                                                                                                                                                                          | Yes      | <span class="ph">Type: xs:string</span>                                                                                                                                                                                                              |
| <span class="keyword parmname">AdditionalInputs</span> | <span class="ph">Contains the <span class="keyword parmname">SellerInputDefinition</span> element (a map of additional seller inputs) and the <span class="keyword parmname">AdditionalInputFieldName</span> element (the key to the map).</span> | Yes      | Type: <a href="MerchFulfill_Datatypes.md#AdditionalInputs" class="xref" title="Contains the SellerInputDefinition element (a map of additional seller inputs) and the AdditionalInputFieldName element (the key to the map).">AdditionalInputs</a> |

</div>

</div>

</div>

</div>

<div id="ItemLevelSellerInputs" class="topic reference nested1">

## ItemLevelSellerInputsList

<div class="body refbody">

<span class="ph">A list of additional seller inputs (at the item level),
used as input to the <span class="keyword apiname">CreateShipment</span>
operation.</span>

<div id="ItemLevelSellerInputs__DatatypeContent" class="section">

### ItemLevelSellerInputsList elements

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
<th id="d168449e1970" class="entry" data-valign="top" width="17.99126637554585%">Name</th>
<th id="d168449e1973" class="entry" data-valign="top" width="10.480349344978164%">Description</th>
<th id="d168449e1976" class="entry" data-valign="top" width="8.73362445414847%">Required</th>
<th id="d168449e1979" class="entry" data-valign="top" width="40.262008733624455%">Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="17.99126637554585%" headers="d168449e1970 "><span class="keyword parmname">AdditionalSellerInputs</span></td>
<td class="entry" data-valign="top" width="10.480349344978164%" headers="d168449e1973 ">Contains additional seller input information.</td>
<td class="entry" data-valign="top" width="8.73362445414847%" headers="d168449e1976 ">Yes</td>
<td class="entry" data-valign="top" width="40.262008733624455%" headers="d168449e1979 "><span class="keyword parmname">AdditionalSellerInputs</span> contains these elements:
<ul>
<li><span class="keyword parmname">AdditionalInputFieldName</span> - The name of the additional seller input. Example values: <var class="keyword varname">HS_CODE</var>. Get this value from an <span class="keyword parmname">AdditionalInputs</span> response member returned by the <a href="MerchFulfill_GetAdditionalSellerInputs.md" class="xref" title="Returns a list of additional seller inputs that are required from the seller to purchase the shipping service that you specify.">GetAdditionalSellerInputs</a> operation.</li>
<li><strong>AdditionalSellerInput</strong> - Additional seller input information. <strong>AdditionalSellerInput</strong> contains these elements:
<ul>
<li><span class="keyword parmname">DataType</span> - The type of the additional seller input. Values: <var class="keyword varname">String</var>, <var class="keyword varname">Boolean</var>, <var class="keyword varname">Integer</var>, <var class="keyword varname">Timestamp</var>, <var class="keyword varname">Address</var>, <var class="keyword varname">Weight</var>, <var class="keyword varname">Dimension</var>, <var class="keyword varname">Currency</var>. Get the <span class="keyword parmname">DataType</span> value from an <span class="keyword parmname">SellerInputDefinition</span> element returned by the <a href="MerchFulfill_GetAdditionalSellerInputs.md" class="xref" title="Returns a list of additional seller inputs that are required from the seller to purchase the shipping service that you specify.">GetAdditionalSellerInputs</a> operation.</li>
</ul>
<ul>
<li><span class="keyword parmname">ValueAs[DataType]</span> (where [DataType] matches the value of the <span class="keyword parmname">DataType</span> element) - The value of the additional seller input. For syntax requirements, see the <span class="keyword parmname">Constraints</span> element that is associated with this <span class="keyword parmname">ValueAs[DataType]</span>. Example values: <var class="keyword varname">ValueAsString</var> (<span class="ph">Type: xs:string</span>), <var class="keyword varname">ValueAsCurrency</var> (Type: <a href="MerchFulfill_Datatypes.md#CurrencyAmount" class="xref" title="Currency type and amount.">CurrencyAmount</a>), <var class="keyword varname">ValueAsWeight</var> (Type: <a href="MerchFulfill_Datatypes.md#Weight" class="xref" title="The weight value and unit of measurement.">Weight</a>). Get these values from the seller.</li>
</ul></li>
</ul></td>
</tr>
</tbody>
</table>

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

<table id="Label__RequestParametersTable" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d168449e2197" class="entry" data-valign="top" width="34.18367346938776%">Name</th>
<th id="d168449e2200" class="entry" data-valign="top" width="25.510204081632654%">Description</th>
<th id="d168449e2203" class="entry" data-valign="top" width="12.755102040816327%">Required</th>
<th id="d168449e2206" class="entry" data-valign="top" width="27.551020408163268%">Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d168449e2197 "><span class="keyword parmname">CustomTextForLabel</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d168449e2200 ">Custom text to print on the label.
<div class="note note">
<span class="notetitle">Note:</span> Custom text is only included on labels that are in ZPL format (ZPL203). FedEx does not support <span class="keyword parmname">CustomTextForLabel</span>.
</div></td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d168449e2203 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d168449e2206 ">Maximum: 14 characters
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d168449e2197 "><span class="keyword parmname">Dimensions</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d168449e2200 "><span class="ph">Dimensions for printing a shipping label.</span></td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d168449e2203 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d168449e2206 ">Type: <a href="MerchFulfill_Datatypes.md#LabelDimensions" class="xref" title="Dimensions for printing a shipping label.">LabelDimensions</a></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d168449e2197 "><span class="keyword parmname">FileContents</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d168449e2200 "><span class="ph">Document data and checksum.</span></td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d168449e2203 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d168449e2206 ">Type: <a href="MerchFulfill_Datatypes.md#FileContents" class="xref" title="Document data and checksum.">FileContents</a></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d168449e2197 "><span class="keyword parmname">LabelFormat</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d168449e2200 ">The label format.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d168449e2203 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d168449e2206 ">Must match one of the <span class="keyword parmname">AvailableLabelFormats</span> returned by <a href="MerchFulfill_GetEligibleShippingServices.md" class="xref" title="Returns a list of shipping service offers.">GetEligibleShippingServices</a>.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d168449e2197 "><span class="keyword parmname">StandardIdForLabel</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d168449e2200 ">The type of standard identifier to print on the label.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d168449e2203 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d168449e2206 "><span class="keyword parmname">StandardIdForLabel</span> values: <var class="keyword varname">AmazonOrderId</var>.
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

<table id="LabelCustomization__RequestParametersTable" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d168449e2417" class="entry" data-valign="top" width="34.18367346938776%">Name</th>
<th id="d168449e2420" class="entry" data-valign="top" width="25.510204081632654%">Description</th>
<th id="d168449e2423" class="entry" data-valign="top" width="12.755102040816327%">Required</th>
<th id="d168449e2426" class="entry" data-valign="top" width="27.551020408163268%">Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d168449e2417 "><span class="keyword parmname">CustomTextForLabel</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d168449e2420 ">Custom text to print on the label.
<div class="note note">
<span class="notetitle">Note:</span> Custom text is only included on labels that are in ZPL format (ZPL203). FedEx does not support <span class="keyword parmname">CustomTextForLabel</span>.
</div></td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d168449e2423 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d168449e2426 ">Maximum: 14 characters
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d168449e2417 "><span class="keyword parmname">StandardIdForLabel</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d168449e2420 ">The type of standard identifier to print on the label.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d168449e2423 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d168449e2426 "><span class="keyword parmname">StandardIdForLabel</span> values: <var class="keyword varname">AmazonOrderId</var>.
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

<table id="LabelDimensions__RequestParametersTable" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d168449e2552" class="entry" data-valign="top" width="34.18367346938776%">Name</th>
<th id="d168449e2555" class="entry" data-valign="top" width="25.510204081632654%">Description</th>
<th id="d168449e2558" class="entry" data-valign="top" width="12.755102040816327%">Required</th>
<th id="d168449e2561" class="entry" data-valign="top" width="27.551020408163268%">Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d168449e2552 "><span class="keyword parmname">Length</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d168449e2555 ">The length dimension.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d168449e2558 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d168449e2561 ">A decimal greater than zero.
<p><span class="ph">Type: xs:decimal</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d168449e2552 "><span class="keyword parmname">Width</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d168449e2555 ">The width dimension.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d168449e2558 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d168449e2561 ">A decimal greater than zero.
<p><span class="ph">Type: xs:decimal</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d168449e2552 "><span class="keyword parmname">Unit</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d168449e2555 ">The unit of measurement.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d168449e2558 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d168449e2561 "><span class="keyword parmname">Unit</span> values: <var class="keyword varname">inches</var> or <var class="keyword varname">centimeters</var>
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

<table id="PackageDimensions__RequestParametersTable" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d168449e2707" class="entry" data-valign="top" width="26.355140186915886%">Name</th>
<th id="d168449e2710" class="entry" data-valign="top" width="18.691588785046733%">Description</th>
<th id="d168449e2713" class="entry" data-valign="top" width="25.981308411214954%">Required</th>
<th id="d168449e2716" class="entry" data-valign="top" width="28.971962616822434%">Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="26.355140186915886%" headers="d168449e2707 "><span class="keyword parmname">Length</span></td>
<td class="entry" data-valign="top" width="18.691588785046733%" headers="d168449e2710 ">The length dimension.</td>
<td class="entry" data-valign="top" width="25.981308411214954%" headers="d168449e2713 ">No. If you don't specify the <span class="keyword parmname">PredefinedPackageDimensions</span> request parameter, you must specify the <span class="keyword parmname">Length</span> request parameter.</td>
<td class="entry" data-valign="top" width="28.971962616822434%" headers="d168449e2716 ">A decimal greater than zero.
<p><span class="ph">Type: xs:decimal</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="26.355140186915886%" headers="d168449e2707 "><span class="keyword parmname">Width</span></td>
<td class="entry" data-valign="top" width="18.691588785046733%" headers="d168449e2710 ">The width dimension.</td>
<td class="entry" data-valign="top" width="25.981308411214954%" headers="d168449e2713 ">No. If you don't specify the <span class="keyword parmname">PredefinedPackageDimensions</span> request parameter, you must specify the <span class="keyword parmname">Width</span> request parameter.</td>
<td class="entry" data-valign="top" width="28.971962616822434%" headers="d168449e2716 ">A decimal greater than zero.
<p><span class="ph">Type: xs:decimal</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="26.355140186915886%" headers="d168449e2707 "><span class="keyword parmname">Height</span></td>
<td class="entry" data-valign="top" width="18.691588785046733%" headers="d168449e2710 ">The height dimension.</td>
<td class="entry" data-valign="top" width="25.981308411214954%" headers="d168449e2713 ">No. If you don't specify the <span class="keyword parmname">PredefinedPackageDimensions</span> request parameter, you must specify the <span class="keyword parmname">Height</span> request parameter.</td>
<td class="entry" data-valign="top" width="28.971962616822434%" headers="d168449e2716 ">A decimal greater than zero.
<p><span class="ph">Type: xs:decimal</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="26.355140186915886%" headers="d168449e2707 "><span class="keyword parmname">Unit</span></td>
<td class="entry" data-valign="top" width="18.691588785046733%" headers="d168449e2710 ">The unit of measurement.</td>
<td class="entry" data-valign="top" width="25.981308411214954%" headers="d168449e2713 ">No. If you don't specify the <span class="keyword parmname">PredefinedPackageDimensions</span> request parameter, you must specify the <span class="keyword parmname">Unit</span> request parameter.</td>
<td class="entry" data-valign="top" width="28.971962616822434%" headers="d168449e2716 "><span class="keyword parmname">Unit</span> values: <var class="keyword varname">inches</var> or <var class="keyword varname">centimeters</var>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="26.355140186915886%" headers="d168449e2707 "><span class="keyword parmname">PredefinedPackageDimensions</span></td>
<td class="entry" data-valign="top" width="18.691588785046733%" headers="d168449e2710 ">A parcel token that specifies pre-defined package dimensions.</td>
<td class="entry" data-valign="top" width="25.981308411214954%" headers="d168449e2713 ">No</td>
<td class="entry" data-valign="top" width="28.971962616822434%" headers="d168449e2716 ">For <span class="keyword parmname">PredefinedPackageDimensions</span> values, see the <a href="MerchFulfill_PrePackDimenEnum.md" class="xref" title="An enumeration of predefined parcel tokens.">PredefinedPackageDimensions enumeration</a> table.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="RejectedShippingService" class="topic reference nested1">

## RejectedShippingService

<div class="body refbody">

<span class="ph">A shipping service that is ineligible based on the
specified <span class="keyword parmname">ShipmentRequestDetails</span>
information.</span>

<div id="RejectedShippingService__DatatypeContent" class="section">

### RejectedShippingService elements

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
<th id="d168449e2929" class="entry" data-valign="top" width="34.18367346938776%">Name</th>
<th id="d168449e2932" class="entry" data-valign="top" width="25.510204081632654%">Description</th>
<th id="d168449e2935" class="entry" data-valign="top" width="12.755102040816327%">Required</th>
<th id="d168449e2938" class="entry" data-valign="top" width="27.551020408163268%">Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d168449e2929 "><span class="keyword parmname">CarrierName</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d168449e2932 ">The name of the carrier.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d168449e2935 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d168449e2938 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d168449e2929 "><span class="keyword parmname">ShippingServiceId</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d168449e2932 "><span class="ph">An Amazon-defined shipping service identifier. <span class="ph">For definitions, see <a href="../merch_fulfill/MerchFulfill_Overview.md#Terminology" class="xref">Terminology</a>.</span></span></td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d168449e2935 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d168449e2938 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d168449e2929 "><span class="keyword parmname">RejectionReasonCode</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d168449e2932 ">An Amazon-defined reason code for why the shipping service is ineligible.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d168449e2935 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d168449e2938 ">Examples: <span class="keyword parmname">INELIGIBLE</span>, <span class="keyword parmname">SHIP_DATE_OUT_OF_RANGE</span>, <span class="keyword parmname">CARRIER_CANNOT_SHIP_TO_POBOX</span>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d168449e2929 "><span class="keyword parmname">RejectionReasonMessage</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d168449e2932 ">A message that explains why the shipping service is ineligible.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d168449e2935 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d168449e2938 ">Example: This ship method is not eligible for this order.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d168449e2929 "><span class="keyword parmname">ShippingServiceName</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d168449e2932 ">The name of the carrier's shipping service.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d168449e2935 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d168449e2938 ">Example: UPS Ground.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="SellerInputDefinition" class="topic reference nested1">

## SellerInputDefinition

<div class="body refbody">

<span class="ph">Defines the additional seller input that is required
from the seller.</span>

<div id="SellerInputDefinition__DatatypeContent" class="section">

### SellerInputDefinition elements

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
<th id="d168449e3126" class="entry" data-valign="top" width="34.18367346938776%">Name</th>
<th id="d168449e3129" class="entry" data-valign="top" width="25.510204081632654%">Description</th>
<th id="d168449e3132" class="entry" data-valign="top" width="12.755102040816327%">Required</th>
<th id="d168449e3135" class="entry" data-valign="top" width="27.551020408163268%">Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d168449e3126 "><span class="keyword parmname">IsRequired</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d168449e3129 "><var class="keyword varname">True</var> if this additional seller input is required when creating a shipment.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d168449e3132 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d168449e3135 "><span class="ph">Type: xs:boolean</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d168449e3126 "><span class="keyword parmname">DataType</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d168449e3129 ">The type of the additional seller input.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d168449e3132 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d168449e3135 "><span class="keyword parmname">DataType</span> values: <var class="keyword varname">String</var>, <var class="keyword varname">Boolean</var>, <var class="keyword varname">Integer</var>, <var class="keyword varname">Timestamp</var>, <var class="keyword varname">Address</var>, <var class="keyword varname">Weight</var>, <var class="keyword varname">Dimension</var>, <var class="keyword varname">Currency</var>.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d168449e3126 "><span class="keyword parmname">Constraints</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d168449e3129 ">Indicates the syntax requirements for the additional seller input.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d168449e3132 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d168449e3135 "><span class="keyword parmname">Constraints</span> elements:
<ul>
<li><span class="keyword parmname">ValidationRegEx</span></li>
<li><span class="keyword parmname">ValidationString</span></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d168449e3126 "><span class="keyword parmname">InputDisplayText</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d168449e3129 ">A label for the additional seller input.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d168449e3132 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d168449e3135 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d168449e3126 "><span class="keyword parmname">InputTarget</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d168449e3129 ">Indicates whether the additional seller input is at the item or shipment level.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d168449e3132 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d168449e3135 "><span class="keyword parmname">InputTarget</span> values: <var class="keyword varname">ITEM_LEVEL</var>, <var class="keyword varname">SHIPMENT_LEVEL</var>.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d168449e3126 "><span class="keyword parmname">StoredValue</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d168449e3129 ">Values stored by Amazon that you previously provided.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d168449e3132 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d168449e3135 "><span class="keyword parmname">StoredValue</span> elements:
<ul>
<li><span class="keyword parmname">DataType</span></li>
<li><span class="keyword parmname">ValueAsString</span></li>
<li><span class="keyword parmname">ValueAsBoolean</span></li>
<li><span class="keyword parmname">ValueAsInteger</span></li>
<li><span class="keyword parmname">ValueAsTimestamp</span></li>
<li><span class="keyword parmname">ValueAsAddress</span></li>
<li><span class="keyword parmname">ValueAsWeight</span></li>
<li><span class="keyword parmname">ValueAsDimension</span></li>
<li><span class="keyword parmname">ValueAsCurrency</span></li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d168449e3126 "><span class="keyword parmname">RestrictedSetValues</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d168449e3129 ">A set of fixed values for an additional seller input.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d168449e3132 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d168449e3135 "><span class="ph">Type: xs:string</span></td>
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

<table id="Shipment__RequestParametersTable" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d168449e3431" class="entry" data-valign="top" width="18.971428571428568%">Name</th>
<th id="d168449e3434" class="entry" data-valign="top" width="27.885714285714286%">Description</th>
<th id="d168449e3437" class="entry" data-valign="top" width="11.428571428571429%">Required</th>
<th id="d168449e3440" class="entry" data-valign="top" width="41.714285714285715%">Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="18.971428571428568%" headers="d168449e3431 "><span class="keyword parmname">ShipmentId</span></td>
<td class="entry" data-valign="top" width="27.885714285714286%" headers="d168449e3434 ">An Amazon-defined shipment identifier.</td>
<td class="entry" data-valign="top" width="11.428571428571429%" headers="d168449e3437 ">Yes</td>
<td class="entry" data-valign="top" width="41.714285714285715%" headers="d168449e3440 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="18.971428571428568%" headers="d168449e3431 "><span class="keyword parmname">AmazonOrderId</span></td>
<td class="entry" data-valign="top" width="27.885714285714286%" headers="d168449e3434 ">An Amazon-defined order identifier in 3-7-7 format.</td>
<td class="entry" data-valign="top" width="11.428571428571429%" headers="d168449e3437 ">Yes</td>
<td class="entry" data-valign="top" width="41.714285714285715%" headers="d168449e3440 ">Maximum: 50 characters.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="18.971428571428568%" headers="d168449e3431 "><span class="keyword parmname">SellerOrderId</span></td>
<td class="entry" data-valign="top" width="27.885714285714286%" headers="d168449e3434 ">A seller-defined order identifier.</td>
<td class="entry" data-valign="top" width="11.428571428571429%" headers="d168449e3437 ">No</td>
<td class="entry" data-valign="top" width="41.714285714285715%" headers="d168449e3440 ">Maximum: 64 characters.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="18.971428571428568%" headers="d168449e3431 "><span class="keyword parmname">ItemList</span></td>
<td class="entry" data-valign="top" width="27.885714285714286%" headers="d168449e3434 ">A list of items to be included in a shipment.</td>
<td class="entry" data-valign="top" width="11.428571428571429%" headers="d168449e3437 ">Yes</td>
<td class="entry" data-valign="top" width="41.714285714285715%" headers="d168449e3440 ">Type: List of <a href="MerchFulfill_Datatypes.md#Item" class="xref" title="An Amazon order item identifier and a quantity.">Item</a></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="18.971428571428568%" headers="d168449e3431 "><span class="keyword parmname">ShipFromAddress</span></td>
<td class="entry" data-valign="top" width="27.885714285714286%" headers="d168449e3434 ">The address from which the shipment ships.</td>
<td class="entry" data-valign="top" width="11.428571428571429%" headers="d168449e3437 ">Yes</td>
<td class="entry" data-valign="top" width="41.714285714285715%" headers="d168449e3440 ">Type: <a href="MerchFulfill_Datatypes.md#Address" class="xref" title="Postal address information.">Address</a></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="18.971428571428568%" headers="d168449e3431 "><span class="keyword parmname">ShipToAddress</span></td>
<td class="entry" data-valign="top" width="27.885714285714286%" headers="d168449e3434 ">The destination address of the shipment.</td>
<td class="entry" data-valign="top" width="11.428571428571429%" headers="d168449e3437 ">Yes</td>
<td class="entry" data-valign="top" width="41.714285714285715%" headers="d168449e3440 ">Type: <a href="MerchFulfill_Datatypes.md#Address" class="xref" title="Postal address information.">Address</a></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="18.971428571428568%" headers="d168449e3431 "><span class="keyword parmname">PackageDimensions</span></td>
<td class="entry" data-valign="top" width="27.885714285714286%" headers="d168449e3434 ">The package dimensions.</td>
<td class="entry" data-valign="top" width="11.428571428571429%" headers="d168449e3437 ">Yes</td>
<td class="entry" data-valign="top" width="41.714285714285715%" headers="d168449e3440 ">Type: <a href="MerchFulfill_Datatypes.md#PackageDimensions" class="xref" title="The dimensions of a package contained in a shipment.">PackageDimensions</a></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="18.971428571428568%" headers="d168449e3431 "><span class="keyword parmname">Weight</span></td>
<td class="entry" data-valign="top" width="27.885714285714286%" headers="d168449e3434 ">The package weight.</td>
<td class="entry" data-valign="top" width="11.428571428571429%" headers="d168449e3437 ">Yes</td>
<td class="entry" data-valign="top" width="41.714285714285715%" headers="d168449e3440 ">Type: <a href="MerchFulfill_Datatypes.md#Weight" class="xref" title="The weight value and unit of measurement.">Weight</a></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="18.971428571428568%" headers="d168449e3431 "><span class="keyword parmname">Insurance</span></td>
<td class="entry" data-valign="top" width="27.885714285714286%" headers="d168449e3434 ">If <span class="keyword parmname">DeclaredValue</span> was specified with a previous call to the <span class="keyword apiname">CreateShipment</span> operation, then <span class="keyword parmname">Insurance</span> indicates the amount that the carrier will insure the shipment for.
<p>If <span class="keyword parmname">DeclaredValue</span> was not specified with a previous call to the <span class="keyword apiname">CreateShipment</span> operation, then the shipment will be insured for the carrier's minimum insurance amount, or the combined sale prices that the items in the shipment are listed for, whichever is less.</p>
<p><span class="ph">For information about optional insurance coverage, see the Seller Central Help (<a href="https://sellercentral.amazon.co.uk/gp/help/200204080" class="xref">UK</a>) (<a href="https://sellercentral.amazon.com/gp/help/200204080" class="xref">US</a>).</span></p></td>
<td class="entry" data-valign="top" width="11.428571428571429%" headers="d168449e3437 ">Yes</td>
<td class="entry" data-valign="top" width="41.714285714285715%" headers="d168449e3440 ">The <span class="keyword parmname">DeclaredValue</span> value specified in a previous call to the <span class="keyword apiname">CreateShipment</span> operation. If <span class="keyword parmname">DeclaredValue</span> was not specified, then the value is zero.
<p>Type: <a href="MerchFulfill_Datatypes.md#CurrencyAmount" class="xref" title="Currency type and amount.">CurrencyAmount</a></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="18.971428571428568%" headers="d168449e3431 "><span class="keyword parmname">ShippingService</span></td>
<td class="entry" data-valign="top" width="27.885714285714286%" headers="d168449e3434 ">The shipping service offer for this shipment.</td>
<td class="entry" data-valign="top" width="11.428571428571429%" headers="d168449e3437 ">Yes</td>
<td class="entry" data-valign="top" width="41.714285714285715%" headers="d168449e3440 ">Type: <a href="MerchFulfill_Datatypes.md#ShippingService" class="xref" title="A shipping service offer made by a carrier.">ShippingService</a></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="18.971428571428568%" headers="d168449e3431 "><span class="keyword parmname">Label</span></td>
<td class="entry" data-valign="top" width="27.885714285714286%" headers="d168449e3434 "><span class="ph">Data for creating a shipping label and dimensions for printing the label.</span> If the shipment is canceled, an empty <span class="keyword parmname">Label</span> element is returned.</td>
<td class="entry" data-valign="top" width="11.428571428571429%" headers="d168449e3437 ">Yes</td>
<td class="entry" data-valign="top" width="41.714285714285715%" headers="d168449e3440 ">Type: <a href="MerchFulfill_Datatypes.md#Label" class="xref" title="Data for creating a shipping label and dimensions for printing the label.">Label</a></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="18.971428571428568%" headers="d168449e3431 "><span class="keyword parmname">Status</span></td>
<td class="entry" data-valign="top" width="27.885714285714286%" headers="d168449e3434 ">The shipment status.</td>
<td class="entry" data-valign="top" width="11.428571428571429%" headers="d168449e3437 ">Yes</td>
<td class="entry" data-valign="top" width="41.714285714285715%" headers="d168449e3440 "><span class="keyword parmname">Status</span> values: <var class="keyword varname">Purchased</var>, <var class="keyword varname">RefundPending</var>, <var class="keyword varname">RefundRejected</var>, or <var class="keyword varname">RefundApplied</var>. See <a href="MerchFulfill_Datatypes.md#Status_Values" class="xref">Status Values table</a> for details.
<p><span class="ph">Type: List of xs:string</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="18.971428571428568%" headers="d168449e3431 "><span class="keyword parmname">TrackingId</span></td>
<td class="entry" data-valign="top" width="27.885714285714286%" headers="d168449e3434 ">The shipment tracking identifier provided by the carrier.</td>
<td class="entry" data-valign="top" width="11.428571428571429%" headers="d168449e3437 ">No</td>
<td class="entry" data-valign="top" width="41.714285714285715%" headers="d168449e3440 ">Maximum: 30 characters
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="18.971428571428568%" headers="d168449e3431 "><span class="keyword parmname">CreatedDate</span></td>
<td class="entry" data-valign="top" width="27.885714285714286%" headers="d168449e3434 ">The date that the shipment was created, in <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>.</td>
<td class="entry" data-valign="top" width="11.428571428571429%" headers="d168449e3437 ">Yes</td>
<td class="entry" data-valign="top" width="41.714285714285715%" headers="d168449e3440 "><span class="ph">Type: xs:dateTime</span></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="18.971428571428568%" headers="d168449e3431 "><span class="keyword parmname">LastUpdatedDate</span></td>
<td class="entry" data-valign="top" width="27.885714285714286%" headers="d168449e3434 ">The date that the shipment status last changed, in <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>.</td>
<td class="entry" data-valign="top" width="11.428571428571429%" headers="d168449e3437 ">No</td>
<td class="entry" data-valign="top" width="41.714285714285715%" headers="d168449e3440 "><span class="ph">Type: xs:dateTime</span></td>
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

<table id="Status_Values__d37863e1170" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d168449e3926" class="entry" data-valign="top" width="25%">Name</th>
<th id="d168449e3929" class="entry" data-valign="top" width="75%">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="25%" headers="d168449e3926 "><var class="keyword varname">Purchased</var></td>
<td class="entry" data-valign="top" width="75%" headers="d168449e3929 ">The seller purchased a label by calling the <span class="keyword apiname">CreateShipment</span> operation.</td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="25%" headers="d168449e3926 "><var class="keyword varname">RefundPending</var></td>
<td class="entry" data-valign="top" width="75%" headers="d168449e3929 ">The seller requested a label refund by calling the <span class="keyword apiname">CancelShipment</span> operation, and the refund request is being processed by the carrier.
<div class="note note">
<span class="notetitle">Note:</span>
<ul>
<li>A seller can create a new shipment for an order while <span class="keyword parmname">Status</span>=<var class="keyword varname">RefundPending</var> for a canceled shipment.</li>
<li>After a label refund is requested by calling the <span class="keyword apiname">CancelShipment</span> operation, the order status of the order remains "Shipped".</li>
</ul>
</div></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="25%" headers="d168449e3926 "><var class="keyword varname">RefundRejected</var></td>
<td class="entry" data-valign="top" width="75%" headers="d168449e3929 ">The label refund request was rejected by the carrier. A refund request is rejected for either of the following reasons:
<ul>
<li>The cancellation window has expired. <span class="ph">Cancellation policies vary by carrier. For more information about carrier cancellation policies, see the Seller Central Help.</span>.</li>
<li>The carrier has already accepted the shipment for delivery.</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="25%" headers="d168449e3926 "><var class="keyword varname">RefundApplied</var></td>
<td class="entry" data-valign="top" width="75%" headers="d168449e3929 ">The refund has been approved and credited to the seller's account.</td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

</div>

<div id="ShipmentLevelFields" class="topic reference nested1">

## ShipmentLevelFields

<div class="body refbody">

<span class="ph">A list of additional seller inputs (at the shipment
level), used as input to the <span
class="keyword apiname">CreateShipment</span> operation.</span>

<div id="ShipmentLevelFields__DatatypeContent" class="section">

### ShipmentLevelFields elements

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
<th id="d168449e4087" class="entry" data-valign="top" width="34.18367346938776%">Name</th>
<th id="d168449e4090" class="entry" data-valign="top" width="25.510204081632654%">Description</th>
<th id="d168449e4093" class="entry" data-valign="top" width="12.755102040816327%">Required</th>
<th id="d168449e4096" class="entry" data-valign="top" width="27.551020408163268%">Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d168449e4087 "><span class="keyword parmname">AdditionalInputFieldName</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d168449e4090 ">The name of the additional seller input.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d168449e4093 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d168449e4096 "><span class="keyword parmname">AdditionalInputFieldName</span> values:
<ul>
<li><var class="keyword varname">NON_DELIVERABLE_INSTRUCTIONS</var></li>
<li><var class="keyword varname">SENDER_ADDRESS_TRANSLATED</var></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d168449e4087 "><span class="keyword parmname">SellerInputDefinition</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d168449e4090 "><span class="ph">Defines the additional seller input that is required from the seller.</span></td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d168449e4093 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d168449e4096 ">Type: <a href="MerchFulfill_Datatypes.md#SellerInputDefinition" class="xref" title="Defines the additional seller input that is required from the seller.">SellerInputDefinition</a></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="ShipmentLevelSellerInputs" class="topic reference nested1">

## ShipmentLevelSellerInputsList

<div class="body refbody">

<span class="ph">A list of additional seller inputs (at the shipment
level), used as input to the <span
class="keyword apiname">CreateShipment</span> operation.</span>

<div id="ShipmentLevelSellerInputs__DatatypeContent" class="section">

### ShipmentLevelSellerInputsList elements

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
<th id="d168449e4236" class="entry" data-valign="top" width="17.919580419580416%">Name</th>
<th id="d168449e4239" class="entry" data-valign="top" width="10.402097902097902%">Description</th>
<th id="d168449e4242" class="entry" data-valign="top" width="8.741258741258742%">Required</th>
<th id="d168449e4245" class="entry" data-valign="top" width="40.38461538461538%">Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="17.919580419580416%" headers="d168449e4236 "><span class="keyword parmname">AdditionalSellerInputs</span></td>
<td class="entry" data-valign="top" width="10.402097902097902%" headers="d168449e4239 ">Contains additional seller input information.</td>
<td class="entry" data-valign="top" width="8.741258741258742%" headers="d168449e4242 ">Yes</td>
<td class="entry" data-valign="top" width="40.38461538461538%" headers="d168449e4245 "><span class="keyword parmname">AdditionalSellerInputs</span> contains these elements:
<ul>
<li><span class="keyword parmname">AdditionalInputFieldName</span> - The name of the additional seller input. Example values: <var class="keyword varname">NON_DELIVERABLE_INSTRUCTIONS</var>, <var class="keyword varname">SENDER_ADDRESS_TRANSLATED</var>. Get this value from a <span class="keyword parmname">ShipmentLevelFields</span> response member returned by the <a href="MerchFulfill_GetAdditionalSellerInputs.md" class="xref" title="Returns a list of additional seller inputs that are required from the seller to purchase the shipping service that you specify.">GetAdditionalSellerInputs</a> operation.</li>
<li><strong>AdditionalSellerInput</strong> - Additional seller input information. <strong>AdditionalSellerInput</strong> contains these elements:
<ul>
<li><span class="keyword parmname">DataType</span> - The type of the additional seller input. Values: <var class="keyword varname">String</var>, <var class="keyword varname">Address</var>. Get the <span class="keyword parmname">DataType</span> value from an <span class="keyword parmname">SellerInputDefinition</span> element returned by the <a href="MerchFulfill_GetAdditionalSellerInputs.md" class="xref" title="Returns a list of additional seller inputs that are required from the seller to purchase the shipping service that you specify.">GetAdditionalSellerInputs</a> operation.</li>
</ul>
<ul>
<li><span class="keyword parmname">ValueAs[DataType]</span> (where [DataType] matches the value of the <span class="keyword parmname">DataType</span> element) - The value of the additional seller input. For syntax requirements, see the <span class="keyword parmname">Constraints</span> element that is associated with this <span class="keyword parmname">ValueAs[DataType]</span>. Example values: <var class="keyword varname">ValueAsString</var> (<span class="ph">Type: xs:string</span>), <var class="keyword varname">ValueAsAddress</var> (Type: <a href="MerchFulfill_Datatypes.md#Address" class="xref" title="Postal address information.">Address</a>). Get these values from the seller.</li>
</ul></li>
</ul></td>
</tr>
</tbody>
</table>

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

<table id="ShipmentRequestDetails__RequestParametersTable" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d168449e4433" class="entry" data-valign="top" width="34.18367346938776%">Name</th>
<th id="d168449e4436" class="entry" data-valign="top" width="25.510204081632654%">Description</th>
<th id="d168449e4439" class="entry" data-valign="top" width="12.755102040816327%">Required</th>
<th id="d168449e4442" class="entry" data-valign="top" width="27.551020408163268%">Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d168449e4433 "><span class="keyword parmname">AmazonOrderId</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d168449e4436 ">An Amazon-defined order identifier in 3-7-7 format.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d168449e4439 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d168449e4442 ">Maximum: 50 characters.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d168449e4433 "><span class="keyword parmname">SellerOrderId</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d168449e4436 ">A seller-defined order identifier.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d168449e4439 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d168449e4442 ">Maximum: 64 characters.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d168449e4433 "><span class="keyword parmname">ItemList</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d168449e4436 ">A list of items to be included in a shipment.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d168449e4439 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d168449e4442 ">Type: List of <a href="MerchFulfill_Datatypes.md#Item" class="xref" title="An Amazon order item identifier and a quantity.">Item</a></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d168449e4433 "><span class="keyword parmname">ShipFromAddress</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d168449e4436 ">The address from which the shipment ships.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d168449e4439 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d168449e4442 ">Type: <a href="MerchFulfill_Datatypes.md#Address" class="xref" title="Postal address information.">Address</a></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d168449e4433 "><span class="keyword parmname">PackageDimensions</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d168449e4436 ">The package dimensions.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d168449e4439 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d168449e4442 ">Type: <a href="MerchFulfill_Datatypes.md#PackageDimensions" class="xref" title="The dimensions of a package contained in a shipment.">PackageDimensions</a></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d168449e4433 "><span class="keyword parmname">Weight</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d168449e4436 ">The package weight.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d168449e4439 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d168449e4442 ">Type: <a href="MerchFulfill_Datatypes.md#Weight" class="xref" title="The weight value and unit of measurement.">Weight</a></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d168449e4433 "><span class="keyword parmname">MustArriveByDate</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d168449e4436 ">The date by which the package must arrive to keep the promise to the customer, in <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>.
<p>If <span class="keyword parmname">MustArriveByDate</span> is specified, only shipping service offers that can be delivered by that date are returned.</p></td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d168449e4439 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d168449e4442 "><span class="ph">Type: xs:dateTime</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d168449e4433 "><span class="keyword parmname">ShipDate</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d168449e4436 ">When used in a request, this is the date that the seller wants to ship the package. When used in a response, this is the date that the package can be shipped by the indicated method.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d168449e4439 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d168449e4442 "><span class="ph">Type: xs:dateTime</span></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d168449e4433 "><span class="keyword parmname">ShippingServiceOptions</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d168449e4436 ">Extra services offered by the carrier.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d168449e4439 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d168449e4442 ">Type: <a href="MerchFulfill_Datatypes.md#ShippingServiceOptions" class="xref" title="Extra services provided by a carrier.">ShippingServiceOptions</a></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d168449e4433 "><span class="keyword parmname">LabelCustomization</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d168449e4436 ">Label customization options.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d168449e4439 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d168449e4442 ">Type: <a href="MerchFulfill_Datatypes.md#LabelCustomization" class="xref" title="Custom text for shipping labels.">LabelCustomization</a></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="ShippingOfferingFilter" class="topic reference nested1">

## ShippingOfferingFilter

<div class="body refbody">

<span class="ph">Specifies particular requirements for eligible shipping
service offers.</span>

<div id="ShippingOfferingFilter__DatatypeContent" class="section">

### ShippingOfferingFilter elements

<div class="tablenoborder">

| Name                                                                | Description                                                                                  | Required | Values                                   |
|---------------------------------------------------------------------|----------------------------------------------------------------------------------------------|----------|------------------------------------------|
| <span class="keyword parmname">IncludeComplexShippingOptions</span> | `True` if you want to include shipping service offers that require additional seller inputs. | No       | <span class="ph">Type: xs:boolean</span> |

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

<table id="ShippingService__RequestParametersTable" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d168449e4858" class="entry" data-valign="top" width="34.18367346938776%">Name</th>
<th id="d168449e4861" class="entry" data-valign="top" width="25.510204081632654%">Description</th>
<th id="d168449e4864" class="entry" data-valign="top" width="12.755102040816327%">Required</th>
<th id="d168449e4867" class="entry" data-valign="top" width="27.551020408163268%">Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d168449e4858 "><span class="keyword parmname">ShippingServiceName</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d168449e4861 "><span class="ph">A plain text representation of a carrier's shipping service. For example, "UPS Ground" or "FedEx Standard Overnight".</span></td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d168449e4864 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d168449e4867 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d168449e4858 "><span class="keyword parmname">CarrierName</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d168449e4861 ">The name of the carrier.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d168449e4864 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d168449e4867 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d168449e4858 "><span class="keyword parmname">ShippingServiceId</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d168449e4861 "><span class="ph">An Amazon-defined shipping service identifier. <span class="ph">For definitions, see <a href="../merch_fulfill/MerchFulfill_Overview.md#Terminology" class="xref">Terminology</a>.</span></span></td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d168449e4864 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d168449e4867 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d168449e4858 "><span class="keyword parmname">ShippingServiceOfferId</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d168449e4861 "><span class="ph">An Amazon-defined shipping service offer identifier. <span class="ph">For definitions, see <a href="../merch_fulfill/MerchFulfill_Overview.md#Terminology" class="xref">Terminology</a>.</span></span></td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d168449e4864 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d168449e4867 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d168449e4858 "><span class="keyword parmname">ShipDate</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d168449e4861 ">The date that the carrier will ship the package.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d168449e4864 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d168449e4867 "><span class="ph">Type: xs:dateTime</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d168449e4858 "><span class="keyword parmname">EarliestEstimatedDeliveryDate</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d168449e4861 ">The earliest date by which the shipment will be delivered.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d168449e4864 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d168449e4867 "><span class="ph">Type: xs:dateTime</span></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d168449e4858 "><span class="keyword parmname">LatestEstimatedDeliveryDate</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d168449e4861 ">The latest date by which the shipment will be delivered.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d168449e4864 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d168449e4867 "><span class="ph">Type: xs:dateTime</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d168449e4858 "><span class="keyword parmname">Rate</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d168449e4861 ">The amount that the carrier will charge for the shipment.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d168449e4864 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d168449e4867 ">Type: <a href="MerchFulfill_Datatypes.md#CurrencyAmount" class="xref" title="Currency type and amount.">CurrencyAmount</a></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d168449e4858 "><span class="keyword parmname">ShippingServiceOptions</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d168449e4861 ">Extra services offered by the carrier.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d168449e4864 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d168449e4867 ">Type: <a href="MerchFulfill_Datatypes.md#ShippingServiceOptions" class="xref" title="Extra services provided by a carrier.">ShippingServiceOptions</a></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d168449e4858 "><span class="keyword parmname">AvailableLabelFormats</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d168449e4861 ">The available label formats for a carrier.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d168449e4864 ">No</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d168449e4867 ">May include <span class="keyword parmname">PNG</span>, <span class="keyword parmname">PDF</span>, and <span class="keyword parmname">ZPL203</span>.
<p><span class="ph">Type: List of xs:string</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d168449e4858 "><span class="keyword parmname">RequiresAdditionalSellerInputs</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d168449e4861 "><var class="keyword varname">True</var> if this shipping service requires additional seller inputs.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d168449e4864 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d168449e4867 "><span class="ph">Type: xs:boolean</span></td>
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

<table id="ShippingServiceOptions__RequestParametersTable" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d168449e5210" class="entry" data-valign="top" width="20.127795527156547%">Name</th>
<th id="d168449e5213" class="entry" data-valign="top" width="30.35143769968051%">Description</th>
<th id="d168449e5216" class="entry" data-valign="top" width="10.649627263045792%">Required</th>
<th id="d168449e5219" class="entry" data-valign="top" width="38.87113951011714%">Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="20.127795527156547%" headers="d168449e5210 "><span class="keyword parmname">DeliveryExperience</span></td>
<td class="entry" data-valign="top" width="30.35143769968051%" headers="d168449e5213 ">The delivery confirmation level.</td>
<td class="entry" data-valign="top" width="10.649627263045792%" headers="d168449e5216 ">Yes</td>
<td class="entry" data-valign="top" width="38.87113951011714%" headers="d168449e5219 "><span class="keyword parmname">DeliveryExperience</span> values:
<ul>
<li><var class="keyword varname">DeliveryConfirmationWithAdultSignature</var> - Delivery confirmation with adult signature.</li>
<li><var class="keyword varname">DeliveryConfirmationWithSignature</var> - Delivery confirmation with signature. Required for DPD (UK).</li>
<li><var class="keyword varname">DeliveryConfirmationWithoutSignature</var> - Delivery confirmation without signature.</li>
<li><var class="keyword varname">NoTracking</var> - No delivery confirmation.</li>
</ul>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="20.127795527156547%" headers="d168449e5210 "><span class="keyword parmname">DeclaredValue</span></td>
<td class="entry" data-valign="top" width="30.35143769968051%" headers="d168449e5213 ">The declared value of the shipment. The carrier uses this value to determine how much to insure the shipment for. If <span class="keyword parmname">DeclaredValue</span> is greater than the carrier's minimum insurance amount, the seller is charged for the additional insurance as determined by the carrier. <span class="ph">For information about optional insurance coverage, see the Seller Central Help (<a href="https://sellercentral.amazon.co.uk/gp/help/200204080" class="xref">UK</a>) (<a href="https://sellercentral.amazon.com/gp/help/200204080" class="xref">US</a>).</span></td>
<td class="entry" data-valign="top" width="10.649627263045792%" headers="d168449e5216 ">No</td>
<td class="entry" data-valign="top" width="38.87113951011714%" headers="d168449e5219 ">Default: 0
<p>Type: <a href="MerchFulfill_Datatypes.md#CurrencyAmount" class="xref" title="Currency type and amount.">CurrencyAmount</a></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="20.127795527156547%" headers="d168449e5210 "><span class="keyword parmname">CarrierWillPickUp</span></td>
<td class="entry" data-valign="top" width="30.35143769968051%" headers="d168449e5213 ">Indicates whether the carrier will pick up the package.
<div class="note note">
<span class="notetitle">Note:</span> Scheduled carrier pickup is available only using Dynamex (US), DPD (UK), and Royal Mail (UK).
</div></td>
<td class="entry" data-valign="top" width="10.649627263045792%" headers="d168449e5216 ">Yes</td>
<td class="entry" data-valign="top" width="38.87113951011714%" headers="d168449e5219 "><var class="keyword varname">true</var> if the carrier will pick up the package, otherwise <var class="keyword varname">false</var>.
<p><span class="ph">Type: xs:boolean</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="20.127795527156547%" headers="d168449e5210 "><span class="keyword parmname">LabelFormat</span></td>
<td class="entry" data-valign="top" width="30.35143769968051%" headers="d168449e5213 ">The seller's preferred label format.
<div class="p">
<div class="note note">
<span class="notetitle">Note:</span> Not all <span class="keyword parmname">LabelFormat</span> values are supported by all carriers. Specifying a <span class="keyword parmname">LabelFormat</span> value that is not supported by a carrier will filter out shipping service offers from that carrier.
</div>
</div></td>
<td class="entry" data-valign="top" width="10.649627263045792%" headers="d168449e5216 ">No</td>
<td class="entry" data-valign="top" width="38.87113951011714%" headers="d168449e5219 ">Must match one of the <span class="keyword parmname">AvailableLabelFormats</span> returned by <a href="MerchFulfill_GetEligibleShippingServices.md" class="xref" title="Returns a list of shipping service offers.">GetEligibleShippingServices</a>.
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
due to a service outage experienced by the carrier.</span>

<div id="TemporarilyUnavailableCarrier__DatatypeContent"
class="section">

### TemporarilyUnavailableCarrier elements

<div class="tablenoborder">

| Name                                              | Description              | Required | Values                                  |
|---------------------------------------------------|--------------------------|----------|-----------------------------------------|
| <span class="keyword parmname">CarrierName</span> | The name of the carrier. | Yes      | <span class="ph">Type: xs:string</span> |

</div>

</div>

</div>

</div>

<div id="TermsAndConditionsNotAcceptedCarrier"
class="topic reference nested1">

## TermsAndConditionsNotAcceptedCarrier

<div class="body refbody">

<span class="ph">A carrier whose terms and conditions have not been
accepted by the seller.</span>

<div class="section">

### TermsAndConditionsNotAcceptedCarrier elements

<div class="tablenoborder">

| Name                                              | Description              | Required | Values                                  |
|---------------------------------------------------|--------------------------|----------|-----------------------------------------|
| <span class="keyword parmname">CarrierName</span> | The name of the carrier. | Yes      | <span class="ph">Type: xs:string</span> |

</div>

</div>

</div>

</div>

<div id="TransparencyCodeList" class="topic reference nested1">

## TransparencyCodeList

<div class="body refbody">

<span class="ph">List of Transparency codes.</span>

<div class="section">

### TransparencyCodeList elements

<div class="tablenoborder">

| Name                                                   | Description                                     | Required | Values                                  |
|--------------------------------------------------------|-------------------------------------------------|----------|-----------------------------------------|
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

<table id="Weight__RequestParametersTable" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d168449e5754" class="entry" data-valign="top" width="34.18367346938776%">Name</th>
<th id="d168449e5757" class="entry" data-valign="top" width="25.510204081632654%">Description</th>
<th id="d168449e5760" class="entry" data-valign="top" width="12.755102040816327%">Required</th>
<th id="d168449e5763" class="entry" data-valign="top" width="27.551020408163268%">Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d168449e5754 "><span class="keyword parmname">Value</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d168449e5757 ">The weight of the object.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d168449e5760 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d168449e5763 "><span class="ph">Type: xs:decimal</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.18367346938776%" headers="d168449e5754 "><span class="keyword parmname">Unit</span></td>
<td class="entry" data-valign="top" width="25.510204081632654%" headers="d168449e5757 ">The unit of measurement for weight.</td>
<td class="entry" data-valign="top" width="12.755102040816327%" headers="d168449e5760 ">Yes</td>
<td class="entry" data-valign="top" width="27.551020408163268%" headers="d168449e5763 "><span class="keyword parmname">Unit</span> values: <var class="keyword varname">ounces</var>, <var class="keyword varname">grams</var>
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

<a href="../merch_fulfill/MerchFulfill_Overview.md" class="xref">Merchant Fulfillment API</a>

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
