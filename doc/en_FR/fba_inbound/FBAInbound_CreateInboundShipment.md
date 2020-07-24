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

<div id="FBAInbound_CreateInboundShipment" class="nested0">

CreateInboundShipment
=====================

<div class="body">

<span class="ph">Creates an inbound shipment.</span>

</div>

<div id="Description" class="topic concept nested1">

Description
-----------

<div class="body conbody">

<div class="section">

The <span class="keyword apiname">CreateInboundShipment</span> operation
creates an inbound shipment, based on information that was returned by
the <span class="keyword apiname">CreateInboundShipmentPlan</span>
operation. The <span
class="keyword apiname">CreateInboundShipment</span> operation can
include up to 200 items. If you need to create an inbound shipment that
contains over 200 items, see
<a href="../fba_guide/FBAGuide_CreateShipment200Items.md" class="xref">Creating an inbound shipment containing over 200 items</a>
in <span class="ph">Amazon MWS for FBA Sellers</span>.

</div>

<div class="section">

### Availability

This operation is available in all marketplaces except Brazil.

</div>

<div class="section">

### Throttling

The <span class="keyword apiname">CreateInboundShipment</span> operation
has a **maximum request quota** of 30 and a **restore rate** of two
requests every second. <span class="ph">For definitions of throttling
terminology and for a complete explanation of throttling, see
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

| Name                                                        | Description                                                                                                                                                                      | Required | Values                                                                                                                                                                                                                                      |
|-------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| <span class="keyword parmname">ShipmentId</span>            | <span class="ph">A shipment identifier originally returned by the <span class="keyword apiname">CreateInboundShipmentPlan</span> operation.</span>                               | Yes      | <span class="ph">Type: xs:string</span>                                                                                                                                                                                                     |
| <span class="keyword parmname">InboundShipmentHeader</span> | <span class="ph">Header information for an inbound shipment. </span>                                                                                                             | Yes      | Type: <a href="FBAInbound_Datatypes.md#InboundShipmentHeader" class="xref" title="Inbound shipment information used to create and update inbound shipments.">InboundShipmentHeader</a>                                                    |
| <span class="keyword parmname">InboundShipmentItems</span>  | <span class="ph"><span class="keyword parmname">SellerSKU</span> and <span class="keyword parmname">QuantityShipped</span> information for items in an inbound shipment. </span> | Yes      | Type: <a href="FBAInbound_Datatypes.md#InboundShipmentItem" class="xref" title="Item information for an inbound shipment. Submitted with a call to the CreateInboundShipment or UpdateInboundShipment operation.">InboundShipmentItem</a> |

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
<td><span class="keyword parmname">ShipmentId</span></td>
<td><span class="ph">The <span class="keyword parmname">ShipmentId</span> submitted in the request.</span>
<p><span class="ph">Type: xs:string</span></p></td>
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

For more examples of how <span
class="keyword apiname">CreateInboundShipment</span> works with <span
class="keyword parmname">PrepOwners</span>, see
<a href="FBAInbound_PreparationExamples.md" class="xref" title="These examples demonstrate how to create separate shipments for items that have different PrepOwners for the same PrepInstruction, and show how errors can result if the same instruction is given to two owners in the same shipment.">Preparation examples</a>.

</div>

<div class="section">

### Example query request

<span class="ph">For information about standard request requirements,
see
<a href="../dev_guide/DG_RequiredRequestParameters.md" class="xref">Required request parameters</a>.</span>

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="sectiondiv content">

    https://mws.amazonaws.com/FulfillmentInboundShipment/2010-10-01
    ?AWSAccessKeyId=AKIAEIAL5QODNGQCJLSA
    &Action=CreateInboundShipment
    &SellerId=A135KKEKWF1J56
    &SignatureVersion=2
    &Timestamp=2015-11-29T22%3A51%3A09Z
    &Version=2010-10-01
    &Signature=zzk0jdEopg7JgFAAjVrmESGYHKwvBJ2BhYdC1gLaUhc%3D
    &SignatureMethod=HmacSHA256
    &ShipmentId=FBA0000001
    &InboundShipmentHeader.ShipmentName=SHIPMENT_NAME
    &InboundShipmentHeader.ShipFromAddress.Name=NAME
    &InboundShipmentHeader.ShipFromAddress.AddressLine1=ADDR_LINE1
    &InboundShipmentHeader.ShipFromAddress.City=Seattle
    &InboundShipmentHeader.ShipFromAddress.StateOrProvinceCode=WA
    &InboundShipmentHeader.ShipFromAddress.PostalCode=98121
    &InboundShipmentHeader.ShipFromAddress.CountryCode=US
    &InboundShipmentHeader.DestinationFulfillmentCenterId=ABE2
    &InboundShipmentHeader.ShipmentStatus=WORKING
    &InboundShipmentHeader.LabelPrepPreference=SELLER_LABEL
    &InboundShipmentHeader.IntendedBoxContentsSource=FEED
    &InboundShipmentItems.member.1.QuantityShipped=1
    &InboundShipmentItems.member.1.SellerSKU=SKU00001
    &InboundShipmentItems.member.1.PrepDetailsList.member.1.PrepInstruction=Taping 
    &InboundShipmentItems.member.1.PrepDetailsList.member.1.PrepOwner=AMAZON
    &InboundShipmentItems.member.2.QuantityShipped=2
    &InboundShipmentItems.member.2.SellerSKU=SKU00002
    &InboundShipmentItems.member.2.PrepDetailsList.member.1.PrepInstruction=Taping 
    &InboundShipmentItems.member.2.PrepDetailsList.member.1.PrepOwner=SELLER

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

    <?xml version="1.0" encoding="UTF-8"?>
    <CreateInboundShipmentResponse
      xmlns="http://mws.amazonaws.com/FulfillmentInboundShipment/2010-10-01/">
      <CreateInboundShipmentResult>
        <ShipmentId>FBA2F50GYX</ShipmentId>
      </CreateInboundShipmentResult>
      <ResponseMetadata>
        <RequestId>2a1455aa-c5f9-4993-9b18-dc10407e09ba</RequestId>
      </ResponseMetadata>
    </CreateInboundShipmentResponse>

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

<a href="FBAInbound_PreparationExamples.md" class="xref" title="These examples demonstrate how to create separate shipments for items that have different PrepOwners for the same PrepInstruction, and show how errors can result if the same instruction is given to two owners in the same shipment.">Preparation examples</a>

<a href="../fba_inbound/FBAInbound_CreateInboundShipmentPlan.md" class="xref">CreateInboundShipmentPlan</a>

<a href="FBAInbound_UpdateInboundShipment.md" class="xref" title="Updates an existing inbound shipment.">UpdateInboundShipment</a>

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
