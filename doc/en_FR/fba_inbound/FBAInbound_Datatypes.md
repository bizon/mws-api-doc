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

<div id="FBAInbound_Datatypes" class="nested0">

# Inbound Datatypes

<div class="body">

The following datatypes are used in the request parameters and response
elements of the <span class="ph">Amazon Marketplace Web Service (Amazon
MWS)</span> <span class="ph">Fulfillment Inbound Shipment API
section</span>:

<div class="tablenoborder">

| Datatype                                                                                                                                                                                                                                                                  | Short description                                                                                                                                                                                                                                                              |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| [Address](FBAInbound_Datatypes.html#Address "Postal address information.")                                                                                                                                                                                                | <span class="ph">Postal address information.</span>                                                                                                                                                                                                                            |
| [AmazonPrepFeesDetails](FBAInbound_Datatypes.html#AmazonPrepFeesDetails "The fees for Amazon to prep goods for shipment.")                                                                                                                                                | <span class="ph">The fees for Amazon to prep goods for shipment.</span>                                                                                                                                                                                                        |
| [Amount](FBAInbound_Datatypes.html#Amount "The currency code and value.")                                                                                                                                                                                                 | <span class="ph">The currency code and value.</span>                                                                                                                                                                                                                           |
| [ASINInboundGuidance](FBAInbound_Datatypes.html#ASINInboundGuidance "Reasons why a given ASIN is not recommended for shipment to Amazon's fulfillment network.")                                                                                                          | <span class="ph">Reasons why a given ASIN is not recommended for shipment to <span class="ph">Amazon's fulfillment network</span>.</span>                                                                                                                                      |
| [ASINPrepInstructions](FBAInbound_Datatypes.html#ASINPrepInstructions "Item preparation instructions to help with item sourcing decisions.")                                                                                                                              | <span class="ph">Item preparation instructions to help with item sourcing decisions.</span>                                                                                                                                                                                    |
| [BoxContentsFeeDetails](FBAInbound_Datatypes.html#BoxContentsFeeDetails "The manual processing fee per unit and total fee for a shipment.")                                                                                                                               | <span class="ph">The manual processing fee per unit and total fee for a shipment.</span>                                                                                                                                                                                       |
| [BoxContentsSource](FBAInbound_Datatypes.html#BoxContentsSource "Where the seller provided box contents information for a shipment. This element is used only in the US marketplace.")                                                                                    | <span class="ph">Where the seller provided box contents information for a shipment.</span>                                                                                                                                                                                     |
| [Contact](FBAInbound_Datatypes.html#Contact "Contact information for the person in your organization who is responsible for a Less Than Truckload/Full Truckload (LTL/FTL) shipment.")                                                                                    | <span class="ph">Contact information for the person in your organization who is responsible for a <span class="ph">Less Than Truckload/Full Truckload (LTL/FTL)</span> shipment.</span>                                                                                        |
| [Dimensions](FBAInbound_Datatypes.html#Dimensions "The dimension values and unit of measurement.")                                                                                                                                                                        | <span class="ph">The dimension values and unit of measurement.</span>                                                                                                                                                                                                          |
| [GuidanceReason](FBAInbound_Datatypes.html#GuidanceReason "A reason for the current inbound guidance for an item.")                                                                                                                                                       | <span class="ph">A reason for the current inbound guidance for an item.</span>                                                                                                                                                                                                 |
| [InboundGuidance](FBAInbound_Datatypes.html#InboundGuidance "Specific inbound guidance for an item.")                                                                                                                                                                     | <span class="ph">Specific inbound guidance for an item.</span>                                                                                                                                                                                                                 |
| [InboundShipmentHeader](FBAInbound_Datatypes.html#InboundShipmentHeader "Inbound shipment information used to create and update inbound shipments.")                                                                                                                      | <span class="ph">Inbound shipment information used to create and update inbound shipments.</span>                                                                                                                                                                              |
| [InboundShipmentInfo](FBAInbound_Datatypes.html#InboundShipmentInfo "Information about your inbound shipments. Returned by the ListInboundShipments operation.")                                                                                                          | <span class="ph">Information about your inbound shipments. Returned by the <span class="keyword apiname">ListInboundShipments</span> operation.</span>                                                                                                                         |
| [InboundShipmentItem](FBAInbound_Datatypes.html#InboundShipmentItem "Item information for an inbound shipment. Submitted with a call to the CreateInboundShipment or UpdateInboundShipment operation.")                                                                   | <span class="ph">Item information for an inbound shipment. Submitted with a call to the <span class="keyword apiname">CreateInboundShipment</span> or <span class="keyword apiname">UpdateInboundShipment</span> operation.</span>                                             |
| [InboundShipmentPlan](FBAInbound_Datatypes.html#InboundShipmentPlan "Inbound shipment information used to create an inbound shipment. Returned by the CreateInboundShipmentPlan operation.")                                                                              | <span class="ph">Inbound shipment information used to create an inbound shipment. Returned by the <span class="keyword apiname">CreateInboundShipmentPlan</span> operation.</span>                                                                                             |
| [InboundShipmentPlanItem](FBAInbound_Datatypes.html#InboundShipmentPlanItem "Item information used to create an inbound shipment. Returned by the CreateInboundShipmentPlan operation.")                                                                                  | <span class="ph">Item information used to create an inbound shipment. Returned by the <span class="keyword apiname">CreateInboundShipmentPlan</span> operation.</span>                                                                                                         |
| [InboundShipmentPlanRequestItem](FBAInbound_Datatypes.html#InboundShipmentPlanRequestItem "Item information for creating an inbound shipment plan. Submitted with a call to the CreateInboundShipmentPlan operation.")                                                    | <span class="ph">Item information for creating an inbound shipment plan. Submitted with a call to the <span class="keyword apiname">CreateInboundShipmentPlan</span> operation.</span>                                                                                         |
| [IntendedBoxContentsSource](FBAInbound_Datatypes.html#IntendedBoxContentsSource "How the seller intends to provide box contents information for a shipment.")                                                                                                             | <span class="ph">How the seller intends to provide box contents information for a shipment.</span>                                                                                                                                                                             |
| [InvalidASIN](FBAInbound_Datatypes.html#InvalidASIN "An invalid ASIN and the reason it is invalid.")                                                                                                                                                                      | <span class="ph">An invalid ASIN and the reason it is invalid.</span>                                                                                                                                                                                                          |
| [InvalidSKU](FBAInbound_Datatypes.html#InvalidSKU "An invalid Seller SKU and the reason it is invalid.")                                                                                                                                                                  | <span class="ph">An invalid Seller SKU and the reason it is invalid.</span>                                                                                                                                                                                                    |
| [NonPartneredLtlDataInput](FBAInbound_Datatypes.html#NonPartneredLtlDataInput "Information that you provide to Amazon about a Less Than Truckload/Full Truckload (LTL/FTL) shipment by a carrier that has not partnered with Amazon.")                                    | <span class="ph">Information that you provide to Amazon about a <span class="ph">Less Than Truckload/Full Truckload (LTL/FTL)</span> shipment by a carrier that has not partnered with Amazon.</span>                                                                          |
| [NonPartneredLtlDataOutput](FBAInbound_Datatypes.html#NonPartneredLtlDataOutput "Information returned by Amazon about a Less Than Truckload/Full Truckload (LTL/FTL) shipment shipped by a carrier that has not partnered with Amazon.")                                  | <span class="ph">Information returned by Amazon about a <span class="ph">Less Than Truckload/Full Truckload (LTL/FTL)</span> shipment shipped by a carrier that has not partnered with Amazon.</span>                                                                          |
| [NonPartneredSmallParcelDataInput](FBAInbound_Datatypes.html#NonPartneredSmallParcelDataInput "Information that you provide to Amazon about a Small Parcel shipment shipped by a carrier that has not partnered with Amazon.")                                            | <span class="ph">Information that you provide to Amazon about a <span class="ph">Small Parcel</span> shipment shipped by a carrier that has not partnered with Amazon.</span>                                                                                                  |
| [NonPartneredSmallParcelDataOutput](FBAInbound_Datatypes.html#NonPartneredSmallParcelDataOutput "Information returned by Amazon about a Small Parcel shipment by a carrier that has not partnered with Amazon.")                                                          | <span class="ph">Information returned by Amazon about a <span class="ph">Small Parcel</span> shipment by a carrier that has not partnered with Amazon.</span>                                                                                                                  |
| [NonPartneredSmallParcelPackageInput](FBAInbound_Datatypes.html#NonPartneredSmallParcelPackageInput "The tracking number of the package, provided by the carrier.")                                                                                                       | <span class="ph">The tracking number of the package, provided by the carrier.</span>                                                                                                                                                                                           |
| [NonPartneredSmallParcelPackageOutput](FBAInbound_Datatypes.html#NonPartneredSmallParcelPackageOutput "Carrier, tracking number, and status information for the package.")                                                                                                | <span class="ph">Carrier, tracking number, and status information for the package.</span>                                                                                                                                                                                      |
| [Pallet](FBAInbound_Datatypes.html#Pallet "Pallet information.")                                                                                                                                                                                                          | <span class="ph">Pallet information.</span>                                                                                                                                                                                                                                    |
| [PartneredEstimate](FBAInbound_Datatypes.html#PartneredEstimate "The estimated shipping cost for a shipment using an Amazon-partnered carrier.")                                                                                                                          | <span class="ph">The estimated shipping cost for a shipment using an Amazon-partnered carrier.</span>                                                                                                                                                                          |
| [PartneredLtlDataInput](FBAInbound_Datatypes.html#PartneredLtlDataInput "Information that is required by an Amazon-partnered carrier to ship a Less Than Truckload/Full Truckload (LTL/FTL) inbound shipment.")                                                           | <span class="ph">Information that is required by an Amazon-partnered carrier to ship a <span class="ph">Less Than Truckload/Full Truckload (LTL/FTL)</span> inbound shipment.</span>                                                                                           |
| [PartneredLtlDataOutput](FBAInbound_Datatypes.html#PartneredLtlDataOutput "Information returned by Amazon about a Less Than Truckload/Full Truckload (LTL/FTL) shipment by an Amazon-partnered carrier.")                                                                 | <span class="ph">Information returned by Amazon about a <span class="ph">Less Than Truckload/Full Truckload (LTL/FTL)</span> shipment by an Amazon-partnered carrier.</span>                                                                                                   |
| [PartneredSmallParcelDataInput](FBAInbound_Datatypes.html#PartneredSmallParcelDataInput "Information that is required by an Amazon-partnered carrier to ship a Small Parcel inbound shipment.")                                                                           | <span class="ph">Information that is required by an Amazon-partnered carrier to ship a <span class="ph">Small Parcel</span> inbound shipment.</span>                                                                                                                           |
| [PartneredSmallParcelDataOutput](FBAInbound_Datatypes.html#PartneredSmallParcelDataOutput "Information returned by Amazon about a Small Parcel shipment by an Amazon-partnered carrier.")                                                                                 | <span class="ph">Information returned by Amazon about a <span class="ph">Small Parcel</span> shipment by an Amazon-partnered carrier.</span>                                                                                                                                   |
| [PartneredSmallParcelPackageInput](FBAInbound_Datatypes.html#PartneredSmallParcelPackageInput "Dimension and weight information for the package.")                                                                                                                        | <span class="ph">Dimension and weight information for the package.</span>                                                                                                                                                                                                      |
| [PartneredSmallParcelPackageOutput](FBAInbound_Datatypes.html#PartneredSmallParcelPackageOutput "Dimension, weight, and shipping information for the package.")                                                                                                           | <span class="ph">Dimension, weight, and shipping information for the package.</span>                                                                                                                                                                                           |
| [PrepDetails](FBAInbound_Datatypes.html#PrepDetails "A preparation instruction, and who is responsible for that preparation.")                                                                                                                                            | <span class="ph">A preparation instruction, and who is responsible for that preparation.</span>                                                                                                                                                                                |
| [PrepInstruction](FBAInbound_Datatypes.html#PrepInstruction "Preparation instructions for shipping an item to Amazon's fulfillment network.")                                                                                                                             | <span class="ph">Preparation instructions for shipping an item to <span class="ph">Amazon's fulfillment network</span>.</span>                                                                                                                                                 |
| [SKUInboundGuidance](FBAInbound_Datatypes.html#SKUInboundGuidance "Reasons why a given Seller SKU is not recommended for shipment to Amazon's fulfillment network")                                                                                                       | <span class="ph">Reasons why a given Seller SKU is not recommended for shipment to <span class="ph">Amazon's fulfillment network</span></span>                                                                                                                                 |
| [SKUPrepInstructions](FBAInbound_Datatypes.html#SKUPrepInstructions "Labeling requirements and item preparation instructions to help you prepare items for shipment to Amazon's fulfillment network.")                                                                    | <span class="ph">Labeling requirements and item preparation instructions to help you prepare items for shipment to <span class="ph">Amazon's fulfillment network</span>.</span>                                                                                                |
| [TransportContent](FBAInbound_Datatypes.html#TransportContent "Inbound shipment information, including carrier details, shipment status, and the workflow status for a request for shipment with an Amazon-partnered carrier.")                                           | <span class="ph">Inbound shipment information, including carrier details, shipment status, and the workflow status for a request for shipment with an Amazon-partnered carrier.</span>                                                                                         |
| [TransportDetailInput](FBAInbound_Datatypes.html#TransportDetailInput "Information required to create an Amazon-partnered carrier shipping estimate, or to alert the Amazon fulfillment center to the arrival of an inbound shipment by a non-Amazon-partnered carrier.") | <span class="ph">Information required to create an Amazon-partnered carrier shipping estimate, or to alert the <span class="ph">Amazon fulfillment center</span> to the arrival of an inbound shipment by a non-Amazon-partnered carrier.</span>                               |
| [TransportDetailOutput](FBAInbound_Datatypes.html#TransportDetailOutput "Inbound shipment information, including carrier details and shipment status.")                                                                                                                   | <span class="ph">Inbound shipment information, including carrier details and shipment status.</span>                                                                                                                                                                           |
| [TransportDocument](FBAInbound_Datatypes.html#TransportDocument "The PDF document data and checksum for printing package labels and bills of lading.")                                                                                                                    | <span class="ph">The PDF document data and checksum for printing package labels and bills of lading.</span>                                                                                                                                                                    |
| [TransportHeader](FBAInbound_Datatypes.html#TransportHeader "The shipping Id, information about whether the shipment is by an Amazon-partnered carrier, and information about whether the shipment is Small Parcel or Less Than Truckload/Full Truckload (LTL/FTL).")     | <span class="ph">The shipping Id, information about whether the shipment is by an Amazon-partnered carrier, and information about whether the shipment is <span class="ph">Small Parcel</span> or <span class="ph">Less Than Truckload/Full Truckload (LTL/FTL)</span>.</span> |
| [TransportResult](FBAInbound_Datatypes.html#TransportResult "The workflow status for a shipment with an Amazon-partnered carrier.")                                                                                                                                       | <span class="ph">The workflow status for a shipment with an Amazon-partnered carrier.</span>                                                                                                                                                                                   |
| [Weight](FBAInbound_Datatypes.html#Weight "The weight value and unit of measurement.")                                                                                                                                                                                    | <span class="ph">The weight value and unit of measurement.</span>                                                                                                                                                                                                              |

</div>

</div>

<div id="Address" class="topic reference nested1">

## Address

<div class="body refbody">

<span class="ph">Postal address information.</span>

<div class="section">

### Operations

The <span class="keyword cmdname">Address</span> datatype is used in a
request parameter or in a response element of the following
    operations:

  - [CreateInboundShipmentPlan](../fba_inbound/FBAInbound_CreateInboundShipmentPlan.html)
  - [CreateInboundShipment](../fba_inbound/FBAInbound_CreateInboundShipment.html)
  - [UpdateInboundShipment](FBAInbound_UpdateInboundShipment.html "Updates an existing inbound shipment.")
  - [ListInboundShipments](FBAInbound_ListInboundShipments.html "Returns a list of inbound shipments based on criteria that you specify.")

</div>

<div class="section">

### Datatype content

The following table shows the elements of the
<span class="keyword cmdname">Address</span> datatype:

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
<td>Maximum: 50 characters
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">AddressLine1</span></td>
<td>The street address information.</td>
<td>Yes</td>
<td>Maximum: 180 characters
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">AddressLine2</span></td>
<td>Additional street address information, if required.</td>
<td>No</td>
<td>Maximum: 60 characters
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">City</span></td>
<td>The city.</td>
<td>Yes</td>
<td>Maximum: 30 characters
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">DistrictOrCounty</span></td>
<td>The district or county.</td>
<td>No</td>
<td>Maximum: 25 characters
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">StateOrProvinceCode</span></td>
<td>The state or province code.</td>
<td>No
<p>If state or province codes are used in your marketplace, it is recommended that you include one with your request. This helps Amazon to select the most appropriate <span class="ph">Amazon fulfillment center</span> for your inbound shipment plan.</p></td>
<td>A two-digit state or province code.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">CountryCode</span></td>
<td>The country code.</td>
<td>Yes</td>
<td><span class="ph">A two-character country code, in ISO 3166-1 alpha-2 format.</span>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">PostalCode</span></td>
<td>The postal code.</td>
<td>No
<p>If postal codes are used in your marketplace, it is recommended that you include one with your request. This helps Amazon to select the most appropriate <span class="ph">Amazon fulfillment center</span> for your inbound shipment plan.</p></td>
<td>Maximum: 30 characters
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="AmazonPrepFeesDetails" class="topic reference nested1">

## AmazonPrepFeesDetails

<div class="body refbody">

<span class="ph">The fees for Amazon to prep goods for shipment.</span>

<div class="section">

### Operations

The <span class="keyword cmdname">AmazonPrepFeesDetails</span> datatype
is used in a response element of the following
    operations:

  - [GetPrepInstructionsForSKU](FBAInbound_GetPrepInstructionsForSKU.html "Returns labeling requirements and item preparation instructions to help you prepare items for an inbound shipment.")

</div>

<div class="section">

### Datatype content

The following table shows the elements of the
<span class="keyword cmdname">AmazonPrepFeesDetails</span> datatype:

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
<td><span class="keyword parmname">PrepInstruction</span></td>
<td><span class="ph">Preparation instructions for shipping an item to <span class="ph">Amazon's fulfillment network</span>.</span></td>
<td>Yes</td>
<td>See <a href="FBAInbound_Datatypes.html#PrepInstruction" class="xref" title="Preparation instructions for shipping an item to Amazon&#39;s fulfillment network.">PrepInstruction</a>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">FeePerUnit</span></td>
<td>The fee for Amazon to prepare 1 unit.</td>
<td>Yes</td>
<td>See <a href="FBAInbound_Datatypes.html#Amount" class="xref" title="The currency code and value.">Amount</a>
<p>Type: <a href="FBAInbound_Datatypes.html#Amount" class="xref" title="The currency code and value.">Amount</a></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="Amount" class="topic reference nested1">

## Amount

<div class="body refbody">

<span class="ph">The currency code and value.</span>

<div class="section">

### Operations

The <span class="keyword cmdname">Amount</span> datatype is used in a
request parameter or in a response element of the following
    operations:

  - [PutTransportContent](../fba_inbound/FBAInbound_PutTransportContent.html)
  - [GetTransportContent](../fba_inbound/FBAInbound_GetTransportContent.html)

</div>

<div class="section">

### Datatype content

The following table shows the elements of the
<span class="keyword cmdname">Amount</span> datatype:

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
<td>The currency code.</td>
<td>Yes</td>
<td><span class="keyword parmname">CurrencyCode</span> values:
<ul>
<li>USD - United States dollars</li>
<li>GBP - Great Britain pounds</li>
</ul>
<p>In <span class="ph"> <a href="../dev_guide/DG_ISO4217.html" class="xref">ISO 4217 format</a> </span>.</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">Value</span></td>
<td>The amount.</td>
<td>Yes</td>
<td><span class="ph">Type: xs:string</span></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="ASINInboundGuidance" class="topic reference nested1">

## ASINInboundGuidance

<div class="body refbody">

<span class="ph">Reasons why a given ASIN is not recommended for
shipment to <span class="ph">Amazon's fulfillment network</span>.</span>

<div class="section">

### Operations

The <span class="keyword cmdname">ASINInboundGuidance</span> datatype is
used in a response element of the following
    operation:

  - [GetInboundGuidanceForASIN](FBAInbound_GetInboundGuidanceForASIN.html "Returns inbound guidance for a list of items by ASIN.")

</div>

<div class="section">

### Datatype content

The following table shows the elements of the
<span class="keyword cmdname">ASINInboundGuidance</span>
datatype:

<div class="tablenoborder">

| Name                                                     | Description                                                                           | Required | Values                                                                                                                            |
| -------------------------------------------------------- | ------------------------------------------------------------------------------------- | -------- | --------------------------------------------------------------------------------------------------------------------------------- |
| <span class="keyword parmname">ASIN</span>               | <span class="ph">The Amazon Standard Identification Number (ASIN) of the item.</span> | Yes      | <span class="ph">Type: xs:string</span>                                                                                           |
| <span class="keyword parmname">InboundGuidance</span>    | <span class="ph">Specific inbound guidance for an item.</span>                        | Yes      | Type: [InboundGuidance](FBAInbound_Datatypes.html#InboundGuidance "Specific inbound guidance for an item.")                       |
| <span class="keyword parmname">GuidanceReasonList</span> | A list of reasons for the current inbound guidance for this item.                     | No       | Type: List of [GuidanceReason](FBAInbound_Datatypes.html#GuidanceReason "A reason for the current inbound guidance for an item.") |

</div>

</div>

</div>

</div>

<div id="ASINPrepInstructions" class="topic reference nested1">

## ASINPrepInstructions

<div class="body refbody">

<span class="ph">Item preparation instructions to help with item
sourcing decisions.</span>

<div class="section">

### Operations

The <span class="keyword cmdname">ASINPrepInstructions</span> datatype
is used in a response element of the following
    operation:

  - [GetPrepInstructionsForASIN](FBAInbound_GetPrepInstructionsForASIN.html "Returns item preparation instructions to help with item sourcing decisions.")

</div>

<div class="section">

### Datatype content

The following table shows the elements of the
<span class="keyword cmdname">ASINPrepInstructions</span> datatype:

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
<td><span class="keyword parmname">ASIN</span></td>
<td><span class="ph">The Amazon Standard Identification Number (ASIN) of the item.</span>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">BarcodeInstruction</span></td>
<td>Labeling requirements for the item.
<p><span class="keyword parmname">BarcodeInstruction</span> values:</p>
<ul>
<li>RequiresFNSKULabel - Indicates that a scannable FBA product label must be applied to the item. Cover any original bar codes on the item.</li>
<li>MustProvideSellerSKU - Amazon is unable to return labeling requirements. To get labeling requirements for items, call the <a href="FBAInbound_GetPrepInstructionsForSKU.html" class="xref" title="Returns labeling requirements and item preparation instructions to help you prepare items for an inbound shipment."><span class="keyword apiname">GetPrepInstructionsForSKU</span></a> operation.</li>
</ul>
For more information about FBA labeling requirements, see the Seller Central Help for your marketplace.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">PrepGuidance</span></td>
<td>Item preparation instructions.
<p><span class="keyword parmname">PrepGuidance</span> values:</p>
<ul>
<li>ConsultHelpDocuments - Indicates that Amazon is currently unable to determine the preparation instructions for this item. Amazon might be able to provide guidance at a future date, after evaluating the item.
<div class="note note">
<span class="notetitle">Note:</span> It remains your responsibility as a seller to ensure that the item is properly prepared for shipment to <span class="ph">Amazon's fulfillment network</span>. For more information about preparing items for shipment to the fulfillment network, see the Seller Central Help for your marketplace.
</div></li>
<li>NoAdditionalPrepRequired - Indicates that the item does not require preparation in addition to any item labeling that might be required.</li>
<li>SeePrepInstructionsList - Indicates that the item requires preparation in addition to any item labeling that might be required. See the <span class="keyword parmname">PrepInstructionList</span> response element for item preparation instructions.</li>
</ul>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">PrepInstructionList</span></td>
<td>Preparation instructions for shipping items to <span class="ph">Amazon's fulfillment network</span>.
<div class="note note">
<span class="notetitle">Note:</span> The <span class="keyword parmname">PrepInstructionList</span> element contains data only if <span class="keyword parmname">PrepGuidance</span> = SeePrepInstructionsList.
</div>
<p>Type: List of <a href="FBAInbound_Datatypes.html#PrepInstruction" class="xref" title="Preparation instructions for shipping an item to Amazon&#39;s fulfillment network.">PrepInstruction</a></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="BoxContentsFeeDetails" class="topic reference nested1">

## BoxContentsFeeDetails

<div class="body refbody">

<span class="ph">The manual processing fee per unit and total fee for a
shipment.</span>

<div class="section">

### Operations

The <span class="keyword cmdname">BoxContentsFeeDetails</span> datatype
is used in a request parameter or in a response element of the following
operations:

  - [CreateInboundShipmentPlan](../fba_inbound/FBAInbound_CreateInboundShipmentPlan.html)
  - [ListInboundShipments](FBAInbound_ListInboundShipments.html "Returns a list of inbound shipments based on criteria that you specify.")
  - [ListInboundShipmentsByNextToken](FBAInbound_ListInboundShipmentsByNextToken.html "Returns the next page of inbound shipments using the NextToken parameter.")

</div>

<div class="section">

### Datatype content

<span class="keyword cmdname">BoxContentsFeeDetails</span> contains
these
elements:

<div class="tablenoborder">

| Name                                             | Description                                                                                                                           | Required | Values                                                                          |
| ------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------- | -------- | ------------------------------------------------------------------------------- |
| <span class="keyword parmname">TotalUnits</span> | <span id="BoxContentsFeeDetails__BoxContentsFeeDetails__TotalUnits" class="ph">The number of units to ship.</span>                    | No       | <span class="ph">Type: xs:int</span>                                            |
| <span class="keyword parmname">FeePerUnit</span> | <span id="BoxContentsFeeDetails__BoxContentsFeeDetails__FeePerUnit" class="ph">The manual processing fee per unit.</span>             | No       | Type: [Amount](FBAInbound_Datatypes.html#Amount "The currency code and value.") |
| <span class="keyword parmname">TotalFee</span>   | <span id="BoxContentsFeeDetails__BoxContentsFeeDetails__TotalFee" class="ph">The total manual processing fee for the shipment.</span> | No       | Type: [Amount](FBAInbound_Datatypes.html#Amount "The currency code and value.") |

</div>

</div>

</div>

</div>

<div id="BoxContentsSource" class="topic reference nested1">

## BoxContentsSource

<div class="body refbody">

<span class="ph">Where the seller provided box contents information for
a shipment.</span> <span class="ph">This element is used only in the US
marketplace.</span>

<div class="section">

### Operations

The <span class="keyword cmdname">BoxContentsSource</span> datatype is
used in a request parameter of the following
    operations:

  - [ListInboundShipments](FBAInbound_ListInboundShipments.html "Returns a list of inbound shipments based on criteria that you specify.")
  - [ListInboundShipmentsByNextToken](FBAInbound_ListInboundShipmentsByNextToken.html "Returns the next page of inbound shipments using the NextToken parameter.")

</div>

<div class="section">

**Type:** xs:string

**Values:**

  - <span class="keyword parmname">NONE</span> - There is no box content
    information for this shipment. Amazon will manually process the box
    contents. This may incur a fee.
  - <span class="keyword parmname">FEED</span> - Box content information
    is provided through the \_POST\_FBA\_INBOUND\_CARTON\_CONTENTS\_
    feed.
  - <span class="keyword parmname">2D\_BARCODE</span> - Box content
    information is provided by a barcode on the shipment. For more
    information, see [Using 2D barcodes for box content
    information](https://sellercentral.amazon.com/gp/help/202049090) on
    Seller Central.
  - <span class="keyword parmname">INTERACTIVE</span> - Box content
    information is provided by an interactive source, such as a web
    tool.

</div>

</div>

</div>

<div id="Contact" class="topic reference nested1">

## Contact

<div class="body refbody">

<span class="ph">Contact information for the person in your organization
who is responsible for a <span class="ph">Less Than Truckload/Full
Truckload (LTL/FTL)</span> shipment.</span>

<div class="section">

### Operations

The <span class="keyword cmdname">Contact</span> datatype is used in a
request parameter or in a response element of the following
    operations:

  - [PutTransportContent](../fba_inbound/FBAInbound_PutTransportContent.html)
  - [GetTransportContent](../fba_inbound/FBAInbound_GetTransportContent.html)

</div>

<div class="section">

### Datatype content

The following table shows the elements of the
<span class="keyword cmdname">Contact</span> datatype:

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
<td>The name of the contact person.</td>
<td>Yes</td>
<td>Maximum: 50 characters
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">Phone</span></td>
<td>The phone number of the contact person.</td>
<td>Yes</td>
<td>Maximum: 20 characters
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">Email</span></td>
<td>The e-mail address of the contact person.</td>
<td>Yes</td>
<td>Maximum: 50 characters
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">Fax</span></td>
<td>The fax number of the contact person.</td>
<td>Yes</td>
<td>Maximum: 20 characters
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="Dimensions" class="topic reference nested1">

## Dimensions

<div class="body refbody">

<span class="ph">The dimension values and unit of measurement.</span>

<div class="section">

### Operations

The <span class="keyword cmdname">Dimensions</span> datatype is used in
a request parameter or in a response element of the following
operations:

  - [PutTransportContent](../fba_inbound/FBAInbound_PutTransportContent.html)
  - [GetTransportContent](../fba_inbound/FBAInbound_GetTransportContent.html)

</div>

<div class="section">

### Datatype content

The following table shows the elements of the
<span class="keyword cmdname">Dimensions</span> datatype:

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
<td><span class="keyword parmname">Unit</span></td>
<td>The unit of measurement for the dimensions.</td>
<td>Yes</td>
<td><span class="keyword parmname">Unit</span> values:
<ul>
<li>inches</li>
<li>centimeters</li>
</ul>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">Length</span></td>
<td>The length dimension.</td>
<td>Yes</td>
<td>A decimal greater than zero.
<p><span class="ph">Type: xs:decimal</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">Width</span></td>
<td>The width dimension.</td>
<td>Yes</td>
<td>A decimal greater than zero.
<p><span class="ph">Type: xs:decimal</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">Height</span></td>
<td>The height dimension.</td>
<td>Yes</td>
<td>A decimal greater than zero.
<p><span class="ph">Type: xs:decimal</span></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="GuidanceReason" class="topic reference nested1">

## GuidanceReason

<div class="body refbody">

<span class="ph">A reason for the current inbound guidance for an
item.</span>

<div class="section">

### Operations

The <span class="keyword cmdname">GuidanceReason</span> datatype is used
in a response element of the following
    operations:

  - [GetInboundGuidanceForASIN](FBAInbound_GetInboundGuidanceForASIN.html "Returns inbound guidance for a list of items by ASIN.")
  - [GetInboundGuidanceForSKU](FBAInbound_GetInboundGuidanceForSKU.html "Returns inbound guidance for a list of items by Seller SKU.")

</div>

<div class="section">

**Type:**
    xs:string

**Values:**

  - <span id="GuidanceReason__GuidanceReason_SlowMovingASIN"><span class="keyword parmname">SlowMovingASIN</span>
    - The ASIN is well stocked and/or not selling
    quickly.</span>
  - <span id="GuidanceReason__GuidanceReason_NoApplicableGuidance"><span class="keyword parmname">NoApplicableGuidance</span>
    - No applicable guidance.</span>

</div>

</div>

</div>

<div id="InboundGuidance" class="topic reference nested1">

## InboundGuidance

<div class="body refbody">

<span class="ph">Specific inbound guidance for an item.</span>

<div class="section">

### Operations

The <span class="keyword cmdname">InboundGuidance</span> datatype is
used in a response element of the following
    operations:

  - [GetInboundGuidanceForASIN](FBAInbound_GetInboundGuidanceForASIN.html "Returns inbound guidance for a list of items by ASIN.")
  - [GetInboundGuidanceForSKU](FBAInbound_GetInboundGuidanceForSKU.html "Returns inbound guidance for a list of items by Seller SKU.")

</div>

<div class="section">

**Type:**
    xs:string

**Values:**

  - <span id="InboundGuidance__InboundGuidance_InboundNotRecommended"><span class="keyword parmname">InboundNotRecommended</span>
    - Shipping this item to <span class="ph">Amazon's fulfillment
    network</span> is not
    recommended.</span>
  - <span id="InboundGuidance__InboundGuidance_InboundOK"><span class="keyword parmname">InboundOK</span>
    - Shipping this item to <span class="ph">Amazon's fulfillment
    network</span> should not cause any problems.</span>

</div>

</div>

</div>

<div id="InboundShipmentHeader" class="topic reference nested1">

## InboundShipmentHeader

<div class="body refbody">

<span class="ph">Inbound shipment information used to create and update
inbound shipments.</span>

<div class="section">

### Operations

The <span class="keyword cmdname">InboundShipmentHeader</span> datatype
is used in a request parameter of the following
    operations:

  - [CreateInboundShipment](../fba_inbound/FBAInbound_CreateInboundShipment.html)
  - [UpdateInboundShipment](FBAInbound_UpdateInboundShipment.html "Updates an existing inbound shipment.")

</div>

<div class="section">

### Datatype content

The following table shows the elements of the
<span class="keyword cmdname">InboundShipmentHeader</span> datatype:

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
<td><span class="keyword parmname">ShipmentName</span></td>
<td>The name you choose for your shipment. Use a naming convention that helps you distinguish between shipments over time, such as the date the shipment was created.</td>
<td>Yes</td>
<td><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">ShipFromAddress</span></td>
<td>Your return address.</td>
<td>Yes</td>
<td>Type: <a href="FBAInbound_Datatypes.html#Address" class="xref" title="Postal address information.">Address</a></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">DestinationFulfillmentCenterId</span></td>
<td>The identifier for the <span class="ph">Amazon fulfillment center</span> that your shipment will be shipped to. Get this identifier from the <span class="keyword parmname">InboundShipmentPlans</span> response element returned by the <span class="keyword apiname">CreateInboundShipmentPlan</span> operation.</td>
<td>Yes</td>
<td><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">LabelPrepPreference</span></td>
<td>Your preference for label preparation for an inbound shipment.</td>
<td>Yes</td>
<td><span class="ph"><span class="keyword parmname">LabelPrepPreference</span> values: </span>
<ul>
<li>SELLER_LABEL - Seller labels the items in the inbound shipment when labels are required.</li>
<li>AMAZON_LABEL_ONLY - Amazon attempts to label the items in the inbound shipment when labels are required. If Amazon determines that it does not have the information required to successfully label an item, that item is not included in the inbound shipment plan.</li>
<li>AMAZON_LABEL_PREFERRED - Amazon attempts to label the items in the inbound shipment when labels are required. If Amazon determines that it does not have the information required to successfully label an item, that item is included in the inbound shipment plan and the seller must label it.</li>
</ul>
<div class="note note">
<span class="notetitle">Note:</span> Unless you are enrolled in the FBA Label Service, SELLER_LABEL is the only valid <span class="keyword parmname">LabelPrepPreference</span> value. The FBA Label Service is not available in India (IN) and is currently in beta development in Japan (JP). For more information about the FBA Label Service, see the Seller Central Help for your marketplace.
</div>
<p>Default: SELLER_LABEL</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">AreCasesRequired</span></td>
<td>Indicates whether or not an inbound shipment contains case-packed boxes.
<div class="note note">
<span class="notetitle">Note:</span> A shipment must either contain all case-packed boxes or all individually packed boxes.
</div></td>
<td>No, unless the boxes in the shipment are case packed.</td>
<td><span class="keyword parmname">AreCasesRequired</span> values:
<ul>
<li>true – All boxes in the shipment must be case packed.</li>
<li>false – All boxes in the shipment must be individually packed.</li>
</ul>
<div class="note note">
<span class="notetitle">Note:</span> If <span class="keyword parmname">AreCasesRequired</span> = true for an inbound shipment, then the value of <span class="keyword parmname">QuantityInCase</span> must be greater than zero for every item in the shipment. Otherwise the service returns an error.
</div>
<p>Default: false</p>
<p><span class="ph">Type: xs:boolean</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">ShipmentStatus</span></td>
<td><span class="ph">The status of your inbound shipment. </span></td>
<td>Yes</td>
<td><span class="keyword parmname">ShipmentStatus</span> values when <span class="keyword cmdname">InboundShipmentHeader</span> is used with the <span class="keyword apiname">CreateInboundShipment</span> operation:
<ul>
<li>WORKING - The shipment was created by the seller, but has not yet shipped.</li>
<li>SHIPPED - The shipment was picked up by the carrier.</li>
</ul>
<div class="p">
The following is an additional <span class="keyword parmname">ShipmentStatus</span> value when <span class="keyword cmdname">InboundShipmentHeader</span> is used with the <span class="keyword apiname">UpdateInboundShipment</span> operation:
<ul>
<li>CANCELLED - The shipment was cancelled by the seller after the shipment was sent to <span class="ph">Amazon's fulfillment network</span>.</li>
</ul>
</div>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">IntendedBoxContentsSource</span></td>
<td><span id="InboundShipmentHeader__InboundShipmentHeader_IntendedBoxContentsSource" class="ph">How the seller intends to provide Carton Contents Info for this shipment.</span></td>
<td>No</td>
<td><span class="ph">This parameter is valid only in the US, Spain, UK, France, Germany, and Italy marketplaces.</span> Specifying <span class="keyword parmname">IntendedBoxContentsSource</span> in other marketplaces results in an error.
<p><span class="keyword parmname">IntendedBoxContentsSource</span> values: NONE, FEED, and 2D_BARCODE</p>
<p>Default: NONE</p>
<p>Type: <a href="FBAInbound_Datatypes.html#IntendedBoxContentsSource" class="xref" title="How the seller intends to provide box contents information for a shipment.">IntendedBoxContentsSource</a></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="InboundShipmentInfo" class="topic reference nested1">

## InboundShipmentInfo

<div class="body refbody">

<span class="ph">Information about your inbound shipments. Returned by
the <span class="keyword apiname">ListInboundShipments</span>
operation.</span>

<div class="section">

### Operations

The <span class="keyword cmdname">InboundShipmentInfo</span> datatype is
used in a response element of the following
    operations:

  - [ListInboundShipments](FBAInbound_ListInboundShipments.html "Returns a list of inbound shipments based on criteria that you specify.")
  - [ListInboundShipmentsByNextToken](FBAInbound_ListInboundShipmentsByNextToken.html "Returns the next page of inbound shipments using the NextToken parameter.")

</div>

<div class="section">

### Datatype content

The following table shows the elements of the
<span class="keyword cmdname">InboundShipmentInfo</span> datatype:

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
<td>The <span class="keyword parmname">ShipmentId</span> submitted in the request.</td>
<td>No</td>
<td><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">ShipmentName</span></td>
<td>A unique name that you provide for your inbound shipment.</td>
<td>No</td>
<td><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">ShipFromAddress</span></td>
<td>Your return address.</td>
<td>Yes</td>
<td>Type: <a href="FBAInbound_Datatypes.html#Address" class="xref" title="Postal address information.">Address</a></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">DestinationFulfillmentCenterId</span></td>
<td>An <span class="ph">Amazon fulfillment center</span> identifier created by Amazon.</td>
<td>No</td>
<td><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">LabelPrepType</span></td>
<td>The type of label preparation that is required for your inbound shipment.</td>
<td>No</td>
<td><span class="keyword parmname">LabelPrepType</span> values:
<ul>
<li>NO_LABEL - No label preparation is required. All items in this shipment will be handled as stickerless, commingled inventory. Note that stickerless, commingled inventory is not available for India (IN). IN sellers must label their items before shipping them to <span class="ph">Amazon's fulfillment network</span>.</li>
<li>SELLER_LABEL - Label preparation by the seller is required.</li>
<li>AMAZON_LABEL - Label preparation by Amazon is required.</li>
</ul>
<div id="InboundShipmentInfo__LabelPrepType_values_note" class="note note">
<span class="notetitle">Note:</span> AMAZON_LABEL is available only if you are enrolled in the FBA Label Service. The FBA Label Service is not available in India (IN) and is currently in beta development in Japan (JP). For more information about the FBA Label Service, see the Seller Central Help for your marketplace.
</div>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">ShipmentStatus</span></td>
<td><span class="ph">The status of your inbound shipment. </span></td>
<td>No</td>
<td><span class="keyword parmname">ShipmentStatus</span> values:
<ul>
<li>WORKING - The shipment was created by the seller, but has not yet shipped.</li>
<li>SHIPPED - The shipment was picked up by the carrier.</li>
<li>IN_TRANSIT - The carrier has notified the <span class="ph">Amazon fulfillment center</span> that it is aware of the shipment.</li>
<li>DELIVERED - The shipment was delivered by the carrier to the <span class="ph">Amazon fulfillment center</span>.</li>
<li>CHECKED_IN - The shipment was checked-in at the receiving dock of the <span class="ph">Amazon fulfillment center</span>.</li>
<li>RECEIVING - The shipment has arrived at the <span class="ph">Amazon fulfillment center</span>, but not all items have been marked as received.</li>
<li>CLOSED - The shipment has arrived at the <span class="ph">Amazon fulfillment center</span> and all items have been marked as received.</li>
<li>CANCELLED - The shipment was cancelled by the seller after the shipment was sent to the <span class="ph">Amazon fulfillment center</span>.</li>
<li>DELETED - The shipment was cancelled by the seller before the shipment was sent to the <span class="ph">Amazon fulfillment center</span>.</li>
<li>ERROR - There was an error with the shipment and it was not processed by Amazon.</li>
</ul>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">AreCasesRequired</span></td>
<td>Indicates whether or not an inbound shipment contains case-packed boxes. When <span class="keyword parmname">AreCasesRequired</span> = true for an inbound shipment, all items in the inbound shipment must be case packed.</td>
<td>Yes.</td>
<td><span class="keyword parmname">AreCasesRequired</span> values:
<ul>
<li>true All of the boxes in the inbound shipment are case packed.</li>
<li>false None of the boxes in the inbound shipment are case packed.</li>
</ul>
Default: false
<p><span class="ph">Type: xs:boolean</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">ConfirmedNeedByDate</span></td>
<td>Date that the shipment must arrive at an <span class="ph">Amazon fulfillment center</span> to avoid delivery promise breaks for pre-ordered items. For more information, see <a href="FBAInbound_GetPreorderInfo.html" class="xref" title="Returns pre-order information, including dates, that a seller needs before confirming a shipment for pre-order. Also indicates if a shipment has already been confirmed for pre-order.">GetPreorderInfo</a>. Pre-orders are only available in India and Japan.</td>
<td>No. Returned only for shipments that have been confirmed for pre-order.</td>
<td>In YYYY-MM-DD format.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">BoxContentsSource</span></td>
<td><span class="ph">Where the seller provided box contents information for a shipment.</span> This is only returned for shipments to US, Spain, UK, France, Germany, and Italy fulfillment centers.</td>
<td>No</td>
<td><span class="keyword parmname">BoxContentsSource</span> values: NONE, FEED, 2D_BARCODE, and INTERACTIVE
<p>Type: <a href="FBAInbound_Datatypes.html#BoxContentsSource" class="xref" title="Where the seller provided box contents information for a shipment. This element is used only in the US marketplace.">BoxContentsSource</a></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">EstimatedBoxContentsFee</span></td>
<td><span id="InboundShipmentInfo__d9787e1682" class="ph">An estimate of the manual processing fee charged by Amazon for boxes without box content information. This is only returned when <span class="keyword parmname">BoxContentsSource</span> is NONE.</span></td>
<td>No</td>
<td>Type: <a href="FBAInbound_Datatypes.html#BoxContentsFeeDetails" class="xref" title="The manual processing fee per unit and total fee for a shipment.">BoxContentsFeeDetails</a></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="InboundShipmentItem" class="topic reference nested1">

## InboundShipmentItem

<div class="body refbody">

<span class="ph">Item information for an inbound shipment. Submitted
with a call to the
<span class="keyword apiname">CreateInboundShipment</span> or
<span class="keyword apiname">UpdateInboundShipment</span>
operation.</span>

<div class="section">

### Operations

The <span class="keyword cmdname">InboundShipmentItem</span> datatype is
used in a request parameter or in a response element of the following
operations:

  - [CreateInboundShipment](../fba_inbound/FBAInbound_CreateInboundShipment.html)
  - [UpdateInboundShipment](FBAInbound_UpdateInboundShipment.html "Updates an existing inbound shipment.")
  - [ListInboundShipmentItems](FBAInbound_ListInboundShipmentItems.html "Returns a list of items in a specified inbound shipment, or a list of items that were updated within a specified time frame.")
  - [ListInboundShipmentItemsByNextToken](FBAInbound_ListInboundShipmentItemsByNextToken.html "Returns the next page of inbound shipment items using the NextToken parameter.")

</div>

<div class="section">

### Datatype content

The following table shows the elements of the
<span class="keyword cmdname">InboundShipmentItem</span> datatype:

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
<td><span class="ph">A shipment identifier originally returned by the <span class="keyword apiname">CreateInboundShipmentPlan</span> operation.</span></td>
<td>No</td>
<td>Read-only value. Any <span class="keyword parmname">ShipmentId</span> input value is ignored in the <span class="keyword parmname">InboundShipmentItems</span> request parameter of the <span class="keyword apiname">CreateInboundShipment</span> and <span class="keyword apiname">UpdateInboundShipment</span> operations.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">SellerSKU</span></td>
<td><span class="ph">The Seller SKU of the item.</span></td>
<td>Yes</td>
<td><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">FulfillmentNetworkSKU</span></td>
<td><span class="ph"><span class="ph">Amazon's fulfillment network</span> SKU of the item.</span></td>
<td>No</td>
<td>Read-only value. Any <span class="keyword parmname">FulfillmentNetworkSKU</span> input value is ignored in the <span class="keyword parmname">InboundShipmentItems</span> request parameter of the <span class="keyword apiname">CreateInboundShipment</span> and <span class="keyword apiname">UpdateInboundShipment</span> operations.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">QuantityShipped</span></td>
<td>The item quantity that you are shipping.</td>
<td>Yes</td>
<td><span class="ph">Type: xs:int</span></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">QuantityReceived</span></td>
<td>The item quantity that has been received at an <span class="ph">Amazon fulfillment center</span>.</td>
<td>No</td>
<td>Read-only value. Any <span class="keyword parmname">QuantityReceived</span> input value is ignored in the <span class="keyword parmname">InboundShipmentItems</span> request parameter of the <span class="keyword apiname">CreateInboundShipment</span> and <span class="keyword apiname">UpdateInboundShipment</span> operations.
<p><span class="ph">Type: xs:int</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">QuantityInCase</span></td>
<td>The item quantity in each case, for case-packed items. Note that <span class="keyword parmname">QuantityInCase</span> multiplied by the number of boxes in the inbound shipment equals <span class="keyword parmname">QuantityShipped</span>. Also note that all of the boxes of an inbound shipment must either be case packed or individually packed. For that reason, when you submit the <span class="keyword apiname">CreateInboundShipment</span> or the <span class="keyword apiname">UpdateInboundShipment</span> operation, the value of <span class="keyword parmname">QuantityInCase</span> must be provided for every item in the shipment or for none of the items in the shipment.</td>
<td>No, unless you specified <span class="keyword parmname">QuantityInCase</span> when you submitted the <span class="keyword apiname">CreateInboundShipmentPlan</span> operation.
<p><span class="keyword parmname">QuantityInCase</span> is always returned by the <span class="keyword apiname">ListShipmentItems</span> and <span class="keyword apiname">ListShipmentItemsByNextToken</span> operations. If you specified <span class="keyword parmname">AreCasesRequired</span> = false when you submitted the <span class="keyword apiname">CreateInboundShipment</span> or <span class="keyword apiname">UpdateInboundShipment</span> operation, <span class="keyword parmname">QuantityInCase</span> will be returned as 0.</p></td>
<td>If <span class="keyword parmname">QuantityInCase</span> is specified, its value must be a divisor of <span class="keyword parmname">QuantityShipped</span>.
<p><span class="ph">Type: xs:int</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">PrepDetailsList</span></td>
<td>A list of preparation instructions, and who is responsible for each preparation.</td>
<td>No</td>
<td>Type: List of <a href="FBAInbound_Datatypes.html#PrepDetails" class="xref" title="A preparation instruction, and who is responsible for that preparation.">PrepDetails</a></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">ReleaseDate</span></td>
<td>The date that a pre-order item will be available for sale. For more information, see <a href="FBAInbound_GetPreorderInfo.html" class="xref" title="Returns pre-order information, including dates, that a seller needs before confirming a shipment for pre-order. Also indicates if a shipment has already been confirmed for pre-order.">GetPreorderInfo</a>. Pre-orders are only available in India and Japan.</td>
<td>No</td>
<td>In YYYY-MM-DD format.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="InboundShipmentPlan" class="topic reference nested1">

## InboundShipmentPlan

<div class="body refbody">

<span class="ph">Inbound shipment information used to create an inbound
shipment. Returned by the
<span class="keyword apiname">CreateInboundShipmentPlan</span>
operation.</span>

<div class="section">

### Operations

The <span class="keyword cmdname">InboundShipmentPlan</span> datatype is
used in a response element of the following
    operation:

  - [CreateInboundShipmentPlan](../fba_inbound/FBAInbound_CreateInboundShipmentPlan.html)

</div>

<div class="section">

### Datatype content

The following table shows the elements of the
<span class="keyword cmdname">InboundShipmentPlan</span> datatype:

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
<td><span class="ph">A shipment identifier originally returned by the <span class="keyword apiname">CreateInboundShipmentPlan</span> operation.</span></td>
<td>Yes</td>
<td><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">DestinationFulfillmentCenterId</span></td>
<td>An <span class="ph">Amazon fulfillment center</span> identifier created by Amazon.</td>
<td>Yes</td>
<td><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">ShipToAddress</span></td>
<td>The address of the <span class="ph">Amazon fulfillment center</span> to ship your items to.</td>
<td>Yes</td>
<td>Type: <a href="FBAInbound_Datatypes.html#Address" class="xref" title="Postal address information.">Address</a></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">LabelPrepType</span></td>
<td>The type of label preparation that is required for your inbound shipment.</td>
<td>Yes</td>
<td><span class="ph"><span class="keyword parmname">LabelPrepType</span> values:</span>
<ul>
<li>NO_LABEL - No label preparation is required. All items in this shipment will be handled as stickerless, commingled inventory. Note that stickerless, commingled inventory is not available for India (IN). IN sellers must label their items before shipping them to <span class="ph">Amazon's fulfillment network</span>.</li>
<li>SELLER_LABEL - Label preparation by the seller is required.</li>
<li>AMAZON_LABEL - Label preparation by Amazon is required.</li>
</ul>
<div class="note note">
<span class="notetitle">Note:</span> AMAZON_LABEL is available only if you are enrolled in the FBA Label Service. The FBA Label Service is currently in beta development in Japan (JP). For more information about the FBA Label Service, see the Seller Central Help for your marketplace.
</div>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">Items</span></td>
<td>SKU and quantity information for the items in your shipment.</td>
<td>Yes</td>
<td>Type: <a href="FBAInbound_Datatypes.html#InboundShipmentPlanItem" class="xref" title="Item information used to create an inbound shipment. Returned by the CreateInboundShipmentPlan operation.">InboundShipmentPlanItem</a></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">EstimatedBoxContentsFee</span></td>
<td><span id="InboundShipmentPlan__d9787e1682" class="ph">An estimate of the manual processing fee charged by Amazon for boxes without box content information. This is only returned when <span class="keyword parmname">BoxContentsSource</span> is NONE.</span></td>
<td>No</td>
<td>Type: <a href="FBAInbound_Datatypes.html#BoxContentsFeeDetails" class="xref" title="The manual processing fee per unit and total fee for a shipment.">BoxContentsFeeDetails</a></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="InboundShipmentPlanItem" class="topic reference nested1">

## InboundShipmentPlanItem

<div class="body refbody">

<span class="ph">Item information used to create an inbound shipment.
Returned by the
<span class="keyword apiname">CreateInboundShipmentPlan</span>
operation.</span>

<div class="section">

### Operations

The <span class="keyword cmdname">InboundShipmentItem</span> datatype is
used in a response element of the following
    operation:

  - [CreateInboundShipmentPlan](../fba_inbound/FBAInbound_CreateInboundShipmentPlan.html)

</div>

<div class="section">

### Datatype content

The following table shows the elements of the
<span class="keyword cmdname">InboundShipmentPlanItem</span> datatype:

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
<td>Yes</td>
<td>One of the <span class="keyword parmname">SellerSKU</span> values that you included with the <span class="keyword apiname">CreateInboundShipmentPlan</span> operation.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">FulfillmentNetworkSKU</span></td>
<td><span class="ph"><span class="ph">Amazon's fulfillment network</span> SKU of the item.</span></td>
<td>Yes</td>
<td>The <span class="keyword parmname">FulfillmentNetworkSKU</span> that Amazon assigned to the item.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">Quantity</span></td>
<td>The item quantity that you are shipping.</td>
<td>Yes</td>
<td>The <span class="keyword parmname">Quantity</span> value that you included with the item using the <span class="keyword apiname">CreateInboundShipmentPlan</span> operation.
<p><span class="ph">Type: xs:int</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">PrepDetailsList</span></td>
<td>A list of preparation instructions, and who is responsible for each preparation.</td>
<td>No</td>
<td>Type: List of <a href="FBAInbound_Datatypes.html#PrepDetails" class="xref" title="A preparation instruction, and who is responsible for that preparation.">PrepDetails</a></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="InboundShipmentPlanRequestItem" class="topic reference nested1">

## InboundShipmentPlanRequestItem

<div class="body refbody">

<span class="ph">Item information for creating an inbound shipment plan.
Submitted with a call to the
<span class="keyword apiname">CreateInboundShipmentPlan</span>
operation.</span>

<div class="section">

### Operations

The <span class="keyword cmdname">InboundShipmentPlanRequestItem</span>
datatype is used in a request parameter of the following
    operation:

  - [CreateInboundShipmentPlan](../fba_inbound/FBAInbound_CreateInboundShipmentPlan.html)

</div>

<div class="section">

### Datatype content

The following table shows the elements of the
<span class="keyword cmdname">InboundShipmentPlanRequestItem</span>
datatype:

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
<td>Yes</td>
<td>Maximum: 200
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">ASIN</span></td>
<td><span class="ph">The Amazon Standard Identification Number (ASIN) of the item.</span></td>
<td>No</td>
<td>A valid <span class="keyword parmname">ASIN</span> value.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">Condition</span></td>
<td><span class="ph">The condition of the item.</span></td>
<td>No</td>
<td><span class="ph"><span class="keyword parmname">Condition</span> values:</span>
<ul>
<li>NewItem</li>
<li>NewWithWarranty</li>
<li>NewOEM</li>
<li>NewOpenBox</li>
<li>UsedLikeNew</li>
<li>UsedVeryGood</li>
<li>UsedGood</li>
<li>UsedAcceptable</li>
<li>UsedPoor</li>
<li>UsedRefurbished</li>
<li>CollectibleLikeNew</li>
<li>CollectibleVeryGood</li>
<li>CollectibleGood</li>
<li>CollectibleAcceptable</li>
<li>CollectiblePoor</li>
<li>RefurbishedWithWarranty</li>
<li>Refurbished</li>
<li>Club</li>
</ul>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">Quantity</span></td>
<td><span class="ph">The item quantity.</span></td>
<td>Yes</td>
<td><span class="ph">Type: xs:int</span></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">QuantityInCase</span></td>
<td>The item quantity in each case, for case-packed items. Note that <span class="keyword parmname">QuantityInCase</span> multiplied by the number of cases in the inbound shipment equals <span class="keyword parmname">Quantity</span>. Also note that all of the boxes of an inbound shipment must either be case packed or individually packed. For that reason, when you submit the <span class="keyword apiname">CreateInboundShipmentPlan</span> operation, the value of <span class="keyword parmname">QuantityInCase</span> must be provided for every item in the shipment or for none of the items in the shipment.</td>
<td>No</td>
<td>If <span class="keyword parmname">QuantityInCase</span> is specified, its value must be a divisor of <span class="keyword parmname">Quantity</span>.
<p><span class="ph">Type: xs:int</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">PrepDetailsList</span></td>
<td>A list of preparation instructions, and who is responsible for each preparation.</td>
<td>No</td>
<td>Type: List of <a href="FBAInbound_Datatypes.html#PrepDetails" class="xref" title="A preparation instruction, and who is responsible for that preparation.">PrepDetails</a></td>
</tr>
</tbody>
</table>

</div>

<div class="note note">

<span class="notetitle">Note:</span> <span class="ph">Amazon recommends
that you create listings for all of the items that you want to include
in an inbound shipment plan before calling the
<span class="keyword apiname">CreateInboundShipmentPlan</span>
operation. After you have created listings for the items that you want
to include in the
<span class="keyword apiname">CreateInboundShipmentPlan</span>
operation, include only the
<span class="keyword parmname">SellerSKU</span> and
<span class="keyword parmname">Quantity</span> request parameters when
calling the operation. Do not include the
<span class="keyword parmname">ASIN</span> or
<span class="keyword parmname">Condition</span> request
parameters.</span>

</div>

</div>

</div>

</div>

<div id="IntendedBoxContentsSource" class="topic reference nested1">

## IntendedBoxContentsSource

<div class="body refbody">

<span class="ph">How the seller intends to provide box contents
information for a shipment.</span>

<div class="section">

### Operations

The <span class="keyword cmdname">IntendedBoxContentsSource</span>
datatype is used in a request parameter of the following
    operations:

  - [CreateInboundShipment](../fba_inbound/FBAInbound_CreateInboundShipment.html)
  - [UpdateInboundShipment](FBAInbound_UpdateInboundShipment.html "Updates an existing inbound shipment.")

</div>

<div class="section">

**Type:**
    xs:string

**Values:**

  - <span id="IntendedBoxContentsSource__IntendedBoxContentsSource_NONE"><span class="keyword parmname">NONE</span>
    - There is no box content information for this shipment. Amazon will
    manually process the box contents. This may incur a
    fee.</span>
  - <span id="IntendedBoxContentsSource__IntendedBoxContentsSource_FEED"><span class="keyword parmname">FEED</span>
    - Box content information is provided through the
    \_POST\_FBA\_INBOUND\_CARTON\_CONTENTS\_
    feed.</span>
  - <span id="IntendedBoxContentsSource__IntendedBoxContentsSource_2D_BARCODE"><span class="keyword parmname">2D\_BARCODE</span>
    - Box content information is provided by a barcode on the shipment.
    For more information, see [Using 2D barcodes for box content
    information](https://sellercentral.amazon.com/gp/help/202049090) on
    Seller Central.</span>

</div>

</div>

</div>

<div id="InvalidASIN" class="topic reference nested1">

## InvalidASIN

<div class="body refbody">

<span class="ph">An invalid ASIN and the reason it is invalid.</span>

<div class="section">

### Operations

The <span class="keyword cmdname">InvalidASIN</span> datatype is used in
a response element of the following
    operation:

  - [GetPrepInstructionsForASIN](FBAInbound_GetPrepInstructionsForASIN.html "Returns item preparation instructions to help with item sourcing decisions.")

</div>

<div class="section">

### Datatype content

The following table shows the elements of the
<span class="keyword cmdname">InvalidASIN</span> datatype:

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
<td><span class="keyword parmname">ASIN</span></td>
<td><span class="ph">The Amazon Standard Identification Number (ASIN) of the item.</span>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">ErrorReason</span></td>
<td>The reason that the ASIN is invalid.
<p><span class="keyword parmname">ErrorReason</span> values:</p>
<ul>
<li>DoesNotExist - Indicates that the ASIN is not included in the Amazon product catalog for any of the marketplaces that you participate in.</li>
</ul></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="InvalidSKU" class="topic reference nested1">

## InvalidSKU

<div class="body refbody">

<span class="ph">An invalid Seller SKU and the reason it is
invalid.</span>

<div class="section">

### Operations

The <span class="keyword cmdname">InvalidSKU</span> datatype is used in
a response element of the following
    operation:

  - [GetPrepInstructionsForSKU](FBAInbound_GetPrepInstructionsForSKU.html "Returns labeling requirements and item preparation instructions to help you prepare items for an inbound shipment.")

</div>

<div class="section">

### Datatype content

The following table shows the elements of the
<span class="keyword cmdname">InvalidSKU</span> datatype:

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
<td><span class="keyword parmname">SellerSKU</span></td>
<td><span class="ph">The Seller SKU of the item.</span>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">ErrorReason</span></td>
<td>The reason that the Seller SKU is invalid.
<p><span class="keyword parmname">ErrorReason</span> values:</p>
<ul>
<li>DoesNotExist - Indicates that you have never used this Seller SKU to list an item on Amazon's retail website.</li>
</ul></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="NonPartneredLtlDataInput" class="topic reference nested1">

## NonPartneredLtlDataInput

<div class="body refbody">

<span class="ph">Information that you provide to Amazon about a
<span class="ph">Less Than Truckload/Full Truckload (LTL/FTL)</span>
shipment by a carrier that has not partnered with Amazon.</span>

<div class="section">

### Operations

The <span class="keyword cmdname">NonPartneredLtlDataInput</span>
datatype is used in a request parameter of the following
    operation:

  - [PutTransportContent](../fba_inbound/FBAInbound_PutTransportContent.html)

</div>

<div class="section">

### Datatype content

The following table shows the elements of the
<span class="keyword cmdname">NonPartneredLtlDataInput</span> datatype:

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
<td><span class="keyword parmname">CarrierName</span></td>
<td>The carrier that you are using for your inbound shipment.</td>
<td>Yes</td>
<td><span class="keyword parmname">CarrierName</span> values in the United Kingdom (UK):
<ul>
<li>BUSINESS_POST</li>
<li>DHL_AIRWAYS_INC</li>
<li>DHL_UK</li>
<li>PARCELFORCE</li>
<li>DPD</li>
<li>TNT_LOGISTICS_CORPORATION</li>
<li>TNT</li>
<li>YODEL</li>
<li>UNITED_PARCEL_SERVICE_INC</li>
<li>OTHER</li>
</ul>
<p><span class="keyword parmname">CarrierName</span> values in the United States (US):</p>
<ul>
<li>DHL_EXPRESS_USA_INC</li>
<li>FEDERAL_EXPRESS_CORP</li>
<li>UNITED_STATES_POSTAL_SERVICE</li>
<li>UNITED_PARCEL_SERVICE_INC</li>
<li>OTHER</li>
</ul>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">ProNumber</span></td>
<td>The PRO number assigned to your shipment by the carrier.</td>
<td>Yes</td>
<td>A string of numbers, seven to 10 characters in length.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="NonPartneredLtlDataOutput" class="topic reference nested1">

## NonPartneredLtlDataOutput

<div class="body refbody">

<span class="ph">Information returned by Amazon about a
<span class="ph">Less Than Truckload/Full Truckload (LTL/FTL)</span>
shipment shipped by a carrier that has not partnered with Amazon.</span>

<div class="section">

### Operations

The <span class="keyword cmdname">NonPartneredLtlDataOutput</span>
datatype is used in a response element of the following
    operation:

  - [GetTransportContent](../fba_inbound/FBAInbound_GetTransportContent.html)

</div>

<div class="section">

### Datatype content

The following table shows the elements of the
<span class="keyword cmdname">NonPartneredLtlDataOutput</span> datatype:

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
<td><span class="keyword parmname">CarrierName</span></td>
<td>The carrier that you are using for your inbound shipment.</td>
<td>Yes</td>
<td><span class="keyword parmname">CarrierName</span> values in the United Kingdom (UK):
<ul>
<li>BUSINESS_POST</li>
<li>DHL_AIRWAYS_INC</li>
<li>DHL_UK</li>
<li>PARCELFORCE</li>
<li>DPD</li>
<li>TNT_LOGISTICS_CORPORATION</li>
<li>TNT</li>
<li>YODEL</li>
<li>UNITED_PARCEL_SERVICE_INC</li>
<li>OTHER</li>
</ul>
<p><span class="keyword parmname">CarrierName</span> values in the United States (US):</p>
<ul>
<li>DHL_EXPRESS_USA_INC</li>
<li>FEDERAL_EXPRESS_CORP</li>
<li>UNITED_STATES_POSTAL_SERVICE</li>
<li>UNITED_PARCEL_SERVICE_INC</li>
<li>OTHER</li>
</ul>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">ProNumber</span></td>
<td>The PRO number assigned to your shipment by the carrier.</td>
<td>Yes</td>
<td>A string of numbers, seven to 10 characters in length.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="NonPartneredSmallParcelDataInput" class="topic reference nested1">

## NonPartneredSmallParcelDataInput

<div class="body refbody">

<span class="ph">Information that you provide to Amazon about a
<span class="ph">Small Parcel</span> shipment shipped by a carrier that
has not partnered with Amazon.</span>

<div class="section">

### Operations

The
<span class="keyword cmdname">NonPartneredSmallParcelDataInput</span>
datatype is used in a request parameter of the following
    operation:

  - [PutTransportContent](../fba_inbound/FBAInbound_PutTransportContent.html)

</div>

<div class="section">

### Datatype content

The following table shows the elements of the
<span class="keyword cmdname">NonPartneredSmallParcelDataInput</span>
datatype:

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
<td><span class="keyword parmname">CarrierName</span></td>
<td>The carrier that you are using for your inbound shipment.</td>
<td>Yes</td>
<td><span class="keyword parmname">CarrierName</span> values in the United Kingdom (UK):
<ul>
<li>BUSINESS_POST</li>
<li>DHL_AIRWAYS_INC</li>
<li>DHL_UK</li>
<li>PARCELFORCE</li>
<li>DPD</li>
<li>TNT_LOGISTICS_CORPORATION</li>
<li>TNT</li>
<li>YODEL</li>
<li>UNITED_PARCEL_SERVICE_INC</li>
<li>OTHER</li>
</ul>
<p><span class="keyword parmname">CarrierName</span> values in the United States (US):</p>
<ul>
<li>DHL_EXPRESS_USA_INC</li>
<li>FEDERAL_EXPRESS_CORP</li>
<li>UNITED_STATES_POSTAL_SERVICE</li>
<li>UNITED_PARCEL_SERVICE_INC</li>
<li>OTHER</li>
</ul>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">PackageList</span></td>
<td>A list of tracking numbers provided by the carrier.</td>
<td>Yes</td>
<td>Type: List of <a href="FBAInbound_Datatypes.html#NonPartneredSmallParcelPackageInput" class="xref" title="The tracking number of the package, provided by the carrier.">NonPartneredSmallParcelPackageInput</a></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="NonPartneredSmallParcelDataOutput" class="topic reference nested1">

## NonPartneredSmallParcelDataOutput

<div class="body refbody">

<span class="ph">Information returned by Amazon about a
<span class="ph">Small Parcel</span> shipment by a carrier that has not
partnered with Amazon.</span>

<div class="section">

### Operations

The
<span class="keyword cmdname">NonPartneredSmallParcelDataOutput</span>
datatype is used in a response element of the following
    operation:

  - [GetTransportContent](../fba_inbound/FBAInbound_GetTransportContent.html)

</div>

<div class="section">

### Datatype content

The following table shows the elements of the
<span class="keyword cmdname">NonPartneredSmallParcelDataOutput</span>
datatype:

<div class="tablenoborder">

| Name                                              | Description                                                                                      | Required | Values                                                                                                                                                                                   |
| ------------------------------------------------- | ------------------------------------------------------------------------------------------------ | -------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| <span class="keyword parmname">PackageList</span> | A list of packages, including carrier, tracking number, and status information for each package. | Yes      | Type: List of [NonPartneredSmallParcelPackageOutput](FBAInbound_Datatypes.html#NonPartneredSmallParcelPackageOutput "Carrier, tracking number, and status information for the package.") |

</div>

</div>

</div>

</div>

<div id="NonPartneredSmallParcelPackageInput" class="topic reference nested1">

## NonPartneredSmallParcelPackageInput

<div class="body refbody">

<span class="ph">The tracking number of the package, provided by the
carrier.</span>

<div class="section">

### Operations

The
<span class="keyword cmdname">NonPartneredSmallParcelPackageInput</span>
datatype is used in a request parameter of the following
    operation:

  - [PutTransportContent](../fba_inbound/FBAInbound_PutTransportContent.html)

</div>

<div class="section">

### Datatype content

The following table shows the elements of the
<span class="keyword cmdname">NonPartneredSmallParcelPackageInput</span>
datatype:

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
<td><span class="keyword parmname">TrackingId</span></td>
<td>The tracking number of the package, provided by the carrier.</td>
<td>Yes</td>
<td>Maximum: 30 characters
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="NonPartneredSmallParcelPackageOutput" class="topic reference nested1">

## NonPartneredSmallParcelPackageOutput

<div class="body refbody">

<span class="ph">Carrier, tracking number, and status information for
the package.</span>

<div class="section">

### Operations

The
<span class="keyword cmdname">NonPartneredSmallParcelPackageOutput</span>
datatype is used in a response element of the following
    operation:

  - [GetTransportContent](../fba_inbound/FBAInbound_GetTransportContent.html)

</div>

<div class="section">

### Datatype content

The following table shows the elements of the
<span class="keyword cmdname">NonPartneredSmallParcelPackageOutput</span>
datatype:

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
<td><span class="keyword parmname">CarrierName</span></td>
<td>The carrier that you are using for your inbound shipment.</td>
<td>Yes</td>
<td><span class="keyword parmname">CarrierName</span> values in the United Kingdom (UK):
<ul>
<li>BUSINESS_POST</li>
<li>DHL_AIRWAYS_INC</li>
<li>DHL_UK</li>
<li>PARCELFORCE</li>
<li>DPD</li>
<li>TNT_LOGISTICS_CORPORATION</li>
<li>TNT</li>
<li>YODEL</li>
<li>UNITED_PARCEL_SERVICE_INC</li>
<li>OTHER</li>
</ul>
<p><span class="keyword parmname">CarrierName</span> values in the United States (US):</p>
<ul>
<li>DHL_EXPRESS_USA_INC</li>
<li>FEDERAL_EXPRESS_CORP</li>
<li>UNITED_STATES_POSTAL_SERVICE</li>
<li>UNITED_PARCEL_SERVICE_INC</li>
<li>OTHER</li>
</ul>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">TrackingId</span></td>
<td>The tracking number of the package, provided by the carrier.</td>
<td>Yes</td>
<td>Maximum: 30 characters
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">PackageStatus</span></td>
<td>The shipment status of the package.</td>
<td>Yes</td>
<td><span class="keyword parmname">PackageStatus</span> values:
<ul>
<li>SHIPPED – The carrier has picked up the package from your facility.</li>
<li>IN_TRANSIT - The carrier has made an appointment for delivery to an Amazon fulfillment center.</li>
<li>DELIVERED - The carrier has delivered the package to the loading dock of an Amazon fulfillment center.</li>
<li>CHECKED_IN - The Amazon fulfillment center has accepted delivery of the package from the carrier.</li>
<li>RECEIVING - The Amazon fulfillment center has begun the receiving process on the package.</li>
<li>CLOSED - The Amazon fulfillment center has completed the receiving process on the package.</li>
</ul>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="Pallet" class="topic reference nested1">

## Pallet

<div class="body refbody">

<span class="ph">Pallet information.</span>

<div class="section">

### Operations

The <span class="keyword cmdname">Pallet</span> datatype is used in a
request parameter or in a response element of the following
    operations:

  - [PutTransportContent](../fba_inbound/FBAInbound_PutTransportContent.html)
  - [GetTransportContent](../fba_inbound/FBAInbound_GetTransportContent.html)

</div>

<div class="section">

### Datatype content

The following table shows the elements of the
<span class="keyword cmdname">Pallet</span> datatype:

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
<td><span class="keyword parmname">Dimensions</span></td>
<td>The dimensions of the pallet.</td>
<td>Yes</td>
<td>Length and width must be 40 inches by 48 inches. Height must be less than or equal to 60 inches.
<p>Type: <a href="FBAInbound_Datatypes.html#Dimensions" class="xref" title="The dimension values and unit of measurement.">Dimensions</a></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">Weight</span></td>
<td>The weight of the pallet.</td>
<td>No</td>
<td>Type: <a href="FBAInbound_Datatypes.html#Weight" class="xref" title="The weight value and unit of measurement.">Weight</a></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">IsStacked</span></td>
<td>Indicates whether pallets will be stacked when carrier arrives for pick-up.</td>
<td>Yes</td>
<td><span class="keyword parmname">IsStacked</span> values:
<ul>
<li>true – Pallets will be stacked.</li>
<li>false - Pallets will not be stacked.</li>
</ul>
<p><span class="ph">Type: xs:boolean</span></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="PartneredEstimate" class="topic reference nested1">

## PartneredEstimate

<div class="body refbody">

<span class="ph">The estimated shipping cost for a shipment using an
Amazon-partnered carrier.</span>

<div class="section">

### Operations

The <span class="keyword cmdname">PartneredEstimate</span> datatype is
used in a response element of the following
    operation:

  - [GetTransportContent](../fba_inbound/FBAInbound_GetTransportContent.html)

</div>

<div class="section">

### Datatype content

The following table shows the elements of the
<span class="keyword cmdname">PartneredEstimate</span> datatype:

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
<td><span class="keyword parmname">Amount</span></td>
<td>The amount that the Amazon-partnered carrier will charge to ship the inbound shipment.</td>
<td>No.
<p>Returned only if the <span class="keyword parmname">TransportStatus</span> value of the inbound shipment is ESTIMATED, CONFIRMING, or CONFIRMED.</p></td>
<td>Type: <a href="#Amount" class="xref" title="The currency code and value.">Amount</a></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">ConfirmDeadline</span></td>
<td>The date by which this estimate must be confirmed. After this date the estimate is no longer valid and cannot be confirmed.</td>
<td>No.
<p>Returned only if the <span class="keyword parmname">TransportStatus</span> value of the inbound shipment is ESTIMATED.</p></td>
<td>In <span class="ph"><a href="../dev_guide/DG_ISO8601.html" class="xref">ISO 8601 date time format</a></span>.
<p><span class="ph">Type: xs:dateTime</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">VoidDeadline</span></td>
<td>The date after which a confirmed transportation request can no longer be voided. This date is 24 hours after you confirm a <span class="ph">Small Parcel</span> shipment transportation request or one hour after you confirm a <span class="ph">Less Than Truckload/Full Truckload (LTL/FTL)</span> shipment transportation request. After the void deadline passes your account will be charged for the shipping cost.</td>
<td>No.
<p>Returned only if the <span class="keyword parmname">TransportStatus</span> value of the inbound shipment is CONFIRMED.</p></td>
<td>In <span class="ph"><a href="../dev_guide/DG_ISO8601.html" class="xref">ISO 8601 date time format</a></span>.
<p><span class="ph">Type: xs:dateTime</span></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="PartneredLtlDataInput" class="topic reference nested1">

## PartneredLtlDataInput

<div class="body refbody">

<span class="ph">Information that is required by an Amazon-partnered
carrier to ship a <span class="ph">Less Than Truckload/Full Truckload
(LTL/FTL)</span> inbound shipment.</span>

<div class="section">

### Operations

The <span class="keyword cmdname">PartneredLtlDataInput</span> datatype
is used in a request parameter of the following
    operation:

  - [PutTransportContent](../fba_inbound/FBAInbound_PutTransportContent.html)

</div>

<div class="section">

### Datatype content

The following table shows the elements of the
<span class="keyword cmdname">PartneredLtlDataInput</span> datatype:

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
<td><span class="keyword parmname">Contact</span></td>
<td>Contact information for the person in your organization who is responsible for the shipment. Used by the carrier if they have questions about the shipment.</td>
<td>Yes</td>
<td>Type: <a href="FBAInbound_Datatypes.html#Contact" class="xref" title="Contact information for the person in your organization who is responsible for a Less Than Truckload/Full Truckload (LTL/FTL) shipment.">Contact</a></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">BoxCount</span></td>
<td>The number of boxes in the shipment.</td>
<td>Yes</td>
<td><span class="ph">Type: xs:int</span></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">SellerFreightClass</span></td>
<td>The freight class of the shipment. For information about determining the freight class, contact your carrier.</td>
<td>No.
<p>If you do not provide the freight class, Amazon will estimate the freight class based on the contents of the shipment.</p></td>
<td><span class="keyword parmname">SellerFreightClass</span> values: 50, 55, 60, 65, 70, 77.5, 85, 92.5, 100, 110, 125, 150, 175, 200, 250, 300, 400, 500
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">FreightReadyDate</span></td>
<td>The date that the shipment will be ready to be picked up by the carrier.</td>
<td>Yes</td>
<td>At least two days after the date that the request is made.
<p>Must be in YYYY-MM-DD format.</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">PalletList</span></td>
<td>A list of pallet descriptions.</td>
<td>No</td>
<td>Type: List of <a href="FBAInbound_Datatypes.html#Pallet" class="xref" title="Pallet information.">Pallet</a></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">TotalWeight</span></td>
<td>The total weight of the shipment.</td>
<td>No</td>
<td>Type: <a href="FBAInbound_Datatypes.html#Weight" class="xref" title="The weight value and unit of measurement.">Weight</a></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">SellerDeclaredValue</span></td>
<td>Your declaration of the total value of the inventory in the shipment.</td>
<td>No</td>
<td>Type: <a href="FBAInbound_Datatypes.html#Amount" class="xref" title="The currency code and value.">Amount</a></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="PartneredLtlDataOutput" class="topic reference nested1">

## PartneredLtlDataOutput

<div class="body refbody">

<span class="ph">Information returned by Amazon about a
<span class="ph">Less Than Truckload/Full Truckload (LTL/FTL)</span>
shipment by an Amazon-partnered carrier.</span>

<div class="section">

### Operations

The <span class="keyword cmdname">PartneredLtlDataOutput</span> datatype
is used in a response element of the following
    operation:

  - [GetTransportContent](../fba_inbound/FBAInbound_GetTransportContent.html)

</div>

<div class="section">

### Datatype content

The following table shows the elements of the
<span class="keyword cmdname">PartneredLtlDataOutput</span> datatype:

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
<td><span class="keyword parmname">Contact</span></td>
<td>Contact information for the person in your organization who is responsible for the shipment. Used by the carrier if they have questions about the shipment.</td>
<td>Yes</td>
<td>Type: <a href="FBAInbound_Datatypes.html#Contact" class="xref" title="Contact information for the person in your organization who is responsible for a Less Than Truckload/Full Truckload (LTL/FTL) shipment.">Contact</a></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">BoxCount</span></td>
<td>The number of boxes in the shipment.</td>
<td>Yes</td>
<td><span class="ph">Type: xs:int</span></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">SellerFreightClass</span></td>
<td>The freight class of the shipment. For information about determining the freight class, contact your carrier.</td>
<td>No.
<p>If you do not provide the freight class, Amazon will estimate the freight class based on the contents of the shipment.</p></td>
<td><span class="keyword parmname">SellerFreightClass</span> values: 50, 55, 60, 65, 70, 77.5, 85, 92.5, 100, 110, 125, 150, 175, 200, 250, 300, 400, 500
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">FreightReadyDate</span></td>
<td>The date that the shipment will be ready to be picked up by the carrier.</td>
<td>Yes</td>
<td>At least two days after the date that the request is made.
<p>Must be in YYYY-MM-DD format.</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">PalletList</span></td>
<td>A list of pallet descriptions.</td>
<td>Yes</td>
<td>Type: List of <a href="FBAInbound_Datatypes.html#Pallet" class="xref" title="Pallet information.">Pallet</a></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">TotalWeight</span></td>
<td>The total weight of the shipment.</td>
<td>Yes</td>
<td>Type: <a href="FBAInbound_Datatypes.html#Weight" class="xref" title="The weight value and unit of measurement.">Weight</a></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">SellerDeclaredValue</span></td>
<td>Your declaration of the total value of the inventory in the shipment.</td>
<td>No</td>
<td>Type: <a href="FBAInbound_Datatypes.html#Amount" class="xref" title="The currency code and value.">Amount</a></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">AmazonCalculatedValue</span></td>
<td>Estimate by Amazon of the total value of the inventory in the shipment.</td>
<td>No</td>
<td>Type: <a href="FBAInbound_Datatypes.html#Amount" class="xref" title="The currency code and value.">Amount</a></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">PreviewPickupDate</span></td>
<td>The estimated date that the shipment will be picked up by the carrier.</td>
<td>Yes</td>
<td>In <span class="ph"><a href="../dev_guide/DG_ISO8601.html" class="xref">ISO 8601 date time format</a></span>.
<p><span class="ph">Type: xs:dateTime</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">PreviewDeliveryDate</span></td>
<td>The estimated date that the shipment will be delivered to an Amazon fulfillment center.</td>
<td>Yes</td>
<td>In <span class="ph"><a href="../dev_guide/DG_ISO8601.html" class="xref">ISO 8601 date time format</a></span>.
<p><span class="ph">Type: xs:dateTime</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">PreviewFreightClass</span></td>
<td>The freight class of the shipment as estimated by Amazon if you did not include a freight class when you called the <span class="keyword apiname">PutTransportContent</span> operation.</td>
<td>Yes</td>
<td><span class="keyword parmname">PreviewFreightClass</span> values: 50, 55, 60, 65, 70, 77.5, 85, 92.5, 100, 110, 125, 150, 175, 200, 250, 300, 400, 500
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">AmazonReferenceId</span></td>
<td>A unique identifier created by Amazon that identifies this Amazon-partnered, <span class="ph">Less Than Truckload/Full Truckload (LTL/FTL)</span> shipment.</td>
<td>Yes</td>
<td><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">IsBillOfLadingAvailable</span></td>
<td>Indicates whether the bill of lading for the shipment is available.</td>
<td>Yes</td>
<td><span class="keyword parmname">IsBillOfLadingAvailable</span> values:
<ul>
<li>true – Bill of lading is available.</li>
<li>false – Bill of lading is not available.</li>
</ul>
<p><span class="ph">Type: xs:boolean</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">PartneredEstimate</span></td>
<td>The estimated shipping cost using an Amazon-partnered carrier.</td>
<td>No</td>
<td>Type: <a href="FBAInbound_Datatypes.html#PartneredEstimate" class="xref" title="The estimated shipping cost for a shipment using an Amazon-partnered carrier.">PartneredEstimate</a></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">CarrierName</span></td>
<td>The carrier that you are using for your inbound shipment.</td>
<td>Yes</td>
<td><span class="keyword parmname">CarrierName</span> values in the United States (US):
<ul>
<li>DHL_EXPRESS_USA_INC</li>
<li>FEDERAL_EXPRESS_CORP</li>
<li>UNITED_STATES_POSTAL_SERVICE</li>
<li>UNITED_PARCEL_SERVICE_INC</li>
<li>OTHER</li>
</ul>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="PartneredSmallParcelDataInput" class="topic reference nested1">

## PartneredSmallParcelDataInput

<div class="body refbody">

<span class="ph">Information that is required by an Amazon-partnered
carrier to ship a <span class="ph">Small Parcel</span> inbound
shipment.</span>

<div class="section">

### Operations

The <span class="keyword cmdname">PartneredSmallParcelDataInput</span>
datatype is used in a request parameter of the following
    operation:

  - [PutTransportContent](../fba_inbound/FBAInbound_PutTransportContent.html)

</div>

<div class="section">

### Datatype content

The following table shows the elements of the
<span class="keyword cmdname">PartneredSmallParcelDataInput</span>
datatype:

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
<td><span class="keyword parmname">CarrierName</span></td>
<td>Indicates the Amazon-partnered carrier that you want to use for your inbound shipment.</td>
<td>No</td>
<td><span class="keyword parmname">CarrierName</span> values in France (FR), Italy (IT), Spain (ES), the United Kingdom (UK), and the United States (US):
<ul>
<li>UNITED_PARCEL_SERVICE_INC</li>
</ul>
<p><span class="keyword parmname">CarrierName</span> values in Germany (DE):</p>
<ul>
<li>DHL_STANDARD</li>
<li>UNITED_PARCEL_SERVICE_INC</li>
</ul>
<p>Default: UNITED_PARCEL_SERVICE_INC</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">PackageList</span></td>
<td>A list of packages, including the dimensions and weight of each package.</td>
<td>Yes</td>
<td>Type: List of <a href="FBAInbound_Datatypes.html#PartneredSmallParcelPackageInput" class="xref" title="Dimension and weight information for the package.">PartneredSmallParcelPackageInput</a></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="PartneredSmallParcelDataOutput" class="topic reference nested1">

## PartneredSmallParcelDataOutput

<div class="body refbody">

<span class="ph">Information returned by Amazon about a
<span class="ph">Small Parcel</span> shipment by an Amazon-partnered
carrier.</span>

<div class="section">

### Operations

The <span class="keyword cmdname">PartneredSmallParcelDataOutput</span>
datatype is used in a response element of the following
    operation:

  - [GetTransportContent](../fba_inbound/FBAInbound_GetTransportContent.html)

</div>

<div class="section">

### Datatype content

The following table shows the elements of the
<span class="keyword cmdname">PartneredSmallParcelDataOutput</span>
datatype:

<div class="tablenoborder">

| Name                                                    | Description                                                                           | Required | Values                                                                                                                                                                        |
| ------------------------------------------------------- | ------------------------------------------------------------------------------------- | -------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| <span class="keyword parmname">PackageList</span>       | A list of packages, including shipping information from the Amazon-partnered carrier. | Yes      | Type: List of [PartneredSmallParcelPackageOutput](FBAInbound_Datatypes.html#PartneredSmallParcelPackageOutput "Dimension, weight, and shipping information for the package.") |
| <span class="keyword parmname">PartneredEstimate</span> | The estimated shipping cost using an Amazon-partnered carrier.                        | No       | Type: [PartneredEstimate](FBAInbound_Datatypes.html#PartneredEstimate "The estimated shipping cost for a shipment using an Amazon-partnered carrier.")                        |

</div>

</div>

</div>

</div>

<div id="PartneredSmallParcelPackageInput" class="topic reference nested1">

## PartneredSmallParcelPackageInput

<div class="body refbody">

<span class="ph">Dimension and weight information for the
package.</span>

<div class="section">

### Operations

The
<span class="keyword cmdname">PartneredSmallParcelPackageInput</span>
datatype is used in a request parameter of the following
    operation:

  - [PutTransportContent](../fba_inbound/FBAInbound_PutTransportContent.html)

</div>

<div class="section">

### Datatype content

The following table shows the elements of the
<span class="keyword cmdname">PartneredSmallParcelPackageInput</span>
datatype:

<div class="tablenoborder">

| Name                                             | Description                    | Required | Values                                                                                                   |
| ------------------------------------------------ | ------------------------------ | -------- | -------------------------------------------------------------------------------------------------------- |
| <span class="keyword parmname">Dimensions</span> | The dimensions of the package. | Yes      | Type: [Dimensions](FBAInbound_Datatypes.html#Dimensions "The dimension values and unit of measurement.") |
| <span class="keyword parmname">Weight</span>     | The weight of the package.     | Yes      | Type: [Weight](FBAInbound_Datatypes.html#Weight "The weight value and unit of measurement.")             |

</div>

</div>

</div>

</div>

<div id="PartneredSmallParcelPackageOutput" class="topic reference nested1">

## PartneredSmallParcelPackageOutput

<div class="body refbody">

<span class="ph">Dimension, weight, and shipping information for the
package.</span>

<div class="section">

### Operations

The
<span class="keyword cmdname">PartneredSmallParcelPackageOutput</span>
datatype is used in a response element of the following
    operation:

  - [GetTransportContent](../fba_inbound/FBAInbound_GetTransportContent.html)

</div>

<div class="section">

### Datatype content

The following table shows the elements of the
<span class="keyword cmdname">PartneredSmallParcelPackageOutput</span>
datatype:

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
<td><span class="keyword parmname">Dimensions</span></td>
<td>The dimensions of the package.</td>
<td>Yes</td>
<td>Type: <a href="FBAInbound_Datatypes.html#Dimensions" class="xref" title="The dimension values and unit of measurement.">Dimensions</a></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">Weight</span></td>
<td>The weight of the package.</td>
<td>Yes</td>
<td>Type: <a href="FBAInbound_Datatypes.html#Weight" class="xref" title="The weight value and unit of measurement.">Weight</a></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">TrackingId</span></td>
<td>The tracking number of the package, provided by the carrier.</td>
<td>Yes</td>
<td>Maximum: 30 characters
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">PackageStatus</span></td>
<td>The shipment status of the package.</td>
<td>Yes</td>
<td><span class="keyword parmname">PackageStatus</span> values:
<ul>
<li>SHIPPED – The carrier has picked up the package from your facility.</li>
<li>IN_TRANSIT - The carrier has made an appointment for delivery to an Amazon fulfillment center.</li>
<li>DELIVERED - The carrier has delivered the package to the loading dock of an Amazon fulfillment center.</li>
<li>CHECKED_IN - The Amazon fulfillment center has accepted delivery of the package from the carrier.</li>
<li>RECEIVING - The Amazon fulfillment center has begun the receiving process on the package.</li>
<li>CLOSED - The Amazon fulfillment center has completed the receiving process on the package.</li>
</ul>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">CarrierName</span></td>
<td>The carrier specified with a previous call to <span class="keyword apiname">PutTransportContent</span>.</td>
<td>Yes</td>
<td><span class="ph">Type: xs:string</span></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="PrepDetails" class="topic reference nested1">

## PrepDetails

<div class="body refbody">

<span class="ph">A preparation instruction, and who is responsible for
that preparation.</span>

<div class="section">

### Operations

The <span class="keyword cmdname">PrepDetails</span> PrepDetails is used
in a request and response element of the following
    operations:

  - [CreateInboundShipmentPlan](../fba_inbound/FBAInbound_CreateInboundShipmentPlan.html)
  - [CreateInboundShipment](../fba_inbound/FBAInbound_CreateInboundShipment.html)
  - [UpdateInboundShipment](FBAInbound_UpdateInboundShipment.html "Updates an existing inbound shipment.")
  - [ListInboundShipmentItems](FBAInbound_ListInboundShipmentItems.html "Returns a list of items in a specified inbound shipment, or a list of items that were updated within a specified time frame.")
  - [ListInboundShipmentItemsByNextToken](FBAInbound_ListInboundShipmentItemsByNextToken.html "Returns the next page of inbound shipment items using the NextToken parameter.")

</div>

<div class="section">

### PrepDetails content

The following table shows the elements of the
<span class="keyword cmdname">PrepDetails</span> PrepDetails:

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
<td><span class="keyword parmname">PrepInstruction</span></td>
<td><span class="ph">Preparation instructions for shipping an item to <span class="ph">Amazon's fulfillment network</span>.</span></td>
<td>Yes</td>
<td>See <a href="FBAInbound_Datatypes.html#PrepInstruction" class="xref" title="Preparation instructions for shipping an item to Amazon&#39;s fulfillment network.">PrepInstruction</a>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">PrepOwner</span></td>
<td><span class="ph">Indicates who will prepare the item.</span></td>
<td>Yes</td>
<td><span class="keyword parmname">PrepOwner</span> values:
<ul>
<li>AMAZON</li>
<li>SELLER</li>
</ul>
<p>Default: SELLER</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="PrepInstruction" class="topic reference nested1">

## PrepInstruction

<div class="body refbody">

<span class="ph">Preparation instructions for shipping an item to
<span class="ph">Amazon's fulfillment network</span>.</span>

<div class="section">

### Operations

The <span class="keyword cmdname">PrepInstruction</span> datatype is
used in a response element of the following
    operations:

  - [GetPrepInstructionsForASIN](FBAInbound_GetPrepInstructionsForASIN.html "Returns item preparation instructions to help with item sourcing decisions.")
  - [GetPrepInstructionsForSKU](FBAInbound_GetPrepInstructionsForSKU.html "Returns labeling requirements and item preparation instructions to help you prepare items for an inbound shipment.")

</div>

<div class="section">

### Datatype content

The following table shows the elements of the
<span class="keyword cmdname">PrepInstruction</span> datatype:

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
<td><span class="keyword parmname">PrepInstruction</span></td>
<td><span class="ph">Preparation instructions for shipping an item to <span class="ph">Amazon's fulfillment network</span>.</span>
<p><span class="keyword parmname">PrepInstruction</span> values:</p>
<ul>
<li>Polybagging - Indicates that polybagging is required.</li>
<li>BubbleWrapping - Indicates that bubble wrapping is required.</li>
<li>Taping - Indicates that taping is required.</li>
<li>BlackShrinkWrapping - Indicates that black shrink wrapping is required.</li>
<li>Labeling - Indicates that the FNSKU label should be applied to the item.</li>
<li>HangGarment - Indicates that the item should be placed on a hanger.</li>
</ul>
<div class="note note">
<span class="notetitle">Note:</span> One or more <span class="keyword parmname">PrepInstruction</span> elements can be returned.
</div>
<p>For more information about preparing items for shipment to <span class="ph">Amazon's fulfillment network</span>, see the Seller Central Help for your marketplace.</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
</tbody>
</table>

</div>

For more examples of how
<span class="keyword parmname">PrepInstruction</span> works with
<span class="keyword parmname">PrepOwners</span>, see [Preparation
examples](FBAInbound_PreparationExamples.html "These examples demonstrate how to create separate shipments for items that have different PrepOwners for the same PrepInstruction, and show how errors can result if the same instruction is given to two owners in the same shipment.").

</div>

</div>

</div>

<div id="SKUInboundGuidance" class="topic reference nested1">

## SKUInboundGuidance

<div class="body refbody">

<span class="ph">Reasons why a given Seller SKU is not recommended for
shipment to <span class="ph">Amazon's fulfillment network</span></span>

<div class="section">

### Operations

The <span class="keyword cmdname">SKUInboundGuidance</span> datatype is
used in a response element of the following
    operation:

  - [GetInboundGuidanceForSKU](FBAInbound_GetInboundGuidanceForSKU.html "Returns inbound guidance for a list of items by Seller SKU.")

</div>

<div class="section">

### Datatype content

The following table shows the elements of the
<span class="keyword cmdname">SKUInboundGuidance</span>
datatype:

<div class="tablenoborder">

| Name                                                     | Description                                                                           | Required | Values                                                                                                                            |
| -------------------------------------------------------- | ------------------------------------------------------------------------------------- | -------- | --------------------------------------------------------------------------------------------------------------------------------- |
| <span class="keyword parmname">SellerSKU</span>          | <span class="ph">The Seller SKU of the item.</span>                                   | Yes      | <span class="ph">Type: xs:string</span>                                                                                           |
| <span class="keyword parmname">ASIN</span>               | <span class="ph">The Amazon Standard Identification Number (ASIN) of the item.</span> | Yes      | <span class="ph">Type: xs:string</span>                                                                                           |
| <span class="keyword parmname">InboundGuidance</span>    | <span class="ph">Specific inbound guidance for an item.</span>                        | Yes      | Type: [InboundGuidance](FBAInbound_Datatypes.html#InboundGuidance "Specific inbound guidance for an item.")                       |
| <span class="keyword parmname">GuidanceReasonList</span> | A list of reasons for the current inbound guidance for this item.                     | No       | Type: List of [GuidanceReason](FBAInbound_Datatypes.html#GuidanceReason "A reason for the current inbound guidance for an item.") |

</div>

</div>

</div>

</div>

<div id="SKUPrepInstructions" class="topic reference nested1">

## SKUPrepInstructions

<div class="body refbody">

<span class="ph">Labeling requirements and item preparation instructions
to help you prepare items for shipment to <span class="ph">Amazon's
fulfillment network</span>.</span>

<div class="section">

### Operations

The <span class="keyword cmdname">SKUPrepInstructions</span> datatype is
used in a response element of the following
    operation:

  - [GetPrepInstructionsForSKU](FBAInbound_GetPrepInstructionsForSKU.html "Returns labeling requirements and item preparation instructions to help you prepare items for an inbound shipment.")

</div>

<div class="section">

### Datatype content

The following table shows the elements of the
<span class="keyword cmdname">SKUPrepInstructions</span> datatype:

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
<td><span class="keyword parmname">SellerSKU</span></td>
<td><span class="ph">The Seller SKU of the item.</span>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">ASIN</span></td>
<td><span class="ph">The Amazon Standard Identification Number (ASIN) of the item.</span>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">BarcodeInstruction</span></td>
<td>Labeling requirements for the item.
<p><span class="keyword parmname">BarcodeInstruction</span> values:</p>
<ul>
<li>RequiresFNSKULabel - Indicates that a scannable FBA product label must be applied to the item. Cover any original bar codes on the item.</li>
<li>CanUseOriginalBarcode - Indicates that the item does not require a scannable FBA product label. The original manufacturer's bar code can be used.</li>
</ul>
For more information about FBA labeling requirements, see the Seller Central Help for your marketplace.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">PrepGuidance</span></td>
<td>Item preparation instructions.
<p><span class="keyword parmname">PrepGuidance</span> values:</p>
<ul>
<li>ConsultHelpDocuments - Indicates that Amazon is currently unable to determine the preparation instructions for this item. Amazon might be able to provide guidance at a future date, after evaluating the item.
<div class="note note">
<span class="notetitle">Note:</span> It remains your responsibility as a seller to ensure that the item is properly prepared for shipment to <span class="ph">Amazon's fulfillment network</span>. For more information about preparing items for shipment to the fulfillment network, see the Seller Central Help for your marketplace.
</div></li>
<li>NoAdditionalPrepRequired - Indicates that the item does not require preparation in addition to any item labeling that might be required.</li>
<li>SeePrepInstructionsList - Indicates that the item requires preparation in addition to any item labeling that might be required. See the <span class="keyword parmname">PrepInstructionList</span> response element for item preparation instructions.</li>
</ul>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">PrepInstructionList</span></td>
<td>Preparation instructions for shipping items to <span class="ph">Amazon's fulfillment network</span>.
<div class="note note">
<span class="notetitle">Note:</span> The <span class="keyword parmname">PrepInstructionList</span> element contains data only if <span class="keyword parmname">PrepGuidance</span> = SeePrepInstructionsList.
</div>
<p>Type: List of <a href="FBAInbound_Datatypes.html#PrepInstruction" class="xref" title="Preparation instructions for shipping an item to Amazon&#39;s fulfillment network.">PrepInstruction</a></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">AmazonPrepFeesDetails</span></td>
<td>A list of fees for Amazon to prep goods for shipment.
<p>Type: List of <a href="FBAInbound_Datatypes.html#AmazonPrepFeesDetails" class="xref" title="The fees for Amazon to prep goods for shipment.">AmazonPrepFeesDetails</a></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="TransportContent" class="topic reference nested1">

## TransportContent

<div class="body refbody">

<span class="ph">Inbound shipment information, including carrier
details, shipment status, and the workflow status for a request for
shipment with an Amazon-partnered carrier.</span>

<div class="section">

### Operations

The <span class="keyword cmdname">TransportContent</span> datatype is
used in a response element of the following
    operation:

  - [GetTransportContent](../fba_inbound/FBAInbound_GetTransportContent.html)

</div>

<div class="section">

### Datatype content

The following table shows the elements of the
<span class="keyword cmdname">TransportContent</span>
datatype:

<div class="tablenoborder">

| Name                                                   | Description                                                                                                                                                                                                                                            | Required | Values                                                                                                                                                                                                                                                                      |
| ------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | -------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| <span class="keyword parmname">TransportHeader</span>  | The shipping Id, information about whether the shipment is by an Amazon-partnered carrier, and information about whether the shipment is <span class="ph">Small Parcel</span> or <span class="ph">Less Than Truckload/Full Truckload (LTL/FTL)</span>. | Yes      | Type: [TransportHeader](FBAInbound_Datatypes.html#TransportHeader "The shipping Id, information about whether the shipment is by an Amazon-partnered carrier, and information about whether the shipment is Small Parcel or Less Than Truckload/Full Truckload (LTL/FTL).") |
| <span class="keyword parmname">TransportDetails</span> | Inbound shipment information, including carrier details and shipment status.                                                                                                                                                                           | Yes      | Type: [TransportDetailOutput](FBAInbound_Datatypes.html#TransportDetailOutput "Inbound shipment information, including carrier details and shipment status.")                                                                                                               |
| <span class="keyword parmname">TransportResult</span>  | Workflow status information for a request for shipment with an Amazon-partnered carrier.                                                                                                                                                               | Yes      | Type: [TransportResult](FBAInbound_Datatypes.html#TransportResult "The workflow status for a shipment with an Amazon-partnered carrier.")                                                                                                                                   |

</div>

</div>

</div>

</div>

<div id="TransportDetailInput" class="topic reference nested1">

## TransportDetailInput

<div class="body refbody">

<span class="ph">Information required to create an Amazon-partnered
carrier shipping estimate, or to alert the <span class="ph">Amazon
fulfillment center</span> to the arrival of an inbound shipment by a
non-Amazon-partnered carrier.</span>

<div class="section">

### Operations

The <span class="keyword cmdname">TransportDetailInput</span> datatype
is used in a request parameter of the following
    operation:

  - [PutTransportContent](../fba_inbound/FBAInbound_PutTransportContent.html)

</div>

<div class="section">

### Datatype content

The following table shows the elements of the
<span class="keyword cmdname">TransportDetailInput</span>
datatype:

<div class="tablenoborder">

| Name                                                              | Description                                                                                                                                                                   | Required                                                                                                            | Values                                                                                                                                                                                                                                       |
| ----------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| <span class="keyword parmname">PartneredSmallParcelData</span>    | Information that is required by an Amazon-partnered carrier to ship a <span class="ph">Small Parcel</span> inbound shipment.                                                  | Yes, if no other element from the <span class="keyword parmname">TransportDetailInput</span> datatype is specified. | Type: [PartneredSmallParcelDataInput](FBAInbound_Datatypes.html#PartneredSmallParcelDataInput "Information that is required by an Amazon-partnered carrier to ship a Small Parcel inbound shipment.")                                        |
| <span class="keyword parmname">NonPartneredSmallParcelData</span> | Information that you provide to Amazon about a <span class="ph">Small Parcel</span> shipment by a carrier that has not partnered with Amazon.                                 | Yes, if no other element from the <span class="keyword parmname">TransportDetailInput</span> datatype is specified. | Type: [NonPartneredSmallParcelDataInput](FBAInbound_Datatypes.html#NonPartneredSmallParcelDataInput "Information that you provide to Amazon about a Small Parcel shipment shipped by a carrier that has not partnered with Amazon.")         |
| <span class="keyword parmname">PartneredLtlData</span>            | Information that is required by an Amazon-partnered carrier to ship a <span class="ph">Less Than Truckload/Full Truckload (LTL/FTL)</span> inbound shipment.                  | Yes, if no other element from the <span class="keyword parmname">TransportDetailInput</span> datatype is specified. | Type: [PartneredLtlDataInput](FBAInbound_Datatypes.html#PartneredLtlDataInput "Information that is required by an Amazon-partnered carrier to ship a Less Than Truckload/Full Truckload (LTL/FTL) inbound shipment.")                        |
| <span class="keyword parmname">NonPartneredLtlData</span>         | Information that you provide to Amazon about a <span class="ph">Less Than Truckload/Full Truckload (LTL/FTL)</span> shipment by a carrier that has not partnered with Amazon. | Yes, if no other element from the <span class="keyword parmname">TransportDetailInput</span> datatype is specified. | Type: [NonPartneredLtlDataInput](FBAInbound_Datatypes.html#NonPartneredLtlDataInput "Information that you provide to Amazon about a Less Than Truckload/Full Truckload (LTL/FTL) shipment by a carrier that has not partnered with Amazon.") |

</div>

</div>

</div>

</div>

<div id="TransportDetailOutput" class="topic reference nested1">

## TransportDetailOutput

<div class="body refbody">

<span class="ph">Inbound shipment information, including carrier details
and shipment status.</span>

<div class="section">

### Operations

The <span class="keyword cmdname">TransportDetailOutput</span> datatype
is used in a response element of the following
    operation:

  - [GetTransportContent](../fba_inbound/FBAInbound_GetTransportContent.html)

</div>

<div class="section">

### Datatype content

The following table shows the elements of the
<span class="keyword cmdname">TransportDetailOutput</span>
datatype:

<div class="tablenoborder">

| Name                                                              | Description                                                                                                                                                           | Required                                                                                                            | Values                                                                                                                                                                                                                                         |
| ----------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| <span class="keyword parmname">PartneredSmallParcelData</span>    | Information returned by Amazon about a <span class="ph">Small Parcel</span> shipment by an Amazon-partnered carrier.                                                  | Yes, if no other element from the <span class="keyword parmname">TransportDetailOutput</span> datatype is returned. | Type: [PartneredSmallParcelDataOutput](FBAInbound_Datatypes.html#PartneredSmallParcelDataOutput "Information returned by Amazon about a Small Parcel shipment by an Amazon-partnered carrier.")                                                |
| <span class="keyword parmname">NonPartneredSmallParcelData</span> | Information returned by Amazon about a <span class="ph">Small Parcel</span> shipment by a carrier that has not partnered with Amazon.                                 | Yes, if no other element from the <span class="keyword parmname">TransportDetailOutput</span> datatype is returned. | Type: [NonPartneredSmallParcelDataOutput](FBAInbound_Datatypes.html#NonPartneredSmallParcelDataOutput "Information returned by Amazon about a Small Parcel shipment by a carrier that has not partnered with Amazon.")                         |
| <span class="keyword parmname">PartneredLtlData</span>            | Information returned by Amazon about a <span class="ph">Less Than Truckload/Full Truckload (LTL/FTL)</span> shipment by an Amazon-partnered carrier.                  | Yes, if no other element from the <span class="keyword parmname">TransportDetailOutput</span> datatype is returned. | Type: [PartneredLtlDataOutput](FBAInbound_Datatypes.html#PartneredLtlDataOutput "Information returned by Amazon about a Less Than Truckload/Full Truckload (LTL/FTL) shipment by an Amazon-partnered carrier.")                                |
| <span class="keyword parmname">NonPartneredLtlData</span>         | Information returned by Amazon about a <span class="ph">Less Than Truckload/Full Truckload (LTL/FTL)</span> shipment by a carrier that has not partnered with Amazon. | Yes, if no other element from the <span class="keyword parmname">TransportDetailOutput</span> datatype is returned. | Type: [NonPartneredLtlDataOutput](FBAInbound_Datatypes.html#NonPartneredLtlDataOutput "Information returned by Amazon about a Less Than Truckload/Full Truckload (LTL/FTL) shipment shipped by a carrier that has not partnered with Amazon.") |

</div>

</div>

</div>

</div>

<div id="TransportDocument" class="topic reference nested1">

## TransportDocument

<div class="body refbody">

<span class="ph">The PDF document data and checksum for printing package
labels and bills of lading.</span>

<div class="section">

### Operations

The <span class="keyword cmdname">TransportDocument</span> datatype is
used in a response element of the following operations:

  - [GetPackageLabels](../fba_inbound/FBAInbound_GetPackageLabels.html)
  - [GetBillOfLading](../fba_inbound/FBAInbound_GetBillOfLading.html)

</div>

<div class="section">

### Datatype content

The following table shows the elements of the
<span class="keyword cmdname">TransportDocument</span>
datatype:

<div class="tablenoborder">

| Name                                              | Description                                                              | Required | Values                                  |
| ------------------------------------------------- | ------------------------------------------------------------------------ | -------- | --------------------------------------- |
| <span class="keyword parmname">PdfDocument</span> | Data for printing PDF documents, in the form of a Base64-encoded string. | Yes      | <span class="ph">Type: xs:string</span> |
| <span class="keyword parmname">Checksum</span>    | A Base64-encoded MD5 hash to validate the PDF document data.             | Yes      | <span class="ph">Type: xs:string</span> |

</div>

</div>

</div>

</div>

<div id="TransportHeader" class="topic reference nested1">

## TransportHeader

<div class="body refbody">

<span class="ph">The shipping Id, information about whether the shipment
is by an Amazon-partnered carrier, and information about whether the
shipment is <span class="ph">Small Parcel</span> or
<span class="ph">Less Than Truckload/Full Truckload
(LTL/FTL)</span>.</span>

<div class="section">

### Operations

The <span class="keyword cmdname">TransportHeader</span> datatype is
used in a response element of the following
    operation:

  - [GetTransportContent](../fba_inbound/FBAInbound_GetTransportContent.html)

</div>

<div class="section">

### Datatype content

The following table shows the elements of the
<span class="keyword cmdname">TransportHeader</span> datatype:

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
<td><span class="keyword parmname">SellerId</span></td>
<td>Your Amazon seller identifier.</td>
<td>Yes</td>
<td><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">ShipmentId</span></td>
<td><span class="ph">A shipment identifier originally returned by the <span class="keyword apiname">CreateInboundShipmentPlan</span> operation.</span></td>
<td>Yes</td>
<td><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">IsPartnered</span></td>
<td>Indicates whether a <span class="keyword apiname">PutTransportContent</span> request is for a partnered carrier.</td>
<td>Yes</td>
<td><span class="keyword parmname">IsPartnered</span> values:
<ul>
<li>true – Request is for an Amazon-partnered carrier.</li>
<li>false – Request is for a non-Amazon-partnered carrier.</li>
</ul>
<p><span class="ph">Type: xs:boolean</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">ShipmentType</span></td>
<td>Specifies the carrier shipment type in a <span class="keyword apiname">PutTransportContent</span> request.</td>
<td>Yes</td>
<td><span class="keyword parmname">ShipmentType</span> values:
<ul>
<li>SP – <span class="ph">Small Parcel</span></li>
<li>LTL – <span class="ph">Less Than Truckload/Full Truckload (LTL/FTL)</span></li>
</ul>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="TransportResult" class="topic reference nested1">

## TransportResult

<div class="body refbody">

<span class="ph">The workflow status for a shipment with an
Amazon-partnered carrier.</span>

<div class="section">

### Operations

The <span class="keyword cmdname">TransportResult</span> datatype is
used in a request parameter or in a response element of the following
operations:

  - [PutTransportContent](../fba_inbound/FBAInbound_PutTransportContent.html)
  - [GetTransportContent](../fba_inbound/FBAInbound_GetTransportContent.html)
  - [EstimateTransportRequest](FBAInbound_EstimateTransportRequest.html "Requests an estimate of the shipping cost for an inbound shipment.")
  - [ConfirmTransportRequest](FBAInbound_ConfirmTransportRequest.html "Confirms that you accept the Amazon-partnered shipping estimate and you request that the Amazon-partnered carrier ship your inbound shipment.")
  - [VoidTransportRequest](FBAInbound_VoidTransportRequest.html "Voids a previously-confirmed request to ship your inbound shipment using an Amazon-partnered carrier.")

</div>

<div class="section">

### Datatype content

The following table shows the elements of the
<span class="keyword cmdname">TransportResult</span> datatype:

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
<td><span class="keyword parmname">TransportStatus</span></td>
<td>Status of the Amazon-partnered carrier shipment.</td>
<td>Yes</td>
<td><span class="keyword parmname">TransportStatus</span> values:
<ul>
<li>WORKING - You have successfully called the <span class="keyword apiname">PutTransportContent</span> operation for this shipment but have not yet called the  <span class="keyword apiname">EstimateTransportRequest</span> operation.</li>
<li>ERROR_ON_ESTIMATING - There was a problem with your call to the <span class="keyword apiname">EstimateTransportRequest</span> operation and an error was returned.</li>
<li>ESTIMATING - You have successfully called the  <span class="keyword apiname">EstimateTransportRequest</span> operation for this shipment and the carrier is in the process of estimating the shipment cost.</li>
<li>ESTIMATED – The carrier has completed the process of estimating the shipment cost. Your transportation request is ready to be confirmed by you.</li>
<li>ERROR_ON_CONFIRMING - There was a problem with your call to the <span class="keyword apiname">ConfirmTransportRequest</span> operation and an error was returned.</li>
<li>CONFIRMING - You have successfully called the <span class="keyword apiname">ConfirmTransportRequest</span> operation but the confirmation process is not yet complete.</li>
<li>CONFIRMED – Your transportation request has been confirmed. <strong>Important:</strong> For a <span class="ph">Small Parcel</span> shipment, you can void your transportation request up to 24 hours after you confirm it. For a <span class="ph">Less Than Truckload/Full Truckload (LTL/FTL)</span> shipment, you can void your transportation request up to one hour after you confirm it. After the grace period has expired your account will be charged for the shipping cost.</li>
<li>VOIDING - You have successfully called the <span class="keyword apiname">VoidTransportRequest</span> operation for a confirmed carrier shipment but the voiding process is not yet complete.</li>
<li>VOIDED – Your confirmed carrier shipment has been voided. Your account will not be charged for the shipping cost.</li>
<li>ERROR_IN_VOIDING - There was a problem with your call to the <span class="keyword apiname">VoidTransportRequest</span> operation and an error was returned.</li>
</ul>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="Weight" class="topic reference nested1">

## Weight

<div class="body refbody">

<span class="ph">The weight value and unit of measurement.</span>

<div class="section">

### Operations

The <span class="keyword cmdname">Weight</span> datatype is used in a
request parameter or in a response element of the following
    operations:

  - [PutTransportContent](../fba_inbound/FBAInbound_PutTransportContent.html)
  - [GetTransportContent](../fba_inbound/FBAInbound_GetTransportContent.html)

</div>

<div class="section">

### Datatype content

The following table shows the elements of the
<span class="keyword cmdname">Weight</span> datatype:

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
<td><span class="keyword parmname">Unit</span></td>
<td>Indicates the unit of weight.</td>
<td>Yes</td>
<td><span class="keyword parmname">Unit</span> values:
<ul>
<li>pounds</li>
<li>kilograms</li>
</ul>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">Value</span></td>
<td>The weight of the object.</td>
<td>Yes</td>
<td><span class="ph">Type: xs:int</span></td>
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

[Fulfillment Inbound Shipment
API](../fba_inbound/FBAInbound_Overview.html)

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