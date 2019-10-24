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

<div id="Finances_ListFinancialEventsByNextToken" class="nested0">

# ListFinancialEventsByNextToken

<span class="ph">Returns the next page of financial events using the
<span class="keyword parmname">NextToken</span> parameter.</span>

<div id="Description" class="topic concept nested1">

## Description

<div class="body conbody">

The <span class="keyword apiname">ListFinancialEventsByNextToken</span>
operation returns the next page of financial events using the
<span class="keyword parmname">NextToken</span> value that was returned
by your previous request to either
<span class="keyword apiname">ListFinancialEvents</span> or
<span class="keyword apiname">ListFinancialEventsByNextToken</span>. If
<span class="keyword parmname">NextToken</span> is not returned, there
are no more pages to return.

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
the <span class="ph">Amazon MWS Developer
Guide</span>.</span>

<div class="tablenoborder">

| Name                                            | Description                                                                                                                                                                                                 | Required | Valid values                            |
| ----------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------- | --------------------------------------- |
| <span class="keyword parmname">NextToken</span> | A string token returned in the response of your previous request to either <span class="keyword apiname">ListFinancialEvents</span> or <span class="keyword apiname">ListFinancialEventsByNextToken</span>. | Yes      | <span class="ph">Type: xs:string</span> |

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
&Action=ListFinancialEventsByNextToken
&MWSAuthToken=amzn.mws.4ea38b7b-f563-7709-4bae-87aeaEXAMPLE
&NextToken=88faca76-b600-46d2-b53c-0c8c4EXAMPLE
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
<ListFinancialEventsByNextTokenResponse xmlns="http://mws.amazonservices.com/Finances/2018-08-02">
  <ListFinancialEventsByNextTokenResult>
    <NextToken>e21hcmtldHBsYWNlSWQ6bnVsbCxtYXhSZXN1bHRzUGVyUGFnZTowLHNlYXJjaFF1ZXJ5Q2hlY2tzdW06bnVsbCxxdWVyeVBhZ2luYXRpb25Ub2tlbjoidDB3V25MNXFLWkRIZ2p5ZzB3ZHRWODVnV0htVExVMkM0XzlsMHpRMG9HVXFZOVhTdjFyWUNWUE8teGxWRnF3N0ZyaDIyY3lQX0VTOXYxendQNUVvc0t0V1NKM1YyQkRJdWcyWFpXdm1KVmdPVktBdzNIMXUyVHBiTGoxVmRmY3Z6ZlU1WlpNaEpsQ0RKUnYxRk16am13Y1YyQ1BoOXNWMU1xNUZqamxUMlRCeFBkSjdEa3BkbENISElVZ094aHVTN3ZfZlFCUWYyWWJYZ2l3NHNxZXkwNnQyaVBucm5PdnAzRTdKbW4xcnc1UTlaTGV1Ymk5WUV6UGJ6UnhjRmh2VUFKdlQ5U2U3eERIdHVMUzNJVWFRODBubVhja3JLeWt3dVZKeWZXQm5CY3p0bjZTbVRHenJmZ1VOanFMWFFNT2giLHNlYXJjaFF1ZXJ5Om51bGwsdG9rZW5DcmVhdGlvbkRhdGU6MTQ4NTg2MjY5ODI1NCxzZWxsZXJJZDoiQTM1SlMxREpITjdGViJ9</NextToken>
    <FinancialEvents>
      <ProductAdsPaymentEventList/>
      <RentalTransactionEventList/>
      <PayWithAmazonEventList/>
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
      <AffordabilityExpenseEventList>
        <AffordabilityExpenseEvent>
          <PostedDate>2018-02-08T13:17:15.000Z</PostedDate>
          <TransactionType>Charge</TransactionType>
          <AmazonOrderId>931-2463294-5740665</AmazonOrderId>
          <MarketplaceId>A2XZLSVIQ0F4JT</MarketplaceId>
          <BaseExpense>
            <CurrencyAmount>-100.00</CurrencyAmount>
            <CurrencyCode>INR</CurrencyCode>
          </BaseExpense>
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
      <ServiceFeeEventList>
        <ServiceFeeEvent>
          <FeeDescription>Shacke Luggage Tags with Full Back Privacy Cover w/ Steel Loops - Set of 2
            (Green)</FeeDescription>
          <SellerSKU>FH-REED-16DX</SellerSKU>
        </ServiceFeeEvent>
        <ServiceFeeEvent>
          <FeeDescription>Shacke Luggage Tags with Full Back Privacy Cover w/ Steel Loops - Set of 2
            (Green)</FeeDescription>
          <SellerSKU>FH-REED-16DX</SellerSKU>
          <FeeList>
            <FeeComponent>
              <FeeType>FBACustomerReturnPerOrderFee</FeeType>
              <FeeAmount>
                <CurrencyAmount>-1.0</CurrencyAmount>
                <CurrencyCode>USD</CurrencyCode>
              </FeeAmount>
            </FeeComponent>
            <FeeComponent>
              <FeeType>FBACustomerReturnPerUnitFee</FeeType>
              <FeeAmount>
                <CurrencyAmount>-1.06</CurrencyAmount>
                <CurrencyCode>USD</CurrencyCode>
              </FeeAmount>
            </FeeComponent>
            <FeeComponent>
              <FeeType>FBACustomerReturnWeightBasedFee</FeeType>
              <FeeAmount>
                <CurrencyAmount>-0.5</CurrencyAmount>
                <CurrencyCode>USD</CurrencyCode>
              </FeeAmount>
            </FeeComponent>
          </FeeList>
        </ServiceFeeEvent>
      </ServiceFeeEventList>
      <AffordabilityExpenseReversalEventList>
        <AffordabilityExpenseReversalEvent>
          <PostedDate>2018-02-08T13:17:15.000Z</PostedDate>
          <TransactionType>Refund</TransactionType>
          <AmazonOrderId>931-2463294-5740665</AmazonOrderId>
          <MarketplaceId>A2XZLSVIQ0F4JT</MarketplaceId>
          <BaseExpense>
            <CurrencyAmount>100.00</CurrencyAmount>
            <CurrencyCode>INR</CurrencyCode>
          </BaseExpense>
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
      <ServiceProviderCreditEventList/>
      <SellerDealPaymentEventList/>
      <DebtRecoveryEventList/>
      <AdjustmentEventList>
        <AdjustmentEvent>
          <AdjustmentItemList>
            <AdjustmentItem>
              <PerUnitAmount>
                <CurrencyAmount>3.38</CurrencyAmount>
                <CurrencyCode>USD</CurrencyCode>
              </PerUnitAmount>
              <TotalAmount>
                <CurrencyAmount>3.38</CurrencyAmount>
                <CurrencyCode>USD</CurrencyCode>
              </TotalAmount>
              <Quantity>1</Quantity>
              <SellerSKU>KL-BPYA-C1VH</SellerSKU>
              <ProductDescription>Shacke Metal Shoe Horn 7.5&quot; inches - Double Sided Stainless
                Steel (Silver)</ProductDescription>
            </AdjustmentItem>
          </AdjustmentItemList>
          <AdjustmentType>REVERSAL_REIMBURSEMENT</AdjustmentType>
        </AdjustmentEvent>
      </AdjustmentEventList>
      <PerformanceBondRefundEventList/>
    </FinancialEvents>
  </ListFinancialEventsByNextTokenResult>
  <ResponseMetadata>
    <RequestId>c07d1dd2-12f9-415f-a167-8ab5f7726dbf</RequestId>
  </ResponseMetadata>
</ListFinancialEventsByNextTokenResponse>
```

[↑ Top](#Examples)

</div>

</div>

</div>

</div>

<div id="RelatedTopics" class="topic nested1">

## Related topics

<div class="body">

[Using NextToken to request additional
pages](../dev_guide/DG_NextToken.md)

[Finances API](../finances/Finances_Overview.md)

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
