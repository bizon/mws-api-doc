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

<div id="Products_GetMyFeesEstimate" class="nested0">

# GetMyFeesEstimate

<div class="body">

<span class="ph">Returns the estimated fees for a list of
products.</span>

</div>

<div id="Description" class="topic concept nested1">

## Description

<div class="body conbody">

The <span class="keyword apiname">GetMyFeesEstimate</span> operation
takes a list of products and marketplaces returns the fees for those
products in those marketplaces. You can call
<span class="keyword apiname">GetMyFeesEstimate</span> for a set of
products before setting prices on those products. Your prices can then
take estimated fees into account. You must specify your products by ASIN
or SKU (not UPC, ISBN, etc).

With each product fees request, you must include an original identifier.
This identifier is included in the fees estimate so you can correlate a
fees estimate with an original request.

This operation allows up to 20 product requests in a single batch. For
more information on processing the result, see [Processing bulk
operation
requests](Products_ProcessingBulkOperationRequests.html "Describes how to process operations in bulk by using the ASINList, SellerSKUList, and IdList request parameters.").

<div class="p">

<div class="note note">

<span class="notetitle">Note:</span> The estimated fees returned by this
API are not guaranteed. Actual fees may vary.

</div>

</div>

<span class="ph">For more information on fees, see [Selling on Amazon
Fee Schedule](https://sellercentral.amazon.co.uk/gp/help/200336920) and
[FBA features and
fees](https://sellercentral-europe.amazon.com/gp/help/201074400) on
Seller Central.</span>

<div class="section">

### Availability

This operation is available in all
marketplaces.

</div>

<div class="section">

### Throttling

<div class="p">

<div class="tablenoborder">

| Maximum request quota | Restore rate          | Hourly request quota    |
| --------------------- | --------------------- | ----------------------- |
| 20 requests           | 10 items every second | 36000 requests per hour |

</div>

<span class="ph">For definitions of throttling terminology and for a
complete explanation of throttling, see [Throttling: Limits to how often
you can submit requests](../dev_guide/DG_Throttling.html) in the
<span class="ph">Amazon MWS Developer Guide</span>.</span>

</div>

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
parameters](../dev_guide/DG_RequiredRequestParameters.html) in the
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
<td><span class="keyword parmname">FeesEstimateRequestList</span></td>
<td><span id="RequestParameters__d50082e1713" class="ph">A list of products, marketplaces, and other options to query for fees.</span></td>
<td>Yes</td>
<td>Maximum: 20 requests.
<p>Type: List of <a href="Products_Datatypes.html#FeesEstimateRequest" class="xref" title="A product, marketplace, and proposed price used to request estimated fees.">FeesEstimateRequest</a></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div id="ResponseElements" class="topic reference nested1">

## Response elements

<div class="body refbody">

<div class="section">

<span class="ph">Amazon MWS returns an XML file that contains the
response to a successful request or subscription. If the request is
unsuccessful, the main response element is
<span class="keyword apiname">ErrorResponse</span>. For more
information, see [Response format](../dev_guide/DG_ResponseFormat.html)
in the <span class="ph">Amazon MWS Developer Guide</span>.</span>

The response elements that the
<span class="keyword apiname">GetMyFeesEstimate</span> operation returns
are described by the publicly available XSD
[ProductsAPI\_Response.xsd](http://g-ecx.images-amazon.com/images/G/01/mwsportal/doc/en_US/products/ProductsAPI_Response.xsd).
The top-level elements returned by the
<span class="keyword apiname">GetMyFeesEstimate</span> operation
are:

</div>

<div class="section">

### GetMyFeesEstimate Elements

<div class="tablenoborder">

| Name                                                         | Description                                  | Required | Values                                                                                                                                         |
| ------------------------------------------------------------ | -------------------------------------------- | -------- | ---------------------------------------------------------------------------------------------------------------------------------------------- |
| <span class="keyword parmname">FeesEstimateResultList</span> | A list of products and their estimated fees. | Yes      | Type: List of [FeesEstimateResult](Products_Datatypes.html#FeesEstimateResult "A product identifier and the estimated fees for that product.") |

</div>

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
parameters](../dev_guide/DG_RequiredRequestParameters.html).</span>

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="sectiondiv content">

``` pre codeblock
POST /Products/2011-10-01 HTTP/1.1
Content-Type: x-www-form-urlencoded
Host: mws.amazonservices.com
User-Agent: <Your User Agent Header> 

FeesEstimateRequestList.FeesEstimateRequest.1.MarketplaceId= ATVPDKIKX0DER
&FeesEstimateRequestList.FeesEstimateRequest.1.IdType=ASIN
&FeesEstimateRequestList.FeesEstimateRequest.1.IdValue= B002KT3XQM
&FeesEstimateRequestList.FeesEstimateRequest.1.IsAmazonFulfilled=true
&FeesEstimateRequestList.FeesEstimateRequest.1.Identifier= request1
&FeesEstimateRequestList.FeesEstimateRequest.1.PriceToEstimateFees.ListingPrice.CurrencyCode=USD
&FeesEstimateRequestList.FeesEstimateRequest.1.PriceToEstimateFees.ListingPrice.Amount=30.00
&FeesEstimateRequestList.FeesEstimateRequest.1.PriceToEstimateFees.Shipping.CurrencyCode=USD
&FeesEstimateRequestList.FeesEstimateRequest.1.PriceToEstimateFees.Shipping.Amount=3.99
&FeesEstimateRequestList.FeesEstimateRequest.1.PriceToEstimateFees.Points.PointsNumber=0
&AWSAccessKeyId=AKIAEXAMPLEFWR4TJ7ZQ
&Action=GetMyFeesEstimate
&MWSAuthToken=amzn.mws.4ea38b7b-f563-7709-4bae-87aeaEXAMPLE
&SellerId=A1IMEXAMPLEWRC
&SignatureMethod=HmacSHA256
&SignatureVersion=2
&Timestamp=2012-12-04T22%3A03%3A05Z
&Version=2011-10-01
&Signature=fJFzEXAMPLEEax1vAdKP7l3lwKQUH1r34lcEXAMPLEA%3D
```

[↑ Top](#Examples)

</div>

</div>

<div class="section">

### Example response (Success)

<span class="ph">For information about standard response formatting, see
[Response format](../dev_guide/DG_ResponseFormat.html).</span>

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="sectiondiv content">

``` pre codeblock
<?xml version="1.0"?>
<GetMyFeesEstimateResponse
  xmlns="http://mws.amazonservices.com/schema/Products/2011-10-01">
  <GetMyFeesEstimateResult>
    <FeesEstimateResultList>
      <FeesEstimateResult>
        <Status>Success</Status>
        <FeesEstimateIdentifier>
          <MarketplaceId>ATVPDKIKX0DER</MarketplaceId>
          <IdValue>B0002GTTRC</IdValue>
          <IdType>ASIN</IdType>
          <IsAmazonFulfilled>True</IsAmazonFulfilled>
          <PriceToEstimateFees>
            <ListingPrice>
              <CurrencyCode>USD</CurrencyCode>
              <Amount>58.00</Amount>
            </ListingPrice>
            <Shipping>
              <CurrencyCode>USD</CurrencyCode>
              <Amount>0.00</Amount>
            </Shipping>
            <Points>
              <PointsNumber>0</PointsNumber>
            </Points>
          </PriceToEstimateFees>
          <SellerInputIdentifier>IDDDDDDDD</SellerInputIdentifier>
        </FeesEstimateIdentifier>
        <FeesEstimate>
          <TimeOfFeesEstimation>2015-07-19T23:15:11.859Z</TimeOfFeesEstimation>
          <TotalFeesEstimate>
            <CurrencyCode>USD</CurrencyCode>
            <Amount>10.00</Amount>
          </TotalFeesEstimate>
          <FeeDetailList>
            <FeeDetail>
              <FeeType>AmazonReferralFee</FeeType>
              <FeeAmount>
                <CurrencyCode>USD</CurrencyCode>
                <Amount>8.70</Amount>
              </FeeAmount>
              <FeePromotion>
                <CurrencyCode>USD</CurrencyCode>
                <Amount>1.00</Amount>
              </FeePromotion>
              <FinalFee>
                <CurrencyCode>USD</CurrencyCode>
                <Amount>7.70</Amount>
              </FinalFee>
            </FeeDetail>
            <FeeDetail>
              <FeeType>VariableClosingFee</FeeType>
              <FeeAmount>
                <CurrencyCode>USD</CurrencyCode>
                <Amount>0.00</Amount>
              </FeeAmount>
              <FinalFee>
                <CurrencyCode>USD</CurrencyCode>
                <Amount>0.0</Amount>
              </FinalFee>
            </FeeDetail>
            <FeeDetail>
              <FeeType>FulfillmentFees</FeeType>
              <FeeAmount>
                <CurrencyCode>USD</CurrencyCode>
                <Amount>2.30</Amount>
              </FeeAmount>
              <FinalFee>
                <CurrencyCode>USD</CurrencyCode>
                <Amount>2.30</Amount>
              </FinalFee>
              <IncludedFeeList>
                <FeeDetail>
                  <FeeType>OrderHandlingFee</FeeType>
                  <FeeAmount>
                    <CurrencyCode>USD</CurrencyCode>
                    <Amount>1.00</Amount>
                  </FeeAmount>
                  <FinalFee>
                    <CurrencyCode>USD</CurrencyCode>
                    <Amount>1.00</Amount>
                  </FinalFee>
                </FeeDetail>
                <FeeDetail>
                  <FeeType>PickAndPackFee</FeeType>
                  <FeeAmount>
                    <CurrencyCode>USD</CurrencyCode>
                    <Amount>0.30</Amount>
                  </FeeAmount>
                  <FinalFee>
                    <CurrencyCode>USD</CurrencyCode>
                    <Amount>0.30</Amount>
                  </FinalFee>
                </FeeDetail>
                <FeeDetail>
                  <FeeType>WeightHandlingFee</FeeType>
                  <FeeAmount>
                    <CurrencyCode>USD</CurrencyCode>
                    <Amount>1.00</Amount>
                  </FeeAmount>
                  <FinalFee>
                    <CurrencyCode>USD</CurrencyCode>
                    <Amount>1.00</Amount>
                  </FinalFee>
                </FeeDetail>
              </IncludedFeeList>
            </FeeDetail>
          </FeeDetailList>
        </FeesEstimate>
      </FeesEstimateResult>
    </FeesEstimateResultList>
  </GetMyFeesEstimateResult>
  <ResponseMetadata>
    <RequestId>21534f03-e7e3-4d9a-9bea-0e15add3326d</RequestId>
  </ResponseMetadata>
</GetMyFeesEstimateResponse>
```

[↑ Top](#Examples)

</div>

</div>

<div class="section">

### Example response (Error, invalid parameter value)

<span class="ph">For information about standard response formatting, see
[Response format](../dev_guide/DG_ResponseFormat.html).</span>

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="sectiondiv content">

``` pre codeblock
<?xml version="1.0"?>
<GetMyFeesEstimateResponse
  xmlns="http://mws.amazonservices.com/schema/Products/2011-10-01">
  <GetMyFeesEstimateResult>
    <FeesEstimateResultList>
      <FeesEstimateResult>
        <Status>ClientError</Status>
        <FeesEstimateIdentifier>
          <!--  Rest of the input parameters -->
        </FeesEstimateIdentifier>
        <Error>
          <Type>Sender</Type>
          <Code>InvalidParameterValue</Code>
          <Message> Attribute X is not valid for marketplace ATVPDKIKX0DER </Message>
        </Error>
      </FeesEstimateResult>
    </FeesEstimateResultList>
  </GetMyFeesEstimateResult>
  <ResponseMetadata>
    <RequestId>21534f03-e7e3-4d9a-9bea-0e15add3326d</RequestId>
  </ResponseMetadata>
</GetMyFeesEstimateResponse>
```

[↑ Top](#Examples)

</div>

</div>

<div class="section">

### Example response (Error, internal error)

<span class="ph">For information about standard response formatting, see
[Response format](../dev_guide/DG_ResponseFormat.html).</span>

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="sectiondiv content">

``` pre codeblock
<?xml version="1.0"?>
<GetMyFeesEstimateResponse xmlns="http://mws.amazonservices.com/schema/Products/2011-10-01">
  <GetMyFeesEstimateResult>
    <FeesEstimateResultList>
      <FeesEstimateResult>
        <Status>ServerError</Status>
        <FeesEstimateIdentifier>
          <!--  Rest of the input parameters -->
        </FeesEstimateIdentifier>
        <Error>
          <Type> Receiver </Type>
          <Code>InternalError</Code>
          <Message> There was an internal service failure. </Message>
        </Error>
      </FeesEstimateResult>
    </FeesEstimateResultList>
  </GetMyFeesEstimateResult>
  <ResponseMetadata>
    <RequestId>21534f03-e7e3-4d9a-9bea-0e15add3326d</RequestId>
  </ResponseMetadata>
</GetMyFeesEstimateResponse>
```

[↑ Top](#Examples)

</div>

</div>

<div class="section">

### Example response (Error, data not available)

<span class="ph">For information about standard response formatting, see
[Response format](../dev_guide/DG_ResponseFormat.html).</span>

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="sectiondiv content">

``` pre codeblock
<?xml version="1.0"?>
<GetMyFeesEstimateResponse
  xmlns="http://mws.amazonservices.com/schema/Products/2011-10-01">
  <GetMyFeesEstimateResult>
    <FeesEstimateResultList>
      <FeesEstimateResult>
        <Status>ServerError</Status>
        <FeesEstimateIdentifier>
          <!--  Rest of the input parameters -->
        </FeesEstimateIdentifier>
        <Error>
          <Type> Receiver </Type>
          <Code>DataNotAvailable</Code>
          <Message> Non-buyable item. Missing category. </Message>
        </Error>
      </FeesEstimateResult>
    </FeesEstimateResultList>
  </GetMyFeesEstimateResult>
  <ResponseMetadata>
    <RequestId>21534f03-e7e3-4d9a-9bea-0e15add3326d</RequestId>
  </ResponseMetadata>
</GetMyFeesEstimateResponse>
```

[↑ Top](#Examples)

</div>

</div>

<div class="section">

### Example response (Error, batch size above 20)

<span class="ph">For information about standard response formatting, see
[Response format](../dev_guide/DG_ResponseFormat.html).</span>

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="sectiondiv content">

``` pre codeblock
<?xml version="1.0"?>
<ErrorResponse xmlns="http://mws.amazonservices.com/schema/Products/2011-10-01">
  <Error>
    <Type>Sender</Type>
    <Code>InvalidParameterValue</Code>
    <Message> There are more than 20 elements in FeesEstimateRequestList. </Message>
    <Detail/>
  </Error>
  <RequestID>9f17b9ff-2ef5-42fe-b956-6d9b38ac8422</RequestID>
</ErrorResponse>
```

[↑ Top](#Examples)

</div>

</div>

</div>

</div>

<div id="RelatedTopics" class="topic nested1">

## Related topics

<div class="body">

[Products API](../products/Products_Overview.html)

[Processing bulk operation
requests](Products_ProcessingBulkOperationRequests.html "Describes how to process operations in bulk by using the ASINList, SellerSKUList, and IdList request parameters.")

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
