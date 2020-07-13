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

<div id="Feeds_SubmitFeed" class="nested0">

# SubmitFeed

<div class="body">

<span class="ph">Uploads a feed for processing by
<span class="ph">Amazon MWS</span>.</span>

</div>

<div id="Description" class="topic concept nested1">

## Description

<div class="body conbody">

The
<span id="Description__SubmitFeed" class="keyword apiname">SubmitFeed</span>
operation uploads a file and any necessary metadata for processing. Note
that you *must* calculate a Content-MD5 value for the submitted file.
For more information about creating a Content-MD5 value, see [Using the
Content-MD5 hash with the SubmitFeed and GetFeedSubmissionResult
operations](Feeds_MD5.md).

Feed size must be below 2 GiB (2<sup>31</sup>, or 2,147,483,648 bytes)
per feed. If you have a large amount of data to submit, you should
submit feeds smaller than the feed size limit by breaking up the data,
or submit the feeds over a period of time. For optimal performance, a
good practice is to submit feeds with a size limit of 30,000
records/items, or submit feeds over a period of time, such as every few
hours.

<div class="section">

### Availability

This operation is available in all marketplaces.

</div>

<div class="section">

### Throttling

<div class="p">

<div class="tablenoborder">

| Maximum request quota | Restore rate                  | Hourly request quota |
| --------------------- | ----------------------------- | -------------------- |
| 15 requests           | One request every two minutes | 30 requests per hour |

</div>

<span class="ph">For definitions of throttling terminology and for a
complete explanation of throttling, see [Throttling: Limits to how often
you can submit requests](../dev_guide/DG_Throttling.md) in the
<span class="ph">Amazon MWS Developer Guide</span>.</span>

</div>

</div>

<div class="section">

### Maximizing feed performance

You can generally get the best overall feed processing performance by
following these guidelines:

  - Avoid submitting a lot of feeds with only a few records in each
    feed. When possible, combine the data into less frequent larger
    feeds.
  - Include only the products you are updating, not your entire
    inventory.
  - Upload one feed of the same type no more than once every 20 minutes.
    Allow more time between larger feeds.
  - Keep file size below 10 MiB (5\*2<sup>21</sup>, or 10,485,760
    bytes).

</div>

<div class="section">

### Setting the Content-Type for a feed

Your feeds must be in a valid encoding based on your marketplace and
file type, and that encoding must be specified as an HTTP Content-Type
header. The following table shows the HTTP Content-Type header you
should use for flat files and XML files for each marketplace:

<div class="tablenoborder">

| Marketplace              | Flat File Content-Type                        | XML Content-Type |
| ------------------------ | --------------------------------------------- | ---------------- |
| North America and Europe | text/tab-separated-values; charset=iso-8859-1 | text/xml         |
| Japan                    | text/tab-separated-values; charset=Shift\_JIS | text/xml         |

</div>

</div>

<div class="section">

### Submitting Feeds with Multiple Marketplace IDs

If an Amazon seller is registered in multiple marketplaces, then the
seller has multiple marketplace IDs associated with their
merchant/seller ID. <span class="ph">For more information on submitting
a feed using multiple marketplace IDs, see [Using Multiple
Marketplaces](Feeds_EU_Global_Seller.md).</span>

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
<th>Valid values</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><span class="keyword parmname">FeedContent</span></td>
<td>The actual content of the feed itself, in XML or flat file format. You must include the <span class="keyword parmname">FeedContent</span> in the body of the HTTP request.</td>
<td>Yes</td>
<td>Default: None
<p>Type: HTTP-BODY</p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">FeedType</span></td>
<td>A <a href="../feeds/Feeds_FeedType.md" class="xref">FeedType</a> value indicating how the data should be processed.</td>
<td>Yes</td>
<td>Default: None
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">MarketplaceIdList</span></td>
<td>A list of one or more marketplace IDs (of marketplaces you are registered to sell in) that you want the feed to be applied to. The feed will be applied to all the marketplaces you specify.
<p>For example:</p>
<p><samp class="ph codeph"> &amp;MarketplaceIdList.Id.1=A13V1IB3VIYZZH &amp;MarketplaceIdList.Id.2=A1PA6795UKMFR9</samp></p>
<p>See <a href="Feeds_EU_Global_Seller.md" class="xref">Using multiple marketplaces</a> for more information.</p></td>
<td>No, except for Product Images Feeds.<sup>1</sup></td>
<td>Marketplace IDs for marketplaces where you are registered to sell.
<p>Default: When no marketplaces are specified in the feed request, the request returns <em>all</em> marketplaces where the feed request can be submitted.</p>
<p>List of <span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">PurgeAndReplace</span></td>
<td>A Boolean value that enables the purge and replace functionality. Set to <var class="keyword varname">true</var> to purge and replace the existing data; otherwise <var class="keyword varname">false</var>. This value only applies to product-related flat file feed types, which do not have a mechanism for specifying purge and replace in the feed body. <strong>Use this parameter only in exceptional cases</strong>. Usage is throttled to allow only one purge and replace within a 24-hour period.</td>
<td>No</td>
<td>Default: false
<p><span class="ph">Type: xs:boolean</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">ContentMD5Value</span></td>
<td>An MD5 hash of the feed content. <span class="ph">Amazon MWS</span> uses this value to determine if the feed data has been corrupted or tampered with during transit. This replaces the Content-MD5 header. See <a href="Feeds_MD5.md" class="xref">Using the Content-MD5 hash with the SubmitFeed and GetFeedSubmissionResult operations</a>.</td>
<td>No</td>
<td>Default: none
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">AmazonOrderId</span></td>
<td>An Amazon-defined order identifier. Used to identify an <span class="ph">Amazon Easy Ship</span> order that you want to get PDF documents for. <span class="ph">This functionality is available only in the India marketplace.</span> See <a href="../easy_ship/EasyShip_HowToGetEasyShipDocs.md" class="xref">How to get invoice, shipping label, and warranty documents</a>.</td>
<td>No</td>
<td>Default: none
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">DocumentType</span></td>
<td>The type of PDF document that you want to get for the <span class="ph">Amazon Easy Ship</span> order identified with the <span class="keyword parmname">AmazonOrderId</span> parameter. <span class="ph">This functionality is available only in the India marketplace.</span> See <a href="../easy_ship/EasyShip_HowToGetEasyShipDocs.md" class="xref">How to get invoice, shipping label, and warranty documents</a>.</td>
<td>No</td>
<td>Default: all
<p>Values: <var class="keyword varname">ShippingLabel</var>, <var class="keyword varname">Invoice</var>, <var class="keyword varname">Warranty</var></p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
</tbody>
</table>

</div>

<div class="section">

1.  A marketplace ID is required when submitting a Product Images Feed
    (`_POST_PRODUCT_IMAGE_DATA_`). If the marketplace ID is not
    included, the image might not be published on the product detail
    page. See [FeedType enumeration](../feeds/Feeds_FeedType.md).

</div>

</div>

</div>

<div id="ResponseElements" class="topic reference nested1">

## Response elements

<div class="body refbody">

<div class="tablenoborder">

| Name                                                     | Description                                                           | Required | Valid values                                                                                                        |
| -------------------------------------------------------- | --------------------------------------------------------------------- | -------- | ------------------------------------------------------------------------------------------------------------------- |
| <span class="keyword parmname">FeedSubmissionInfo</span> | <span class="ph">Detailed information about a feed submission.</span> | Yes      | Type: [FeedSubmissionInfo](Feeds_Datatypes.md#FeedSubmissionInfo "Detailed information about a feed submission.") |

</div>

</div>

</div>

<div id="Examples" class="topic reference nested1">

## Examples

<div class="body refbody">

<div class="section">

<div class="note note">

<span class="notetitle">Note:</span> This API does not support the HTTP
GET operation. You must use POST.

</div>

</div>

<div class="section">

### Example query request

<span class="ph">For more information about the request parameters that
are required for all <span class="ph">Amazon MWS</span> operations, see
[Required request
parameters](../dev_guide/DG_RequiredRequestParameters.md) in the
<span class="ph">Amazon MWS Developer Guide</span>.</span>

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="sectiondiv content">

``` pre codeblock
POST /Feeds/2009-01-01 HTTP/1.1
Content-Type: x-www-form-urlencoded
Host: mws.amazonservices.com
User-Agent: <Your User Agent Header>

?AWSAccessKeyId=0PB842ExampleN4ZTR2
&Action=SubmitFeed
&FeedType=_POST_PRODUCT_DATA_
&MWSAuthToken=amzn.mws.4ea38b7b-f563-7709-4bae-87aeaEXAMPLE
&MarketplaceIdList.Id.1=ATVExampleDER
&SellerId=A1XExample5E6
&ContentMD5Value=ExampleMd5HashOfHttpBodyAsPerRfc2616Example
&SignatureMethod=HmacSHA256
&SignatureVersion=2
&Timestamp=2009-01-26T23%3A51%3A31.315Z
&Version=2009-01-01
&Signature=SvSExamplefZpSignaturex2cs%3D
```

[↑ Top](#Examples)

</div>

</div>

<div class="section">

### Example request body

<span class="ph">For more information about the request parameters that
are required for all <span class="ph">Amazon MWS</span> operations, see
[Required request
parameters](../dev_guide/DG_RequiredRequestParameters.md) in the
<span class="ph">Amazon MWS Developer Guide</span>.</span>

The following is an example HTTP body for a
<span class="keyword apiname">SubmitFeed</span> request for a
health-related product. See the note above on
<span class="keyword parmname">FeedContent</span>. The HTTP body in
unencrypted form looks like the following:

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="sectiondiv content">

``` pre codeblock
<?xml version="1.0" encoding="iso-8859-1"?>
<AmazonEnvelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xsi:noNamespaceSchemaLocation="amzn-envelope.xsd">
  <Header>
    <DocumentVersion>1.01</DocumentVersion>
    <MerchantIdentifier>M_EXAMPLE_123456</MerchantIdentifier>
  </Header>
  <MessageType>Product</MessageType>
  <PurgeAndReplace>false</PurgeAndReplace>
  <Message>
    <MessageID>1</MessageID>
    <OperationType>Update</OperationType>
    <Product>
      <SKU>56789</SKU>
      <StandardProductID>
        <Type>ASIN</Type>
        <Value>B0EXAMPLEG</Value>
      </StandardProductID>
      <ProductTaxCode>A_GEN_NOTAX</ProductTaxCode>
      <DescriptionData>
        <Title>Example Product Title</Title>
        <Brand>Example Product Brand</Brand>
        <Description>This is an example product description.</Description>
        <BulletPoint>Example Bullet Point 1</BulletPoint>
        <BulletPoint>Example Bullet Point 2</BulletPoint>
        <MSRP currency="USD">25.19</MSRP>
        <Manufacturer>Example Product Manufacturer</Manufacturer>
        <ItemType>example-item-type</ItemType>
      </DescriptionData>
      <ProductData>
        <Health>
          <ProductType>
            <HealthMisc>
              <Ingredients>Example Ingredients</Ingredients>
              <Directions>Example Directions</Directions>
            </HealthMisc>
          </ProductType>
        </Health>
      </ProductData>
    </Product>
  </Message>
</AmazonEnvelope>
```

[↑ Top](#Examples)

</div>

</div>

<div class="section">

### Example response

<span class="ph">Amazon MWS returns an XML file that contains the
response to a successful request or subscription. If the request is
unsuccessful, the main response element is
<span class="keyword apiname">ErrorResponse</span>. For more
information, see [Response format](../dev_guide/DG_ResponseFormat.md)
in the <span class="ph">Amazon MWS Developer Guide</span>.</span>

<span class="ph">Amazon MWS</span> responds with the following header
and body:

Header:

  `HTTP/1.1 200 OK Content-Type: text/xml`

Body:

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="sectiondiv content">

``` pre codeblock
<?xml version="1.0"?>
<SubmitFeedResponse
    xmlns="http://mws.amazonaws.com/doc/2009-01-01/">
  <SubmitFeedResult>
    <FeedSubmissionInfo>
      <FeedSubmissionId>2291326430</FeedSubmissionId>
      <FeedType>_POST_PRODUCT_DATA_</FeedType>
      <SubmittedDate>2009-02-20T02:10:35+00:00</SubmittedDate>
      <FeedProcessingStatus>_SUBMITTED_</FeedProcessingStatus>
    </FeedSubmissionInfo>
  </SubmitFeedResult>
  <ResponseMetadata>
    <RequestId>75424a38-f333-4105-98f0-2aa9592d665c</RequestId>
  </ResponseMetadata>
</SubmitFeedResponse>
```

[↑ Top](#Examples)

</div>

</div>

</div>

</div>

<div id="RelatedActions" class="topic nested1">

## Related topics

<div class="body">

[What you should know about the Amazon MWS Feeds API
section](../feeds/Feeds_Overview.md)

[GetFeedSubmissionList](Feeds_GetFeedSubmissionList.md "Returns a list of all feed submissions submitted in the previous 90 days.")

[GetFeedSubmissionResult](../feeds/Feeds_GetFeedSubmissionResult.md)

[Using the Content-MD5 hash with the SubmitFeed and
GetFeedSubmissionResult operations](Feeds_MD5.md)

[Working with Content-MD5 checksums](../dev_guide/DG_MD5.md)

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
