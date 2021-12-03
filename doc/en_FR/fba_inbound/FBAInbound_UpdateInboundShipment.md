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

<div id="FBAInbound_UpdateInboundShipment" class="nested0">

# UpdateInboundShipment

<div class="body">

<span class="ph">Updates an existing inbound shipment.</span>

</div>

<div id="Description" class="topic concept nested1">

## Description

<div class="body conbody">

<div class="section">

The <span class="keyword apiname">UpdateInboundShipment</span> operation
can add, update, and remove items from an existing inbound shipment. The
existing shipment is identified by the <span
class="keyword parmname">ShipmentId</span>. Each <span
class="keyword apiname">UpdateInboundShipment</span> operation that you
submit can include up to 200 items.

If you include the <span
class="keyword parmname">InboundShipmentHeader</span> request parameter,
it replaces the <span
class="keyword parmname">InboundShipmentHeader</span> information for
the shipment you are updating. Note that you can update the status of
your inbound shipment by including the <span
class="keyword parmname">InboundShipmentHeader</span> request parameter
and changing the <span class="keyword parmname">ShipmentStatus</span>
element.

If you include the <span
class="keyword parmname">InboundShipmentItems</span> request parameter,
the behavior is as follows:

-   Including an item that doesn't exist in the inbound shipment, as
    identified by the <span class="keyword parmname">SellerSKU</span>,
    adds the new item to the inbound shipment.
-   Including an item that already exists in the shipment, as identified
    by the <span class="keyword parmname">SellerSKU</span>, replaces the
    existing item. Note that if the new item that replaces the old item
    has <span class="keyword parmname">QuantityShipped</span> set to
    zero, this indicates that the item is removed from the inbound
    shipment.

</div>

<div class="section">

### Availability

This operation is available in all marketplaces except Brazil.

</div>

<div class="section">

### Throttling

The <span class="keyword apiname">UpdateInboundShipment</span> operation
has a **maximum request quota** of 30 and a **restore rate** of two
requests every second. <span class="ph">For definitions of throttling
terminology and for a complete explanation of throttling, see
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

| Name                                                        | Description                                                                                                                                                                      | Required | Values                                                                                                                                                                                                                                      |
|-------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| <span class="keyword parmname">ShipmentId</span>            | <span class="ph">A shipment identifier originally returned by the <span class="keyword apiname">CreateInboundShipmentPlan</span> operation.</span>                               | Yes      | <span class="ph">Type: xs:string</span>                                                                                                                                                                                                     |
| <span class="keyword parmname">InboundShipmentHeader</span> | <span class="ph">Header information for an inbound shipment. </span>                                                                                                             | Yes      | Type: <a href="FBAInbound_Datatypes.md#InboundShipmentHeader" class="xref" title="Inbound shipment information used to create and update inbound shipments.">InboundShipmentHeader</a>                                                    |
| <span class="keyword parmname">InboundShipmentItems</span>  | <span class="ph"><span class="keyword parmname">SellerSKU</span> and <span class="keyword parmname">QuantityShipped</span> information for items in an inbound shipment. </span> | Yes      | Type: <a href="FBAInbound_Datatypes.md#InboundShipmentItem" class="xref" title="Item information for an inbound shipment. Submitted with a call to the CreateInboundShipment or UpdateInboundShipment operation.">InboundShipmentItem</a> |

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
<th id="d79270e324" class="entry" data-valign="top" width="20%">Name</th>
<th id="d79270e327" class="entry" data-valign="top" width="80%">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="20%" headers="d79270e324 "><span class="keyword parmname">ShipmentId</span></td>
<td class="entry" data-valign="top" width="80%" headers="d79270e327 "><span class="ph">The <span class="keyword parmname">ShipmentId</span> submitted in the request.</span>
<p><span class="ph">Type: xs:string</span></p></td>
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
https://mws.amazonaws.com/FulfillmentInboundShipment/2010-10-01
?AWSAccessKeyId=AKIAEIAL5QODNGQCJLSA
&Action=UpdateInboundShipment
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
&InboundShipmentHeader.IntendedBoxContentsSource=2D_BARCODE
&InboundShipmentItems.member.1.QuantityShipped=1
&InboundShipmentItems.member.1.SellerSKU=SKU00001
&InboundShipmentItems.member.1.PrepDetailsList.member.1.PrepInstruction=Taping 
&InboundShipmentItems.member.1.PrepDetailsList.member.1.PrepOwner=AMAZON
&InboundShipmentItems.member.2.QuantityShipped=2
&InboundShipmentItems.member.2.SellerSKU=SKU00002
&InboundShipmentItems.member.2.PrepDetailsList.member.1.PrepInstruction=Taping 
&InboundShipmentItems.member.2.PrepDetailsList.member.1.PrepOwner=SELLER
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
<UpdateInboundShipmentResponse
  xmlns="http://mws.amazonaws.com/FulfillmentInboundShipment/2010-10-01/">
  <UpdateInboundShipmentResult>
    <ShipmentId>FBA2F50GYX</ShipmentId>
  </UpdateInboundShipmentResult>
  <ResponseMetadata>
    <RequestId>4a2d48a7-9ac3-41f9-82e8-cbd9c137c7c6</RequestId>
  </ResponseMetadata>
</UpdateInboundShipmentResponse>
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

<a href="../fba_inbound/FBAInbound_CreateInboundShipment.md" class="xref">CreateInboundShipment</a>

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
