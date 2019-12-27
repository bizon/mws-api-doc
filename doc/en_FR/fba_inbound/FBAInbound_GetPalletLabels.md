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
returns PDF document data for printing pallet labels for a
<span class="ph">Less Than Truckload/Full Truckload (LTL/FTL)</span>
inbound shipment. This operation returns the
<span class="keyword parmname">InvalidOperation</span> error code if you
include a <span class="keyword parmname">ShipmentId</span> value for a
<span class="ph">Small Parcel</span> shipment. <span class="ph">For
information about extracting PDF document data, see [Extracting PDF
Document Data](FBAInbound_ExtractingPdfDocumentData.md).</span> For
more information about creating inbound shipments, see [Shipping
inventory to Amazon's fulfillment
network](../fba_guide/FBAGuide_ShipInventoryToAFN.md).

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
and for a complete explanation of throttling, see [Throttling: Limits to
how often you can submit requests](../dev_guide/DG_Throttling.md) in
the <span class="ph">Amazon MWS Developer Guide</span>.</span>

</div>

</div>

</div>

<div id="RequestParameters" class="topic reference nested1">

## Request parameters

<div class="body refbody">

<div class="section">

<span class="ph">For more information about the request parameters that
are required for all <span class="ph">Amazon MWS</span> operations, see
[Required request
parameters](../dev_guide/DG_RequiredRequestParameters.md) in the
<span class="ph">Amazon MWS Developer Guide</span>.</span>

</div>

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
<td>Must match a <span class="keyword parmname">ShipmentId</span> value previously passed using the FBA Inbound Shipment Carton Information Feed. If not, the operation returns the <span class="keyword parmname">NoPackageContentInformation</span> error. For more information, see <a href="../fba_inbound/FBAInbound_GetUniquePackageLabels.md#ProvidingCartonContentInfo" class="xref">Providing carton contents information</a>.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">PageType</span></td>
<td>The page type that you want to print the labels on.</td>
<td>Yes</td>
<td><span class="keyword parmname">PageType</span> values:
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
<tr class="odd">
<td><span class="keyword parmname">NumberOfPallets</span></td>
<td>The number of pallets in the shipment. This returns four identical labels for each pallet.</td>
<td>Yes</td>
<td><span class="ph">Type: xs:int</span></td>
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
<td><span class="keyword parmname">TransportDocument</span></td>
<td>PDF document data and checksum.
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
see [Required request
parameters](../dev_guide/DG_RequiredRequestParameters.md).</span>

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="sectiondiv content">

``` pre codeblock
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

[↑ Top](#Examples)

</div>

</div>

<div class="section">

### Example response

<span class="ph">For information about standard response formatting, see
[Response format](../dev_guide/DG_ResponseFormat.md).</span>

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="sectiondiv content">

``` pre codeblock
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

[↑ Top](#Examples)

</div>

</div>

</div>

</div>

<div id="RelatedTopics" class="topic nested1">

## Related topics

<div class="body">

[Fulfillment Inbound Shipment
API](../fba_inbound/FBAInbound_Overview.md)

[GetUniquePackageLabels](../fba_inbound/FBAInbound_GetUniquePackageLabels.md)

[GetBillOfLading](../fba_inbound/FBAInbound_GetBillOfLading.md)

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
