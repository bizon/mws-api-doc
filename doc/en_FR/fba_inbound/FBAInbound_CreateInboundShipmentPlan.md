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

<div id="FBAInbound_CreateInboundShipmentPlan" class="nested0">

CreateInboundShipmentPlan
=========================

<div class="body">

<span class="ph">Returns the information required to create an inbound
shipment.</span>

</div>

<div id="Description" class="topic concept nested1">

Description
-----------

<div class="body conbody">

<div class="section">

The <span class="keyword apiname">CreateInboundShipmentPlan</span>
operation returns one or more inbound shipment plans, which provide the
information you need to create one or more inbound shipments for a set
of items that you specify. Multiple inbound shipment plans might be
required so that items can be optimally placed in <span
class="ph">Amazon's fulfillment network</span>—for example, positioning
inventory closer to the customer. Alternatively, two inbound shipment
plans might be created with the same <span class="ph">Amazon fulfillment
center</span> destination if the two shipment plans require different
processing—for example, items that require labels must be shipped
separately from stickerless, commingled inventory.

<div class="note note">

<span class="notetitle">Note:</span> If you are creating your own
labels, see
<a href="../fba_guide/FBAGuide_ItemLabelSpec.md" class="xref">Item label specifications</a>
in <span class="ph">Amazon MWS for FBA Sellers</span>.

</div>

</div>

<div class="section">

### Creating inbound shipments to countries

Sellers in North America and <span class="ph">Multi-Country
Inventory</span> (MCI) sellers in Europe can use the <span
class="keyword parmname">ShipToCountryCode</span> request parameter of
the <span class="keyword apiname">CreateInboundShipmentPlan</span>
operation to specify which country their inbound shipments will be sent
to. Sellers whose home marketplace is the US or Canada can specify that
their inbound shipments will be sent to <span class="ph">Amazon's
fulfillment network</span> in either one of those countries. Likewise,
MCI sellers whose home marketplace is Germany, France, Italy, Spain, or
the United Kingdom can specify that their inbound shipments will be sent
to the fulfillment network in any one of those countries.

</div>

<div class="section">

### Availability

This operation is available in all marketplaces except Brazil.

</div>

<div class="section">

### Throttling

The <span class="keyword apiname">CreateInboundShipmentPlan</span>
operation has a **maximum request quota** of 30 and a **restore rate**
of two requests every second. <span class="ph">For definitions of
throttling terminology and for a complete explanation of throttling, see
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

<table id="RequestParameters__RequestParametersTable" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
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
<td><span class="keyword parmname">ShipFromAddress</span></td>
<td>The address from which you will send your inbound shipment.</td>
<td>Yes</td>
<td>Type: <a href="FBAInbound_Datatypes.md#Address" class="xref" title="Postal address information.">Address</a></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">ShipToCountryCode</span></td>
<td>The two-character country code for the country where you want your inbound shipment to be sent.
<p>Only for sellers in North America and <span class="ph">Multi-Country Inventory</span> (MCI) sellers in Europe.</p></td>
<td>No. Specifying both <span class="keyword parmname">ShipToCountryCode</span> and <span class="keyword parmname">ShipToCountrySubdivisionCode</span> returns an error.</td>
<td><span class="keyword parmname">ShipToCountryCode</span> values for North America:
<ul>
<li><var class="keyword varname">CA</var> – Canada</li>
<li><var class="keyword varname">MX</var> – Mexico</li>
<li><var class="keyword varname">US</var> – United States</li>
</ul>
<p><span class="keyword parmname">ShipToCountryCode</span> values for MCI sellers in Europe:</p>
<ul>
<li><var class="keyword varname">DE</var> – Germany</li>
<li><var class="keyword varname">ES</var> – Spain</li>
<li><var class="keyword varname">FR</var> – France</li>
<li><var class="keyword varname">GB</var> – United Kingdom</li>
<li><var class="keyword varname">IT</var> – Italy</li>
</ul>
<p>Default: The country code for your home marketplace.</p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">ShipToCountrySubdivisionCode</span></td>
<td>The two-character country code, followed by a dash and then up to three characters that represent the subdivision of the country where you want your inbound shipment to be sent. For example, "IN-MH". In full <span class="ph"> <a href="../dev_guide/DG_ISO3166.md" class="xref">ISO 3166-2</a> </span> format.
<p>Only for sellers in India.</p></td>
<td>No. Specifying both <span class="keyword parmname">ShipToCountryCode</span> and <span class="keyword parmname">ShipToCountrySubdivisionCode</span> returns an error.</td>
<td>See the <span class="ph"> <a href="../dev_guide/DG_ISO3166.md" class="xref">ISO 3166-2</a> </span> standard for states and union territories in India. If specified, only an <span class="ph"> <a href="../dev_guide/DG_ISO3166.md" class="xref">ISO 3166-2</a> </span> subdivision code for a state that contains an <span class="ph">Amazon fulfillment center</span> that the seller is registered with will result in a successful call. Specifying any other value returns an error.
<p>If neither <span class="keyword parmname">ShipToCountrySubdivisionCode</span> nor <span class="keyword parmname">ShipToCountryCode</span> is specified, the shipment goes to the seller's home marketplace.</p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">LabelPrepPreference</span></td>
<td>Your preference for label preparation for an inbound shipment.</td>
<td>No</td>
<td><span class="ph"><span class="keyword parmname">LabelPrepPreference</span> values: </span>
<ul>
<li><var class="keyword varname">SELLER_LABEL</var> - Seller labels the items in the inbound shipment when labels are required.</li>
<li><var class="keyword varname">AMAZON_LABEL_ONLY</var> - Amazon attempts to label the items in the inbound shipment when labels are required. If Amazon determines that it does not have the information required to successfully label an item, that item is not included in the inbound shipment plan.</li>
<li><var class="keyword varname">AMAZON_LABEL_PREFERRED</var> - Amazon attempts to label the items in the inbound shipment when labels are required. If Amazon determines that it does not have the information required to successfully label an item, that item is included in the inbound shipment plan and the seller must label it.</li>
</ul>
<div class="note note">
<span class="notetitle">Note:</span> Unless you are enrolled in the FBA Label Service, SELLER_LABEL is the only valid <span class="keyword parmname">LabelPrepPreference</span> value. The FBA Label Service is not available in India (IN) and is currently in beta development in Japan (JP). For more information about the FBA Label Service, see the Seller Central Help for your marketplace.
</div>
<p>Default: <var class="keyword varname">SELLER_LABEL</var></p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">InboundShipmentPlanRequestItems</span></td>
<td>SKU and quantity information for the items in an inbound shipment.</td>
<td>Yes</td>
<td>Type: <a href="FBAInbound_Datatypes.md#InboundShipmentPlanRequestItem" class="xref" title="Item information for creating an inbound shipment plan. Submitted with a call to the CreateInboundShipmentPlan operation.">InboundShipmentPlanRequestItem</a></td>
</tr>
</tbody>
</table>

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
<td><span class="keyword parmname">InboundShipmentPlans</span></td>
<td>Inbound shipment information used to create an inbound shipment.
<p>Type: <a href="FBAInbound_Datatypes.md#InboundShipmentPlan" class="xref" title="Inbound shipment information used to create an inbound shipment. Returned by the CreateInboundShipmentPlan operation.">InboundShipmentPlan</a></p></td>
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

For an example of <span
class="keyword apiname">CreateInboundShipmentPlan</span> with multiple
<span class="keyword parmname">PrepOwners</span>, see
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
    &Action=CreateInboundShipmentPlan
    &SellerId=A135KKEKWF1J56
    &SignatureVersion=2
    &Timestamp=2015-11-29T22%3A36%3A53Z
    &Version=2010-10-01
    &Signature=wMAeU2CEHdRCPh%2Fg7lQC7HkgRjxZlLxtbbDvFDHzdOE%3D
    &SignatureMethod=HmacSHA256
    &LabelPrepPreference=SELLER_LABEL
    &ShipFromAddress.Name=test1
    &ShipFromAddress.AddressLine1=LINE_1
    &ShipFromAddress.City=Seattle
    &ShipFromAddress.StateOrProvinceCode=WA
    &ShipFromAddress.PostalCode=98121
    &ShipFromAddress.CountryCode=US
    &InboundShipmentPlanRequestItems.member.1.SellerSKU=SKU00001
    &InboundShipmentPlanRequestItems.member.1.Quantity=1
    &InboundShipmentPlanRequestItems.member.1.PrepDetailsList.member.1.PrepInstruction=Taping
    &InboundShipmentPlanRequestItems.member.1.PrepDetailsList.member.1.PrepOwner=AMAZON

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
    <CreateInboundShipmentPlanResponse
      xmlns="http://mws.amazonaws.com/FulfillmentInboundShipment/2010-10-01/">
      <CreateInboundShipmentPlanResult>
        <InboundShipmentPlans>
          <member>
            <DestinationFulfillmentCenterId>ABE2</DestinationFulfillmentCenterId>
            <LabelPrepType>SELLER_LABEL</LabelPrepType>
            <ShipToAddress>
              <City>Breinigsville</City>
              <CountryCode>US</CountryCode>
              <PostalCode>18031</PostalCode>
              <Name>Amazon.com</Name>
              <AddressLine1>705 Boulder Drive</AddressLine1>
              <StateOrProvinceCode>PA</StateOrProvinceCode>
            </ShipToAddress>
            <EstimatedBoxContentsFee>
              <TotalUnits>10</TotalUnits>
              <FeePerUnit>
                <CurrencyCode>USD</CurrencyCode>
                <Value>0.10</Value>
              </FeePerUnit>
              <TotalFee>
                <CurrencyCode>USD</CurrencyCode>
                <Value>10.0</Value>
              </TotalFee>
            </EstimatedBoxContentsFee>
            <Items>
              <member>
                <FulfillmentNetworkSKU>FNSKU00001</FulfillmentNetworkSKU>
                <Quantity>1</Quantity>
                <SellerSKU>SKU00001</SellerSKU>
                <PrepDetailsList>
                  <PrepDetails>
                    <PrepInstruction>Taping</PrepInstruction>
                    <PrepOwner>AMAZON</PrepOwner>
                  </PrepDetails>
                </PrepDetailsList>
              </member>
            </Items>
            <ShipmentId>FBA0000001</ShipmentId>
          </member>
        </InboundShipmentPlans>
      </CreateInboundShipmentPlanResult>
      <ResponseMetadata>
        <RequestId>babd156d-8b2f-40b1-a770-d117f9ccafef</RequestId>
      </ResponseMetadata>
    </CreateInboundShipmentPlanResponse>

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
