<div id="MWSDX_noscript">

JavaScript is currently disabled in your browser.  
To use the Amazon MWS documentation, you must enable JavaScript in your
browser.

</div>

<div id="MWSDX_divtop">

[![Amazon
Services](https://images-na.ssl-images-amazon.com/images/G/08/mwsportal/fr_FR/amazonservices.gif "Amazon Services")](http://services.amazon.fr)  
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

<div id="FBAInbound_GetBillOfLading" class="nested0">

GetBillOfLading
===============

<div class="body">

<span class="ph">Returns a bill of lading for a <span class="ph">Less
Than Truckload/Full Truckload (LTL/FTL)</span> shipment.</span>

</div>

<div id="Description" class="topic concept nested1">

Description
-----------

<div class="body conbody">

<div class="section">

The <span class="keyword apiname">GetBillOfLading</span> operation
returns PDF document data for printing a bill of lading for an
Amazon-partnered <span class="ph">Less Than Truckload/Full Truckload
(LTL/FTL)</span> inbound shipment. <span class="ph">For information
about extracting PDF document data, see
<a href="FBAInbound_ExtractingPdfDocumentData.md" class="xref">Extracting PDF Document Data</a>.</span>
For more information about creating inbound shipments, see
<a href="../fba_guide/FBAGuide_ShipInventoryToAFN.md" class="xref">Shipping inventory to Amazon's fulfillment network</a>.

<div class="note note">

<span class="notetitle">Note:</span>

-   Only sellers in the Amazon European marketplaces (France, Germany,
    Italy, Spain, and the United Kingdom) and in the United States can
    use an Amazon-partnered carrier when creating inbound shipments
    using Amazon Marketplace Web Service (Amazon MWS). Calling this
    operation in other marketplaces returns an error.
-   In the Amazon European marketplaces, before using an
    Amazon-partnered carrier for an inbound shipment, you must first
    review and accept the terms and conditions of the carrier and the
    terms and conditions of Amazon's Partnered Carrier Program. You can
    do this on
    <a href="https://sellercentral.amazon.co.uk/gp/help/201119120" class="xref">Seller Central</a>.
    If you attempt to use <span class="ph">Amazon Marketplace Web
    Service (Amazon MWS)</span> to create an inbound shipment using an
    Amazon-partnered carrier before accepting these terms and
    conditions, the service returns an error.

</div>

</div>

<div class="section">

### Availability

This operation is available in all marketplaces except Brazil.

</div>

<div class="section">

### Throttling

The <span class="keyword apiname">GetBillOfLading</span> operation has a
**maximum request quota** of 30 and a **restore rate** of two requests
every second. <span class="ph">For definitions of throttling terminology
and for a complete explanation of throttling, see
<a href="../dev_guide/DG_Throttling.md" class="xref">Throttling: Limits to how often you can submit requests</a>
in the <span class="ph">Amazon MWS Developer Guide</span>.</span>

</div>

</div>

</div>

<div id="RequestParameters" class="topic reference nested1">

Request parameters
------------------

<div class="body refbody">

<div class="section">

<span class="ph">For more information about the request parameters that
are required for all <span class="ph">Amazon MWS</span> operations, see
<a href="../dev_guide/DG_RequiredRequestParameters.md" class="xref">Required request parameters</a>
in the <span class="ph">Amazon MWS Developer Guide</span>.</span>

</div>

<div class="tablenoborder">

| Name                                             | Description                                                                                                                                        | Required | Values                                  |
|--------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------|----------|-----------------------------------------|
| <span class="keyword parmname">ShipmentId</span> | <span class="ph">A shipment identifier originally returned by the <span class="keyword apiname">CreateInboundShipmentPlan</span> operation.</span> | Yes      | <span class="ph">Type: xs:string</span> |

</div>

</div>

</div>

<div id="ResponseElements" class="topic reference nested1">

Response elements
-----------------

<div class="body refbody">

<div class="tablenoborder">

<table id="ResponseElements__ResponseElementsTable" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
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
<p>Type: <a href="FBAInbound_Datatypes.md#TransportDocument" class="xref" title="The PDF document data and checksum for printing package labels and bills of lading.">TransportDocument</a></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div id="Examples" class="topic reference nested1">

Examples
--------

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

    http://mws.amazonaws.com/FulfillmentInboundShipment/2010-10-01
      ?AWSAccessKeyId=AKIAEIAEXAMPLEQCJLSA
      &Action=GetBillOfLading
      &MWSAuthToken=amzn.mws.4ea38b7b-f563-7709-4bae-87aeaEXAMPLE
      &SellerId=A13EXAMPLE1J56
      &SignatureVersion=2
      &Timestamp=2013-08-10T00%3A38%3A53Z
      &Version=2010-10-01
      &SignatureMethod=HmacSHA256
      &ShipmentId=FBAQFGQZ

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

    <?xml version="1.0"?>
    <GetBillOfLadingResponse 
        xmlns="http://mws.amazonaws.com/FulfillmentInboundShipment/2010-10-01/">
        <GetBillOfLadingResult>
            <TransportDocument>
                <PdfDocument>ABEAAAAAAlbHMucGRmUEsFBgAAAAABAAEAPwAAALQXAQAAAA==
                </PdfDocument>
                <Checksum>WGQwqA+NlzMVL1plHc/7ZA==</Checksum>
            </TransportDocument>
        </GetBillOfLadingResult>
        <ResponseMetadata>
            <RequestId>985a3fa9-3ce2-46fb-a1c7-321439269d2b</RequestId>
        </ResponseMetadata>
    </GetBillOfLadingResponse>

<a href="#Examples" class="xref">↑ Top</a>

</div>

</div>

</div>

</div>

<div id="RelatedTopics" class="topic nested1">

Related topics
--------------

<div class="body">

<a href="../fba_inbound/FBAInbound_Overview.md" class="xref">Fulfillment Inbound Shipment API</a>

<a href="../fba_inbound/FBAInbound_GetUniquePackageLabels.md" class="xref">GetUniquePackageLabels</a>

<a href="../fba_inbound/FBAInbound_GetPalletLabels.md" class="xref">GetPalletLabels</a>

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
