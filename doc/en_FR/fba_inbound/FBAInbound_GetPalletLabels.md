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

<div id="FBAInbound_GetPalletLabels" class="nested0">

# GetPalletLabels

<div class="body">

<span class="ph">Returns pallet labels.</span>

</div>

<div id="Description" class="topic concept nested1">

## Description

<div class="body conbody">

<div class="section">

The <span class="keyword apiname">GetPalletLabels</span> operation
returns PDF document data for printing pallet labels for a <span
class="ph">Less Than Truckload/Full Truckload (LTL/FTL)</span> inbound
shipment. This operation returns the <span
class="keyword parmname">InvalidOperation</span> error code if you
include a <span class="keyword parmname">ShipmentId</span> value for a
<span class="ph">Small Parcel</span> shipment. <span class="ph">For
information about extracting PDF document data, see
<a href="FBAInbound_ExtractingPdfDocumentData.md" class="xref">Extracting PDF Document Data</a>.</span>
For more information about creating inbound shipments, see
<a href="../fba_guide/FBAGuide_ShipInventoryToAFN.md" class="xref">Shipping inventory to Amazon's fulfillment network</a>.

</div>

<div class="section">

### Availability

This operation is available in all marketplaces except Brazil.

</div>

<div class="section">

### Throttling

The <span class="keyword apiname">GetPalletLabels</span> operation has a
**maximum request quota** of 30 and a **restore rate** of two requests
every second. <span class="ph">For definitions of throttling terminology
and for a complete explanation of throttling, see
<a href="../dev_guide/DG_Throttling.md" class="xref">Throttling: Limits to how often you can submit requests</a>
in the <span class="ph">Amazon MWS Developer Guide</span>.</span>

</div>

</div>

</div>

<div id="RequestParameters" class="topic reference nested1">

## Request parameters

<div class="body refbody">

<div class="section">

<span class="ph">For more information about the request parameters that
are required for all <span class="ph">Amazon MWS</span> operations, see
<a href="../dev_guide/DG_RequiredRequestParameters.md" class="xref">Required request parameters</a>
in the <span class="ph">Amazon MWS Developer Guide</span>.</span>

</div>

<div class="tablenoborder">

<table id="RequestParameters__RequestParametersTable" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d67041e170" class="entry" data-valign="top" width="26.153846153846157%">Name</th>
<th id="d67041e173" class="entry" data-valign="top" width="26.153846153846157%">Description</th>
<th id="d67041e176" class="entry" data-valign="top" width="15.384615384615385%">Required</th>
<th id="d67041e179" class="entry" data-valign="top" width="32.30769230769231%">Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="26.153846153846157%" headers="d67041e170 "><span class="keyword parmname">ShipmentId</span></td>
<td class="entry" data-valign="top" width="26.153846153846157%" headers="d67041e173 "><span class="ph">A shipment identifier originally returned by the <span class="keyword apiname">CreateInboundShipmentPlan</span> operation.</span></td>
<td class="entry" data-valign="top" width="15.384615384615385%" headers="d67041e176 ">Yes</td>
<td class="entry" data-valign="top" width="32.30769230769231%" headers="d67041e179 ">Must match a <span class="keyword parmname">ShipmentId</span> value previously passed using the FBA Inbound Shipment Carton Information Feed. If not, the operation returns the <span class="keyword parmname">NoPackageContentInformation</span> error. For more information, see <a href="../fba_inbound/FBAInbound_GetUniquePackageLabels.md#ProvidingCartonContentInfo" class="xref">Providing carton contents information</a>.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="26.153846153846157%" headers="d67041e170 "><span class="keyword parmname">PageType</span></td>
<td class="entry" data-valign="top" width="26.153846153846157%" headers="d67041e173 ">The page type that you want to print the labels on.</td>
<td class="entry" data-valign="top" width="15.384615384615385%" headers="d67041e176 ">Yes</td>
<td class="entry" data-valign="top" width="32.30769230769231%" headers="d67041e179 "><span class="keyword parmname">PageType</span> values:
<ul>
<li><var class="keyword varname">PackageLabel_Letter_2</var> - Two labels per US Letter label sheet. This is the only valid value for Amazon-partnered shipments in the US that use UPS as the carrier. Supported in Canada and the US.</li>
<li><var class="keyword varname">PackageLabel_Letter_6</var> - Six labels per US Letter label sheet. This is the only valid value for non-Amazon-partnered shipments in the US. Supported in Canada and the US.</li>
<li><var class="keyword varname">PackageLabel_A4_2</var> - Two labels per A4 label sheet. Supported in France, Germany, Italy, Spain, and the UK.</li>
<li><var class="keyword varname">PackageLabel_A4_4</var> - Four labels per A4 label sheet. Supported in France, Germany, Italy, Spain, and the UK.</li>
<li><var class="keyword varname">PackageLabel_Plain_Paper</var>. One label per sheet of US Letter paper. Only for non-Amazon-partnered shipments. Supported in all marketplaces.</li>
</ul>
<p>Submitting a <span class="keyword parmname">PageType</span> value that is not supported in your marketplace returns an error.</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="26.153846153846157%" headers="d67041e170 "><span class="keyword parmname">NumberOfPallets</span></td>
<td class="entry" data-valign="top" width="26.153846153846157%" headers="d67041e173 ">The number of pallets in the shipment. This returns four identical labels for each pallet.</td>
<td class="entry" data-valign="top" width="15.384615384615385%" headers="d67041e176 ">Yes</td>
<td class="entry" data-valign="top" width="32.30769230769231%" headers="d67041e179 "><span class="ph">Type: xs:int</span></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div id="ResponseElements" class="topic reference nested1">

## Response elements

<div class="body refbody">

<div class="tablenoborder">

<table id="ResponseElements__ResponseElementsTable" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d67041e324" class="entry" data-valign="top" width="29.585798816568047%">Name</th>
<th id="d67041e327" class="entry" data-valign="top" width="70.41420118343196%">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="29.585798816568047%" headers="d67041e324 "><span class="keyword parmname">TransportDocument</span></td>
<td class="entry" data-valign="top" width="70.41420118343196%" headers="d67041e327 ">PDF document data and checksum.
<p>Type: <a href="FBAInbound_Datatypes.md#TransportContent" class="xref" title="Inbound shipment information, including carrier details, shipment status, and the workflow status for a request for shipment with an Amazon-partnered carrier.">TransportContent</a></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div id="Examples" class="topic reference nested1">

## Examples

<div class="body refbody">

<div class="section">

### Example query request

<span class="ph">For information about standard request requirements,
see
<a href="../dev_guide/DG_RequiredRequestParameters.md" class="xref">Required request parameters</a>.</span>

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="sectiondiv content">

``` pre
http://mws.amazonaws.com/FulfillmentInboundShipment/2010-10-01
  ?AWSAccessKeyId=AKIAEIAEXAMPLEQCJLSA
  &Action=GetPalletLabels
  &MWSAuthToken=amzn.mws.4ea38b7b-f563-7709-4bae-87aeaEXAMPLE
  &SellerId=A13EXAMPLE1J56
  &SignatureVersion=2
  &Timestamp=2015-08-10T00%3A38%3A53Z
  &Version=2010-10-01
  &SignatureMethod=HmacSHA256
  &ShipmentId=FBAQFGQZ
  &PageType=PackageLabel_Letter_4
  &NumberOfPallets=4
```

<a href="#Examples" class="xref">↑ Top</a>

</div>

</div>

<div class="section">

### Example response

<span class="ph">For information about standard response formatting, see
<a href="../dev_guide/DG_ResponseFormat.md" class="xref">Response format</a>.</span>

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="sectiondiv content">

``` pre
<?xml version="1.0" encoding="UTF-8"?>

<?xml version="1.0"?>
<GetPalletLabelsResponse> 
    xmlns="http://mws.amazonaws.com/FulfillmentInboundShipment/2010-10-01/">
    <GetPalletLabelsResult>
        <TransportDocument>
            <PdfDocument>ABEAAAAAAlbHMucGRmUEsFBgAAAAABAAEAPwAAALQXAQAAAA==
            </PdfDocument>
            <Checksum>WGQwqA+NlzMVL1plHc/7ZA==</Checksum>
        </TransportDocument>
    </GetPalletLabelsResult>
    <ResponseMetadata>
        <RequestId>985a3fa9-3ce2-46fb-a1c7-321439269d2b</RequestId>
    </ResponseMetadata>
</GetPalletLabelsResponse>
```

<a href="#Examples" class="xref">↑ Top</a>

</div>

</div>

</div>

</div>

<div id="RelatedTopics" class="topic nested1">

## Related topics

<div class="body">

<a href="../fba_inbound/FBAInbound_Overview.md" class="xref">Fulfillment Inbound Shipment API</a>

<a href="../fba_inbound/FBAInbound_GetUniquePackageLabels.md" class="xref">GetUniquePackageLabels</a>

<a href="../fba_inbound/FBAInbound_GetBillOfLading.md" class="xref">GetBillOfLading</a>

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
