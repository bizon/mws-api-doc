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

<div id="Sellers_ListMarketplaceParticipationsByNextToken" class="nested0">

# ListMarketplaceParticipationsByNextToken

<div class="body">

Returns the next page of marketplaces and participations using the
<span class="keyword parmname">NextToken</span>.

</div>

<div id="Description" class="topic concept nested1">

## Description

<div class="body conbody">

The
<span id="Description__ListMarketplaceParticipationsByNextToken" class="keyword apiname">ListMarketplaceParticipationsByNextToken</span>
operation returns the next page of marketplaces and participations using
the <span class="keyword parmname">NextToken</span> value that was
returned by your previous request to either
<span class="keyword apiname">ListMarketplaceParticipations</span> or
<span class="keyword apiname">ListMarketplaceParticipationsByNextToken</span>.
If <span class="keyword parmname">NextToken</span> is not returned,
there are no more pages to return.

<div class="section">

### Availability

This operation is available in all marketplaces.

</div>

<div class="section">

### Throttling

The <span class="keyword apiname">ListMarketplaceParticipations</span>
and
<span class="keyword apiname">ListMarketplaceParticipationsByNextToken</span>
operations together share a **maximum request quota** of 15 and a
**restore rate** of one request per minute.
<span id="Description__CartInfo_throttling" class="ph">For definitions
of throttling terminology and for a complete explanation of throttling,
see [Throttling: Limits to how often you can submit
requests](../dev_guide/DG_Throttling.md) in the
<span class="ph">Amazon MWS Developer Guide</span>.</span>

</div>

</div>

</div>

<div id="RequestParameters" class="topic reference nested1">

## Request parameters

<div class="body refbody">

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
<td><span class="keyword parmname">NextToken </span></td>
<td>A string token returned in the response of your previous request to either <span class="keyword apiname">ListMarketplaceParticipations</span> or <span class="keyword apiname">ListMarketplaceParticipationsByNextToken</span>.</td>
<td>Yes</td>
<td>Token string returned from the previous call.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
</tbody>
</table>

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
<td>A generated string used to pass information to your next request. If <span class="keyword parmname">NextToken</span> is returned, pass the value of <span class="keyword parmname">NextToken</span> to <span class="keyword apiname">ListMarketplaceParticipationsByNextToken</span>. If <span class="keyword parmname">NextToken</span> is not returned, there are no more marketplaces and participations to return.
<p>Optional</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">ListParticipations</span></td>
<td><span class="ph">Detailed information that is specific to a seller in a Marketplace.</span>
<p>Type: List of <a href="Sellers_Datatypes.md#Participation" class="xref" title="Detailed information that is specific to a seller in a Marketplace.">Participation</a></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">ListMarketplaces</span></td>
<td><span class="ph">Detailed information about an Amazon market where a seller can list items for sale and customers can view and purchase items.</span>
<p>Type: List of <a href="Sellers_Datatypes.md#Marketplace" class="xref" title="Detailed information about an Amazon market where a seller can list items for sale and customers can view and purchase items.">Marketplace</a></p></td>
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
POST /Sellers/2011-07-01 HTTP/1.1
Content-Type: x-www-form-urlencoded
Host: mws.amazonservices.com
User-Agent: <Your User Agent Header>

AWSAccessKeyId=AKIAEIAL5QODNGQCJLSA
&Action=ListMarketplaceParticipationsByNextToken
&MWSAuthToken=amzn.mws.4ea38b7b-f563-7709-4bae-87aeaEXAMPLE
&NextToken=RH84wbwjhzC4GHg%3D%3D
&SellerId=A135KKEKWF1J56
&SignatureMethod=HmacSHA256
&SignatureVersion=2
&Timestamp=2011-07-12T23%3A07%3A53Z
&Version=2011-07-01
&Signature=iaCAz1%2BmG3B2vBTSufE5jg2h%2BoJYBon3gFbALwmuHzI%3D
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
<ListMarketplaceParticipationsByNextTokenResponse
    xmlns="https://mws.amazonservices.com/Sellers/2011-07-01">
    <ListMarketplaceParticipationsByNextTokenResult>
        <NextToken>MRgZW55IGNhcm5hbCBwbGVhc3VyZS6=</NextToken>
        <ListParticipations>
            <Participation>
                <MarketplaceId>ATVPDKIKX0DER</MarketplaceId>
                <SellerId>A135KKEKWF1JAI6</SellerId>
                <HasSellerSuspendedListings>No</HasSellerSuspendedListings>
            </Participation>
        </ListParticipations>
        <ListMarketplaces>
            <Marketplace>
                <MarketplaceId>ATVPDKIKX0DER</MarketplaceId>
                <Name>Amazon.com</Name>
                <DefaultCountryCode>US</DefaultCountryCode>
                <DefaultCurrencyCode>USD</DefaultCurrencyCode>
                <DefaultLanguageCode>en_US</DefaultLanguageCode>
                <DomainName>www.amazon.com</DomainName>
            </Marketplace>
        </ListMarketplaces>
    </ListMarketplaceParticipationsByNextTokenResult>
    <ResponseMetadata>
        <RequestId>efeab958-74e2-45d4-9018-2323084413b5</RequestId>
    </ResponseMetadata>
</ListMarketplaceParticipationsByNextTokenResponse>
```

[↑ Top](#Examples)

</div>

</div>

</div>

</div>

<div id="RelatedActions" class="topic nested1">

## Related topics

<div class="body">

[Using NextToken to request additional
pages](../dev_guide/DG_NextToken.md)

[What you should know about the Amazon MWS Sellers API
Section](Sellers_Overview.md)

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
