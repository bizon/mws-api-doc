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

<div id="Finances_ListFinancialEvents" class="nested0">

# ListFinancialEvents

<span class="ph">Returns financial events for a given order, financial
event group, or date range.</span>

<div id="Description" class="topic concept nested1">

## Description

<div class="body conbody">

The <span class="keyword apiname">ListFinancialEvents</span> operation
returns a list of financial events that matches the filter specified in
the request.

You can filter by financial event group ID, date range, or order ID. If
you specify a financial event group ID in the request, then all
financial events in that financial event group are returned. If you
specify a time range in the request, then all financial events that are
posted between the time ranges are returned. If you specify an order ID
in the request, then all financial events that are part of the order are
returned.

Events posted more than 18 months before the current date are not
returned.

<div class="section">

### Availability

This operation is available in all
marketplaces.

</div>

<div class="section">

### Throttling

<div class="tablenoborder">

| Maximum request quota | Restore rate                  | Hourly request quota   |
| --------------------- | ----------------------------- | ---------------------- |
| 30 requests           | One request every two seconds | 1800 requests per hour |

</div>

For definitions of throttling terminology and for a complete explanation
of throttling, see [Throttling: Limits to how often you can submit
requests](../dev_guide/DG_Throttling.md) in the
<span class="ph">Amazon MWS Developer Guide</span>.

</div>

</div>

</div>

<div id="RequestParameters" class="topic reference nested1">

## Request parameters

<div class="body refbody">

<div class="section">

<span class="ph">For more information about the request parameters that
are required for all <span class="ph">Amazon MWS</span> operations, see
<span class="ph">[Required request
parameters](../dev_guide/DG_RequiredRequestParameters.md)</span> in
the <span class="ph">Amazon MWS Developer Guide</span>.</span>

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
<th>Valid values</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><span class="keyword parmname">MaxResultsPerPage</span></td>
<td>The maximum number of results to return per page.</td>
<td>No</td>
<td>Minimum: 1
<p>Maximum: 100</p>
<p>Default: 100</p>
<p><span class="ph">Type: xs:int</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">AmazonOrderId</span></td>
<td>The identifier of the order for which you want to obtain all financial events.</td>
<td>You can only specify one of the following filter criteria:
<ul>
<li><span class="keyword parmname">AmazonOrderId</span></li>
<li><span class="keyword parmname">FinancialEventGroupId</span></li>
<li><span class="keyword parmname">PostedAfter</span> and optionally <span class="keyword parmname">PostedBefore</span></li>
</ul></td>
<td>Any valid Amazon order identifier in 3-7-7 format.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">FinancialEventGroupId</span></td>
<td>The identifier of the financial event group for which you want to obtain all financial events.</td>
<td>You can only specify one of the following filter criteria:
<ul>
<li><span class="keyword parmname">AmazonOrderId</span></li>
<li><span class="keyword parmname">FinancialEventGroupId</span></li>
<li><span class="keyword parmname">PostedAfter</span> and optionally <span class="keyword parmname">PostedBefore</span></li>
</ul></td>
<td>Any valid financial event group identifier.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">PostedAfter</span></td>
<td>A date used for selecting financial events posted after (or at) a specified time.</td>
<td>You can only specify one of the following filter criteria:
<ul>
<li><span class="keyword parmname">AmazonOrderId</span></li>
<li><span class="keyword parmname">FinancialEventGroupId</span></li>
<li><span class="keyword parmname">PostedAfter</span> and optionally <span class="keyword parmname">PostedBefore</span></li>
</ul></td>
<td>Any date no later than two minutes before the request was submitted, in <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>.
<p><span class="ph">Type: xs:dateTime</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">PostedBefore</span></td>
<td>A date used for selecting financial events posted before (but not at) a specified time.</td>
<td>You can only specify one of the following filter criteria:
<ul>
<li><span class="keyword parmname">AmazonOrderId</span></li>
<li><span class="keyword parmname">FinancialEventGroupId</span></li>
<li><span class="keyword parmname">PostedAfter</span> and optionally <span class="keyword parmname">PostedBefore</span></li>
</ul></td>
<td>Any date later than <span class="keyword parmname">PostedAfter</span> and no later than two minutes before the request was submitted, in <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>. If <span class="keyword parmname">PostedAfter</span> and <span class="keyword parmname">PostedBefore</span> are more than 180 days apart, no financial events are returned.
<p>You must specify the <span class="keyword parmname">PostedAfter</span> request parameter if you specify this request parameter.</p>
<p>Default: Now minus two minutes</p>
<p><span class="ph">Type: xs:dateTime</span></p></td>
</tr>
</tbody>
</table>

</div>

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
<td><span class="keyword parmname">NextToken</span></td>
<td>A generated string used to pass information to your next request. If <span class="keyword parmname">NextToken</span> is returned, pass the value of <span class="keyword parmname">NextToken</span> to <span class="keyword apiname">ListFinancialEventsByNextToken</span>. If <span class="keyword parmname">NextToken</span> is not returned, there are no more financial events to return.
<p>Optional</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">FinancialEvents</span></td>
<td>Contains the financial events that meet the criteria specified in the request.
<p>Type: <a href="Finances_Datatypes.md#FinancialEvents" class="xref" title="Contains all information related to a financial event.">FinancialEvents</a></p></td>
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
POST /Finances/2015-05-01 HTTP/1.1
Content-Type: x-www-form-urlencoded
Host: mws.amazonservices.com
User-Agent: <Your User Agent Header>

AWSAccessKeyId=0PB842EXAMPLESDX
&Action=ListFinancialEvents
&AmazonOrderId=333-7777777-7777777
&MWSAuthToken=amzn.mws.4ea38b7b-f563-7709-4bae-87aeaEXAMPLE
&SellerId=A1XEXAMPLEDF
&SignatureMethod=HmacSHA256
&SignatureVersion=2
&Timestamp=2015-05-01T18%3A12%3A21.687Z
&Version=2015-05-01
&Signature=ZQLpf8vEXAMPLE0iC265pf18n0%3D
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
<?xml version="1.0"?>
<ListFinancialEventsResponse xmlns="http://mws.amazonservices.com/Finances/2015-05-01">
  <ListFinancialEventsResult>
    <FinancialEvents>
      <ProductAdsPaymentEventList/>
      <RentalTransactionEventList/>
      <PayWithAmazonEventList/>
      <ServiceFeeEventList/>
      <ServiceProviderCreditEventList/>
      <SellerDealPaymentEventList>
        <SellerDealPaymentEvent>
          <PostedDate>2016-11-21T16:18:15.000Z</PostedDate>
          <DealDescription>test fees</DealDescription>
          <DealId>fec11097c1f4379426a7de68bf938b684f677de2</DealId>
          <EventType>SellerDealComplete</EventType>
          <FeeType>RunLightningDealFee</FeeType>
          <FeeAmount>
            <CurrencyAmount>16.38</CurrencyAmount>
            <CurrencyCode>USD</CurrencyCode>
          </FeeAmount>
          <TaxAmount>
            <CurrencyAmount>3.18</CurrencyAmount>
            <CurrencyCode>USD</CurrencyCode>
          </TaxAmount>
        </SellerDealPaymentEvent>
      </SellerDealPaymentEventList>
      <ProductAdsPaymentEventList>
        <ProductAdsPaymentEvent>
          <PostedDate>2017-01-11T13:17:15.000Z</PostedDate>
          <transactionType>Charge</transactionType>
          <invoiceId>TR1W0B4YB-6</invoiceId>
          <baseValue>
            <CurrencyAmount>115.34</CurrencyAmount>
            <CurrencyCode>USD</CurrencyCode>
          </baseValue>
          <taxValue>
            <CurrencyAmount>21.91</CurrencyAmount>
            <CurrencyCode>USD</CurrencyCode>
          </taxValue>
          <transactionValue>
            <CurrencyAmount>137.25</CurrencyAmount>
            <CurrencyCode>USD</CurrencyCode>
          </transactionValue>
        </ProductAdsPaymentEvent>
      </ProductAdsPaymentEventList>
      <DebtRecoveryEventList/>
      <ShipmentEventList>
        <ShipmentEvent>
          <ShipmentItemList>
            <ShipmentItem>
              <ItemChargeList>
                <ChargeComponent>
                  <ChargeType>Principal</ChargeType>
                  <ChargeAmount>
                    <CurrencyAmount>25.99</CurrencyAmount>
                    <CurrencyCode>USD</CurrencyCode>
                  </ChargeAmount>
                </ChargeComponent>
                <ChargeComponent>
                  <ChargeType>Tax</ChargeType>
                  <ChargeAmount>
                    <CurrencyAmount>0.0</CurrencyAmount>
                    <CurrencyCode>USD</CurrencyCode>
                  </ChargeAmount>
                </ChargeComponent>                  
                <FeeType>ShippingChargeback</FeeType>
                <FeeAmount>
                  <CurrencyAmount>0.0</CurrencyAmount>
                  <CurrencyCode>USD</CurrencyCode>
                </FeeAmount>
                </FeeComponent>
                <FeeComponent>
                  <FeeType>VariableClosingFee</FeeType>
                  <FeeAmount>
                    <CurrencyAmount>0.0</CurrencyAmount>
                    <CurrencyCode>USD</CurrencyCode>
                  </FeeAmount>
                </FeeComponent>
                </ItemFeeList>
                <OrderItemId>46432915698730</OrderItemId>
                <QuantityShipped>1</QuantityShipped>
                <SellerSKU>HS223A-C00</SellerSKU>
            </ShipmentItem>
          </ShipmentItemList>
          <AmazonOrderId>105-0457358-1245022</AmazonOrderId>
          <PostedDate>2017-01-23T01:31:25Z</PostedDate>
          <MarketplaceName>Amazon.com</MarketplaceName>
          <SellerOrderId>105-0457358-1245022</SellerOrderId>
        </ShipmentEvent>
      </ShipmentEventList>
      <AffordabilityExpenseEventList>
        <AffordabilityExpenseEvent>
          <PostedDate>2018-02-08T13:17:15.000Z</PostedDate>
          <TransactionType>Charge</TransactionType>
          <AmazonOrderId>931-2463294-5740665</AmazonOrderId >
          <MarketplaceId>A2XZLSVIQ0F4JT</MarketplaceId>
          <BaseExpense>
            <CurrencyAmount>-100.00</CurrencyAmount>
            <CurrencyCode>INR</CurrencyCode>
          </BaseExpense > 
          <TaxTypeIGST>
            <CurrencyAmount>-18.00</CurrencyAmount>
            <CurrencyCode>INR</CurrencyCode>
          </TaxTypeIGST>
          <TaxTypeSGST>
            <CurrencyAmount>0.00</CurrencyAmount>
            <CurrencyCode>INR</CurrencyCode>
          </TaxTypeSGST>
          <TaxTypeCGST>
            <CurrencyAmount>0.00</CurrencyAmount>
            <CurrencyCode>INR</CurrencyCode>
          </TaxTypeCGST>
          <TotalExpense>
            <CurrencyAmount>-118.00</CurrencyAmount>
            <CurrencyCode>INR</CurrencyCode>
          </TotalExpense>
        </AffordabilityExpenseEvent>
      </AffordabilityExpenseEventList>
      <RetrochargeEventList/>
      <GuaranteeClaimEventList/>
      <ChargebackEventList/>
      <LoanServicingEventList/>
      <RefundEventList/>
      <AdjustmentEventList/>
      <PerformanceBondRefundEventList/>
      <AffordabilityExpenseReversalEventList>
        <AffordabilityExpenseReversalEvent>
          <PostedDate>2018-02-08T13:17:15.000Z</PostedDate>
          <TransactionType>Refund</TransactionType>
          <AmazonOrderId>931-2463294-5740665</AmazonOrderId>
          <MarketplaceId>A2XZLSVIQ0F4JT</MarketplaceId>
          <BaseExpense>
            <CurrencyAmount>100.00</CurrencyAmount>
            <CurrencyCode>INR</CurrencyCode>
          </BaseExpense >
          <TaxTypeIGST>
            <CurrencyAmount>18.00</CurrencyAmount>
            <CurrencyCode>INR</CurrencyCode>
          </TaxTypeIGST>
          <TaxTypeSGST>
            <CurrencyAmount>0.00</CurrencyAmount>
            <CurrencyCode>INR</CurrencyCode>
          </TaxTypeSGST>
          <TaxTypeCGST>
            <CurrencyAmount>0.00</CurrencyAmount>
            <CurrencyCode>INR</CurrencyCode>
          </TaxTypeCGST>
          <TotalExpense>
            <CurrencyAmount>118.00</CurrencyAmount>
            <CurrencyCode>INR</CurrencyCode>
          </TotalExpense>
        </AffordabilityExpenseReversalEvent>
      </AffordabilityExpenseReversalEventList>
    </FinancialEvents>
  </ListFinancialEventsResult>
  <ResponseMetadata>
    <RequestId>6a2929e5-5c77-470e-ad71-36f30bfaffcc</RequestId>
  </ResponseMetadata>
</ListFinancialEventsResponse>
```

[↑ Top](#Examples)

</div>

</div>

</div>

</div>

<div id="RelatedTopics" class="topic nested1">

## Related topics

<div class="body">

[Finances API](../finances/Finances_Overview.md)

[Using NextToken to request additional
pages](../dev_guide/DG_NextToken.md)

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
