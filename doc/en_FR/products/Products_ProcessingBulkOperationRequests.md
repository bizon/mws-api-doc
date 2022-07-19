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
<span id="MWSDX_dep_notice"></span>

### Deprecation Notice:

Amazon Marketplace Web Service (MWS) will no longer be available after
**December 31, 2023**. All MWS developers must migrate to Selling
Partner API (SP-API) to avoid service disruptions. Refer to the
[Migration
Hub](https://developer-docs.amazon.com/sp-api/page/migration-hub) for
more information.

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

<div id="Products_BulkProcessing" class="nested0">

# Processing bulk operation requests

<div class="body">

Describes how to process operations in bulk by using the <span
class="keyword parmname">ASINList</span>, <span
class="keyword parmname">SellerSKUList</span>, and <span
class="keyword parmname">IdList</span> request parameters.

Operations in the <span class="ph">Amazon MWS</span> <span
class="ph">Products API section</span> that take an <span
class="keyword parmname">ASINList</span>, <span
class="keyword parmname">SellerSKUList</span>, or <span
class="keyword parmname">IdList</span> as input parameters can return
the results from each of these inputs separately from all the other
inputs. This means that if you specify 20 ASINs with the <span
class="keyword parmname">ASINList</span> input parameter of the <span
class="keyword apiname">GetCompetitivePricingForASIN</span> operation,
for example, and the operation can only get data for 18 of these ASINs,
the operation will return results for the 18 ASINs instead of failing
the entire request. The operation will also indicate that the remaining
two ASINs failed. The seven bulk operations that take either an <span
class="keyword parmname">ASINList</span>, <span
class="keyword parmname">SellerSKUList</span>, or <span
class="keyword parmname">IdList</span> as input parameters are: <span
class="keyword apiname">GetMatchingProduct</span>, <span
class="keyword apiname">GetMatchingProductForId</span>, <span
class="keyword apiname">GetCompetitivePricingForSKU</span>, <span
class="keyword apiname">GetCompetitivePricingForASIN</span>, <span
class="keyword apiname">GetLowestOfferListingsForSKU</span>, <span
class="keyword apiname">GetLowestOfferListingsForASIN</span>, and <span
class="keyword apiname">GetMyFeesEstimate</span>.

The following example shows how to use the <span
class="keyword parmname">ASINList</span> input parameter to specify
three ASINs in a query request:

<div class="p">

``` pre
https://mws.amazonservices.com/Products/2011-10-01
?AWSAccessKeyId=AKIAJGUVGFGHNKE2NVUA
&Action=GetMatchingProduct
&MWSAuthToken=amzn.mws.4ea38b7b-f563-7709-4bae-87aeaEXAMPLE
&SellerId=A2NK2PX936TF53
&SignatureVersion=2
&Timestamp=2012-02-07T01%3A22%3A39Z
&Version=2011-10-01
&Signature=MhSREjubAxTGSldGGWROxk4qvi3sawX1inVGF%2FepJOI%3D
&SignatureMethod=HmacSHA256
&MarketplaceId=ATVPDKIKX0DER
&ASINList.ASIN.1=B002KT3XRQ
&ASINList.ASIN.2=B002KT3XQC
&ASINList.ASIN.3=B002KT3XQM
```

</div>

A query request using the <span
class="keyword parmname">SellerSKU</span> input parameter would be
formed similarly, replacing `&ASINList.ASIN` with
`&SellerSKUList.SellerSKU` and <span
class="keyword parmname">ASIN</span> values with <span
class="keyword parmname">SellerSKU</span> values. Likewise, a query
request using the <span class="keyword parmname">Id</span> input
parameter would be formed similarly, replacing `&ASINList.ASIN` with
`&IdList.Id` and <span class="keyword parmname">ASIN</span> values with
<span class="keyword parmname">Id</span> values.

Bulk operations in the <span class="ph">Amazon MWS</span> <span
class="ph">Products API section</span> return an <span
class="keyword parmname">OperationNameResult</span> response element for
each product identifier (<span class="keyword parmname">ASIN</span>,
<span class="keyword parmname">SellerSKU</span>, or <span
class="keyword parmname">Id</span>) that is specified in the request.
Each <span class="keyword parmname">OperationNameResult</span> response
element contains a <span class="keyword parmname">Status</span>
attribute that indicates whether or not data could be returned for the
specified product identifier, and an <span
class="keyword parmname">ASIN</span>, <span
class="keyword parmname">SellerSKU</span>, or <span
class="keyword parmname">Id</span> attribute that indicates the <span
class="keyword parmname">ASIN</span>, <span
class="keyword parmname">SellerSKU</span>, or <span
class="keyword parmname">Id</span> value that was specified in the
request.

The following table shows response elements that are returned by bulk
operations in the <span class="ph">Amazon MWS</span> <span
class="ph">Products API section</span>. Note that you can find examples
of these response elements in the appropriate Example response sections
throughout this document.

<div class="section">

## Response elements in bulk operations

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d261783e233" class="entry" data-valign="top" width="NaN%">Name</th>
<th id="d261783e236" class="entry" data-valign="top" width="NaN%">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="NaN%" headers="d261783e233 "><span class="keyword parmname">OperationNameResult</span></td>
<td class="entry" data-valign="top" width="NaN%" headers="d261783e236 ">An element that is returned for each product identifier (<span class="keyword parmname">ASIN</span>, <span class="keyword parmname">SellerSKU</span>, or <span class="keyword parmname">Id</span>) that is specified in the request. For example, if you submit the <span class="keyword apiname">GetLowestOfferListingsForSKU</span> operation, this element will be named <span class="keyword parmname">GetLowestOfferListingsForSKUResult.</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="NaN%" headers="d261783e233 "><span class="keyword parmname">Status</span></td>
<td class="entry" data-valign="top" width="NaN%" headers="d261783e236 ">An attribute of the <span class="keyword parmname">OperationNameResult</span> element. Indicates whether or not data could be returned for the specified product identifier (<span class="keyword parmname">ASIN</span>, <span class="keyword parmname">SellerSKU</span>, or <span class="keyword parmname">Id</span>).
<p>Valid values:</p>
<ul>
<li><var class="keyword varname">Success</var> - Request succeeded.</li>
<li><var class="keyword varname">ClientError</var> - Request failed. The problem was with the request.</li>
<li><var class="keyword varname">ServerError</var> - Request failed. The problem was with the web service.</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="NaN%" headers="d261783e233 "><span class="keyword parmname">ASIN</span></td>
<td class="entry" data-valign="top" width="NaN%" headers="d261783e236 "><p>An attribute of the <span class="keyword parmname">OperationNameResult</span> element. Indicates the <span class="keyword parmname">ASIN</span> that was specified in the request.</p>
<p>Required for operations that take an <span class="keyword parmname">ASIN</span> as input.</p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="NaN%" headers="d261783e233 "><span class="keyword parmname">SellerSKU</span></td>
<td class="entry" data-valign="top" width="NaN%" headers="d261783e236 "><p>An attribute of the <span class="keyword parmname">OperationNameResult</span> element. Indicates the <span class="keyword parmname">SellerSKU</span> that was specified in the request.</p>
<p>Required for operations that take an <span class="keyword parmname">SellerSKU</span> as input.</p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="NaN%" headers="d261783e233 "><span class="keyword parmname">IdType</span></td>
<td class="entry" data-valign="top" width="NaN%" headers="d261783e236 "><p>An attribute of the <span class="keyword parmname">OperationNameResult</span> element. Indicates the <span class="keyword parmname">IdType</span> that was specified in the request.</p>
<p>Required for operations that take an <span class="keyword parmname">IdType</span> as input.</p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="NaN%" headers="d261783e233 "><span class="keyword parmname">Id</span></td>
<td class="entry" data-valign="top" width="NaN%" headers="d261783e236 "><p>An attribute of the <span class="keyword parmname">OperationNameResult</span> element. Indicates the <span class="keyword parmname">Id</span> that was specified in the request.</p>
<p>Required for operations that take an <span class="keyword parmname">Id</span> as input.</p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="NaN%" headers="d261783e233 "><span class="keyword parmname">Error</span></td>
<td class="entry" data-valign="top" width="NaN%" headers="d261783e236 "><p>The parent element of the following child elements: <span class="keyword parmname">Type</span>, <span class="keyword parmname">Code</span>, <span class="keyword parmname">Message</span>.</p>
<p>This element is returned only if <span class="keyword parmname">status</span>=<var class="keyword varname">ClientError</var> OR <span class="keyword parmname">status</span>=<var class="keyword varname">ServerError</var>.</p>
<p>Optional.</p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="NaN%" headers="d261783e233 "><span class="keyword parmname">Code</span></td>
<td class="entry" data-valign="top" width="NaN%" headers="d261783e236 "><p>The type of error that resulted in a failed response.</p>
<p>Example: <var class="keyword varname">InternalError</var></p>
<p>Optional.</p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="NaN%" headers="d261783e233 "><span class="keyword parmname">Type</span></td>
<td class="entry" data-valign="top" width="NaN%" headers="d261783e236 "><p>Indicates whether the error was a result of a problem in the request or with the web service.</p>
<div class="p">
Valid values:
<ul>
<li><var class="keyword varname">Sender</var> - The problem was in the request.</li>
<li><var class="keyword varname">Receiver</var> - The problem was with the web service.</li>
</ul>
</div>
<p>Optional.</p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="NaN%" headers="d261783e233 "><span class="keyword parmname">Message</span></td>
<td class="entry" data-valign="top" width="NaN%" headers="d261783e236 "><p>Contains a message that provides more information about the error.</p>
<p>Example: <var class="keyword varname">SellerSKU1 is an invalid SellerSKU for marketplace                                             ATVPDKIKX0DER.</var></p>
<p>Optional.</p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="NaN%" headers="d261783e233 "><span class="keyword parmname">Detail</span></td>
<td class="entry" data-valign="top" width="NaN%" headers="d261783e236 "><p>Contains any additional details, if applicable.</p>
<p>Optional.</p></td>
</tr>
</tbody>
</table>

</div>

</div>

<div class="section">

## Example response

``` pre
<?xml version="1.0"?>
<OperationNameResponse xmlns="http://mws.amazonservices.com/schema/Products/2011-10-01">
<OperationNameResult ASIN=”B002KT3XQM” status=”Success”>
  <!—Successful response goes here-->
</OperationNameResult>
<OperationNameResult ASIN=”B000O15GSG” status=”ClientError”>
  <Error>
    <Code>InvalidParameterValue</Code>
    <Type>Sender</Type>
    <Message>B000O15GSG is an invalid ASIN for marketplace ATVPDKIKX0DER</Message>
    <Detail/>
  </Error>
</OperationNameResult>
<ResponseMetadata>
  <RequestId>454d8b3c-5514-4919-b5ca-6a08fb974272</RequestId>
</ResponseMetadata>
</OperationNameResponse>
```

</div>

</div>

<div class="related-links">

<div class="familylinks">

<div class="parentlink">

**Parent topic:**
<a href="../products/Products_Overview.md" class="link">What you should know about the Amazon MWS Products API section</a>

</div>

</div>

<div class="relinfo">

**Related information**  

<div>

<a href="../products/Products_Throttling.md" class="link" title="Describes the throttling policy for the Products API section.">Throttling in the Products API</a>

</div>

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
