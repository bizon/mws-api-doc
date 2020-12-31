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

<div id="FBAOutbound_GetFulfillmentPreview" class="nested0">

GetFulfillmentPreview
=====================

<div class="body">

<span class="ph">Returns a list of fulfillment order previews based on
shipping criteria that you specify.</span>

</div>

<div id="Description" class="topic concept nested1">

Description
-----------

<div class="body conbody">

The <span class="keyword apiname">GetFulfillmentPreview</span> operation
returns a list of fulfillment order previews based on shipping criteria
that you specify. Each fulfillment order preview contains the estimated
shipping weight and the estimated shipping fees for the potential
fulfillment order, as well as ship dates, arrival dates, and estimated
shipping weights for individual shipments within the potential
fulfillment order. In Japan, the <span
class="keyword apiname">GetFulfillmentPreview</span> operation
optionally returns delivery windows for scheduling Multi-Channel
Fulfillment orders. This operation also provides information about
unfulfillable items in fulfillment order previews.

<div class="note note">

<span class="notetitle">Note:</span> If an inbound shipment has a status
of `WORKING` or `SHIPPED`, Amazon considers the items in that inbound
shipment to be fulfillable. This means that the <span
class="keyword apiname">GetFulfillmentPreview</span> operation can
return weight and shipping fee estimates for fulfillable items that have
not yet arrived at an <span class="ph">Amazon fulfillment center</span>.
For this reason weight and shipping fee estimates for items in inbound
shipments with a status of `WORKING` or `SHIPPED` will often be
incorrect.

</div>

<div class="section">

### Availability

This operation is available in all marketplaces except Brazil.

</div>

<div class="section">

### Throttling

The <span class="keyword apiname">GetFulfillmentPreview</span> operation
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
<td><span class="keyword parmname">MarketplaceId</span></td>
<td>The marketplace the fulfillment order is placed against.</td>
<td>No</td>
<td><span class="keyword parmname">MarketplaceId</span> values: see <a href="../dev_guide/DG_Endpoints.md" class="xref">Amazon MWS endpoints and MarketplaceId values</a>.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">Address</span></td>
<td>The destination address for the fulfillment order preview.</td>
<td>Yes</td>
<td>Type: <a href="FBAOutbound_Datatypes.md#Address" class="xref" title="Postal address information.">Address</a></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">Items</span></td>
<td>Identifying information and quantity information for the items in the fulfillment order preview.</td>
<td>Yes</td>
<td>Type: List of <a href="FBAOutbound_Datatypes.md#GetFulfillmentPreviewItem" class="xref" title="Item information for a fulfillment order preview.">GetFulfillmentPreviewItem</a></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">ShippingSpeedCategories</span></td>
<td>A list of shipping methods used for creating fulfillment order previews.</td>
<td>No</td>
<td><span class="keyword parmname">ShippingSpeedCategories</span> values:
<ul>
<li><var class="keyword varname">Standard</var> - Standard shipping method.</li>
<li><var class="keyword varname">Expedited</var> - Expedited shipping method.</li>
<li><var class="keyword varname">Priority</var> - Priority shipping method.</li>
<li><var class="keyword varname">ScheduledDelivery</var> - Scheduled Delivery shipping method. For more information, see <a href="../fba_guide/FBAGuide_ScheduledDelivery.md" class="xref">Scheduled Delivery</a>.</li>
</ul>
<div class="p">
<div class="note note">
<span class="notetitle">Note:</span> Shipping method service level agreements vary by marketplace. See the Amazon Seller Central website in your marketplace for shipping method service level agreements and fulfillment fees.
</div>
Default: All
</div>
<p>Type: List of type: xs:string</p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">IncludeCODFulfillmentPreview</span></td>
<td>Specifies whether to return fulfillment order previews that are for COD (Cash On Delivery).</td>
<td>No</td>
<td><span class="keyword parmname">IncludeCODFulfillmentPreview</span> values:
<ul>
<li><var class="keyword varname">true</var> - Returns all fulfillment order previews (both for COD and not for COD).</li>
<li><var class="keyword varname">false</var> - Returns only fulfillment order previews that are not for COD.</li>
</ul>
<p>Default: <var class="keyword varname">false</var></p>
<div class="note note">
<span class="notetitle">Note:</span> <span class="keyword parmname">IncludeCODFulfillmentPreview</span> is a valid request parameter only in Japan (JP). In any other marketplace, the service ignores the <span class="keyword parmname">IncludeCODFulfillmentPreview</span> request parameter.
</div>
<p><span class="ph">Type: xs:boolean</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">IncludeDeliveryWindows</span></td>
<td>Specifies whether to return the <span class="keyword parmname">ScheduledDeliveryInfo</span> response element, which contains the available delivery windows for a Scheduled Delivery. The <span class="keyword parmname">ScheduledDeliveryInfo</span> response element can only be returned for fulfillment order previews with <span class="keyword parmname">ShippingSpeedCategories</span> = <var class="keyword varname">ScheduledDelivery</var>.</td>
<td>No</td>
<td><span class="keyword parmname">IncludeDeliveryWindows</span> values:
<ul>
<li><var class="keyword varname">true</var> - Returns the <span class="keyword parmname">ScheduledDeliveryInfo</span> response element.</li>
<li><var class="keyword varname">false</var> – Does not return the <span class="keyword parmname">ScheduledDeliveryInfo</span> response element.</li>
</ul>
<div class="note note">
<span class="notetitle">Note:</span> <span class="keyword parmname">IncludeDeliveryWindows</span> is a valid request parameter only in Japan (JP). In any other marketplace, the service ignores the <span class="keyword parmname">IncludeDeliveryWindows</span> request parameter.
</div>
<p>For more information about Scheduled Delivery, see <a href="../fba_guide/FBAGuide_ScheduledDelivery.md" class="xref">Scheduled Delivery</a>.</p>
<p>Default: <var class="keyword varname">false</var></p>
<p><span class="ph">Type: xs:boolean</span></p></td>
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
<td><span class="keyword parmname">FulfillmentPreviews</span></td>
<td>A list of fulfillment order previews, including estimated shipping weights, estimated shipping fees, and estimated ship dates and arrival dates.
<p>Type: List of <a href="FBAOutbound_Datatypes.md#FulfillmentPreview" class="xref" title="Information about a fulfillment order preview, including delivery and fee information based on shipping method.">FulfillmentPreview</a></p></td>
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

    http://mws.amazonservices.jp/FulfillmentOutboundShipment/2010-10-01/   
      ?Action=GetFulfillmentPreview   
      &Version=2010-10-01   
      &AWSAccessKeyId=AKIAJGUEXAMPLEE2NVUA   
      &MWSAuthToken=amzn.mws.4ea38b7b-f563-7709-4bae-87aeaEXAMPLE   
      &SignatureVersion=2   
      &SignatureMethod=HmacSHA256
      &Signature=ZRA9DR5rveSuz%2F1D18AHvoipg2BAev8yblPQ1BbEbfU%3D   
      &Timestamp=2014-01-02T02:40:36Z   
      &SellerId=A2NKEXAMPLEF53   
      &MarketplaceId=ATVPDKIKX0DER
      &Address.Name=Amazon%20Taro   
      &Address.Line1=Meguro-ku%20Shimomeguro%2012-34-56   
      &Address.Line2=XXX%20building%20101   
      &Address.StateOrProvinceCode=Tokyo   
      &Address.PostalCode=1500002   
      &Address.CountryCode=JP
      &Items.member.1.Quantity=1   
      &Items.member.1.SellerFulfillmentOrderItemId=TestId1   
      &Items.member.1.SellerSKU=SampleSKU1   
      &Items.member.2.Quantity=2   
      &Items.member.2.SellerFulfillmentOrderItemId=TestId2   
      &Items.member.2.SellerSKU=SampleSKU2  
      &ShippingSpeedCategories.1=Expedited   
      &ShippingSpeedCategories.2=Standard   
      &ShippingSpeedCategories.3=ScheduledDelivery      
      &IncludeCODFulfillmentPreview=true   
      &IncludeDeliveryWindows=true     

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
      <GetFulfillmentPreviewResponse
          xmlns="http://mws.amazonaws.com/FulfillmentInboundShipment/2010-10-01/">
        <GetFulfillmentPreviewResult>
          <FulfillmentPreviews>
            <member>         
              <EstimatedShippingWeight>
                <Unit>kilograms</Unit>
                <Value>12</Value>
              </EstimatedShippingWeight>
              <ShippingSpeedCategory>Expedited</ShippingSpeedCategory>
              <FulfillmentPreviewShipments>
                <member>
                  <LatestShipDate>2014-01-04T00:30:00Z</LatestShipDate>
                  <LatestArrivalDate>2014-01-06T06:59:59Z</LatestArrivalDate>
                  <FulfillmentPreviewItems>
                    <member>
                      <EstimatedShippingWeight>
                        <Unit>kilograms</Unit>
                        <Value>10</Value>
                      </EstimatedShippingWeight>
                      <SellerSKU>SampleSKU1</SellerSKU>
                      <SellerFulfillmentOrderItemId>
                      mws-test-query-20100713023406723-2
                      </SellerFulfillmentOrderItemId>
                      <ShippingWeightCalculationMethod>Package
                      </ShippingWeightCalculationMethod>
                      <Quantity>2</Quantity>
                    </member>
                    <member>
                      <EstimatedShippingWeight>
                        <Unit>kilograms</Unit>
                        <Value>2</Value>
                      </EstimatedShippingWeight>
                      <SellerSKU>SampleSKU2</SellerSKU>
                      <SellerFulfillmentOrderItemId>
                      mws-test-query-20100713023406723-1
                      </SellerFulfillmentOrderItemId>
                      <ShippingWeightCalculationMethod>Package
                      </ShippingWeightCalculationMethod>
                      <Quantity>1</Quantity>
                    </member>
                  </FulfillmentPreviewItems>
                  <EarliestShipDate>2014-01-04T00:30:00Z</EarliestShipDate>
                  <EarliestArrivalDate>2014-01-05T07:00:00Z
                  </EarliestArrivalDate>
                </member>
              </FulfillmentPreviewShipments>
              <EstimatedFees>
                <member>
                  <Amount>
                    <CurrencyCode>JPY</CurrencyCode>
                    <Value>225</Value>
                  </Amount>
                  <Name>FBAPerUnitFulfillmentFee</Name>
                </member>
                <member>
                  <Amount>
                    <CurrencyCode>JPY</CurrencyCode>
                    <Value>475</Value>
                  </Amount>
                  <Name>FBAPerOrderFulfillmentFee</Name>
                </member>
                <member>
                  <Amount>
                    <CurrencyCode>JPY</CurrencyCode>
                    <Value>660</Value>
                  </Amount>
                  <Name>FBATransportationFee</Name>
                </member>
              </EstimatedFees>
              <UnfulfillablePreviewItems/>
              <IsFulfillable>true</IsFulfillable>
              <IsCODCapable>false</IsCODCapable>
              <MarketplaceId>ATVPDKIKX0DER</MarketplaceId>
            </member>
            <member>
              <EstimatedShippingWeight>
                <Unit>kilograms</Unit>
                <Value>12</Value>
              </EstimatedShippingWeight>
              <ShippingSpeedCategory>Standard</ShippingSpeedCategory>
              <FulfillmentPreviewShipments>
                <member>
                  <LatestShipDate>2014-01-04T00:30:00Z</LatestShipDate>
                  <LatestArrivalDate>2014-07-09T06:59:59Z</LatestArrivalDate>
                  <FulfillmentPreviewItems>
                    <member>
                      <EstimatedShippingWeight>
                        <Unit>kilograms</Unit>
                        <Value>10</Value>
                      </EstimatedShippingWeight>
                      <SellerSKU>SampleSKU1</SellerSKU>
                      <SellerFulfillmentOrderItemId>
                      mws-test-query-20100713023406723-2
                      </SellerFulfillmentOrderItemId>
                      <ShippingWeightCalculationMethod>Package
                      </ShippingWeightCalculationMethod>
                      <Quantity>2</Quantity>
                    </member>
                    <member>
                      <EstimatedShippingWeight>
                        <Unit>kilograms</Unit>
                        <Value>2</Value>
                      </EstimatedShippingWeight>
                      <SellerSKU>SampleSKU2</SellerSKU>
                      <SellerFulfillmentOrderItemId>
                      mws-test-query-20100713023406723-1
                      </SellerFulfillmentOrderItemId>
                      <ShippingWeightCalculationMethod>Package
                      </ShippingWeightCalculationMethod>
                      <Quantity>1</Quantity>
                    </member>
                  </FulfillmentPreviewItems>
                  <EarliestShipDate>2014-01-04T00:30:00Z</EarliestShipDate>
                  <EarliestArrivalDate>2014-01-05T07:00:00Z
                  </EarliestArrivalDate>
                </member>
              </FulfillmentPreviewShipments>
              <EstimatedFees>
                <member>
                  <Amount>
                    <CurrencyCode>JPY</CurrencyCode>
                    <Value>225</Value>
                  </Amount>
                  <Name>FBAPerUnitFulfillmentFee</Name>
                </member>
                <member>
                  <Amount>
                    <CurrencyCode>JPY</CurrencyCode>
                    <Value>475</Value>
                  </Amount>
                  <Name>FBAPerOrderFulfillmentFee</Name>
                </member>
                <member>
                  <Amount>
                    <CurrencyCode>JPY</CurrencyCode>
                    <Value>660</Value>
                  </Amount>
                  <Name>FBATransportationFee</Name>
                </member>
                <member>
                  <Amount>
                    <CurrencyCode>JPY</CurrencyCode>
                    <Value>315</Value>
                  </Amount>
                  <Name>FBAFulfillmentCODFee</Name>
                </member>
              </EstimatedFees>
              <UnfulfillablePreviewItems/>
              <IsFulfillable>true</IsFulfillable>
              <IsCODCapable>true</IsCODCapable>
            </member>
            <member>
              <EstimatedShippingWeight>
                <Unit>kilograms</Unit>
                <Value>12</Value>
              </EstimatedShippingWeight>
              <ShippingSpeedCategory>ScheduledDelivery</ShippingSpeedCategory>
              <ScheduledDeliveryInfo>
                <DeliveryTimeZone>Asia/Tokyo</DeliveryTimeZone>
                <DeliveryWindows>
                  <member>
                    <DeliveryWindow>
                      <StartDateTime>2014-01-04T23:00:00Z</StartDateTime>
                      <EndDateTime>2014-01-05T03:00:00Z</EndDateTime>
                    </DeliveryWindow>
                  </member>
                  <member>
                    <DeliveryWindow>
                      <StartDateTime>2014-01-05T03:00:00Z</StartDateTime>
                      <EndDateTime>2014-01-05T05:00:00Z</EndDateTime>
                    </DeliveryWindow>
                  </member>
                  <member>
                    <DeliveryWindow>
                      <StartDateTime>2014-01-05T05:00:00Z</StartDateTime>
                      <EndDateTime>2014-01-05T07:00:00Z</EndDateTime>
                    </DeliveryWindow>
                  </member>
                  <member>
                    <DeliveryWindow>
                      <StartDateTime>2014-01-05T07:00:00Z</StartDateTime>
                      <EndDateTime>2014-01-05T09:00:00Z</EndDateTime>
                    </DeliveryWindow>
                  </member>
                  <member>
                    <DeliveryWindow>
                      <StartDateTime>2014-01-05T09:00:00Z</StartDateTime>
                      <EndDateTime>2014-01-05T11:00:00Z</EndDateTime>
                    </DeliveryWindow>
                    </member>
                  <member>
                    <DeliveryWindow>
                      <StartDateTime>2014-01-05T11:00:00Z</StartDateTime>
                      <EndDateTime>2014-01-05T12:00:00Z</EndDateTime>
                    </DeliveryWindow>
                  </member>
                  <member>
                    <DeliveryWindow>
                      <StartDateTime>2014-01-05T23:00:00Z</StartDateTime>
                      <EndDateTime>2014-01-06T03:00:00Z</EndDateTime>
                    </DeliveryWindow>
                  </member>
                  <member>
                    <DeliveryWindow>
                      <StartDateTime>2014-01-06T03:00:00Z</StartDateTime>
                      <EndDateTime>2014-01-06T05:00:00Z</EndDateTime>
                    </DeliveryWindow>
                  </member>
                  <member>
                    <DeliveryWindow>
                      <StartDateTime>2014-01-06T05:00:00Z</StartDateTime>
                      <EndDateTime>2014-01-06T07:00:00Z</EndDateTime>
                    </DeliveryWindow>
                  </member>
                  <member>
                    <DeliveryWindow>
                      <StartDateTime>2014-01-06T07:00:00Z</StartDateTime>
                      <EndDateTime>2014-01-06T09:00:00Z</EndDateTime>
                    </DeliveryWindow>
                  </member>
                  <member>
                    <DeliveryWindow>
                      <StartDateTime>2014-01-06T09:00:00Z</StartDateTime>
                      <EndDateTime>2014-01-06T11:00:00Z</EndDateTime>
                    </DeliveryWindow>
                  </member>
                  <member>
                    <DeliveryWindow>
                      <StartDateTime>2014-01-06T11:00:00Z</StartDateTime>
                      <EndDateTime>2014-01-06T12:00:00Z</EndDateTime>
                    </DeliveryWindow>
                  </member>
                </DeliveryWindows>
              </ScheduledDeliveryInfo>
              <FulfillmentPreviewShipments>
                <member>
                  <LatestShipDate>2014-01-04T00:30:00Z</LatestShipDate>
                  <LatestArrivalDate>2014-01-06T06:59:59Z</LatestArrivalDate>
                  <FulfillmentPreviewItems>
                    <member>
                      <EstimatedShippingWeight>
                        <Unit>kilograms</Unit>
                        <Value>10</Value>
                      </EstimatedShippingWeight>
                      <SellerSKU>SampleSKU1</SellerSKU>
                      <SellerFulfillmentOrderItemId>
                      mws-test-query-20100713023406723-2
                      </SellerFulfillmentOrderItemId>
                      <ShippingWeightCalculationMethod>Package
                      </ShippingWeightCalculationMethod>
                      <Quantity>2</Quantity>
                    </member>
                    <member>
                      <EstimatedShippingWeight>
                        <Unit>kilograms</Unit>
                        <Value>2</Value>
                      </EstimatedShippingWeight>
                      <SellerSKU>SampleSKU2</SellerSKU>
                      <SellerFulfillmentOrderItemId>
                      mws-test-query-20100713023406723-1
                      </SellerFulfillmentOrderItemId>
                      <ShippingWeightCalculationMethod>Package
                      </ShippingWeightCalculationMethod>
                      <Quantity>1</Quantity>
                    </member>
                  </FulfillmentPreviewItems>
                  <EarliestShipDate>2014-01-04T00:30:00Z</EarliestShipDate>
                  <EarliestArrivalDate>2014-01-05T07:00:00Z
                  </EarliestArrivalDate>
                </member>
              </FulfillmentPreviewShipments>
              <EstimatedFees>
                <member>
                  <Amount>
                    <CurrencyCode>JPY</CurrencyCode>
                    <Value>225</Value>
                  </Amount>
                  <Name>FBAPerUnitFulfillmentFee</Name>
                </member>
                <member>
                  <Amount>
                    <CurrencyCode>JPY</CurrencyCode>
                    <Value>475</Value>
                  </Amount>
                  <Name>FBAPerOrderFulfillmentFee</Name>
                </member>
                <member>
                  <Amount>
                    <CurrencyCode>JPY</CurrencyCode>
                    <Value>660</Value>
                  </Amount>
                  <Name>FBATransportationFee</Name>
                </member>
              </EstimatedFees>
              <UnfulfillablePreviewItems/>
              <IsFulfillable>true</IsFulfillable>
              <IsCODCapable>false</IsCODCapable>
            </member>
          </FulfillmentPreviews>
        </GetFulfillmentPreviewResult>
        <ResponseMetadata>
          <RequestId>f4c29ec4-ceb7-4608-a764-5c758ac0021a</RequestId>
        </ResponseMetadata>
      </GetFulfillmentPreviewResponse>

<a href="#Examples" class="xref">↑ Top</a>

</div>

</div>

</div>

</div>

<div id="RelatedTopics" class="topic nested1">

Related topics
--------------

<div class="body">

<a href="FBAOutbound_Overview.md" class="xref">What you should know about the Fulfillment Outbound Shipment API section</a>

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
