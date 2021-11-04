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

<div id="Sellers_ListMarketplaceParticipationsByNextToken"
class="nested0">

# ListMarketplaceParticipationsByNextToken

<div class="body">

Returns the next page of marketplaces and participations using the <span
class="keyword parmname">NextToken</span>.

</div>

<div id="Description" class="topic concept nested1">

## Description

<div class="body conbody">

The <span id="Description__ListMarketplaceParticipationsByNextToken"
class="keyword apiname">ListMarketplaceParticipationsByNextToken</span>
operation returns the next page of marketplaces and participations using
the <span class="keyword parmname">NextToken</span> value that was
returned by your previous request to either <span
class="keyword apiname">ListMarketplaceParticipations</span> or <span
class="keyword apiname">ListMarketplaceParticipationsByNextToken</span>.
If <span class="keyword parmname">NextToken</span> is not returned,
there are no more pages to return.

<div class="section">

### Availability

This operation is available in all marketplaces.

</div>

<div class="section">

### Throttling

The <span class="keyword apiname">ListMarketplaceParticipations</span>
and <span
class="keyword apiname">ListMarketplaceParticipationsByNextToken</span>
operations together share a **maximum request quota** of 15 and a
**restore rate** of one request per minute. <span
id="Description__CartInfo_throttling" class="ph">For definitions of
throttling terminology and for a complete explanation of throttling, see
<a href="../dev_guide/DG_Throttling.md" class="xref">Throttling: Limits to how often you can submit requests</a>
in the <span class="ph">Amazon MWS Developer Guide</span>.</span>

</div>

</div>

</div>

<div id="RequestParameters" class="topic reference nested1">

## Request parameters

<div class="body refbody">

<div class="tablenoborder">

<table id="RequestParameters__RequestParametersTable" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d304512e140" class="entry" data-valign="top" width="24.010554089709764%">Name</th>
<th id="d304512e143" class="entry" data-valign="top" width="42.480211081794195%">Description</th>
<th id="d304512e146" class="entry" data-valign="top" width="13.192612137203167%">Required</th>
<th id="d304512e149" class="entry" data-valign="top" width="20.316622691292878%">Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="24.010554089709764%" headers="d304512e140 "><span class="keyword parmname">NextToken </span></td>
<td class="entry" data-valign="top" width="42.480211081794195%" headers="d304512e143 ">A string token returned in the response of your previous request to either <span class="keyword apiname">ListMarketplaceParticipations</span> or <span class="keyword apiname">ListMarketplaceParticipationsByNextToken</span>.</td>
<td class="entry" data-valign="top" width="13.192612137203167%" headers="d304512e146 ">Yes</td>
<td class="entry" data-valign="top" width="20.316622691292878%" headers="d304512e149 ">Token string returned from the previous call.
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

<table id="ResponseElements__table_rbm_mh5_cr" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d304512e209" class="entry" data-valign="top" width="50%">Name</th>
<th id="d304512e212" class="entry" data-valign="top" width="50%">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="50%" headers="d304512e209 "><span class="keyword parmname">NextToken</span></td>
<td class="entry" data-valign="top" width="50%" headers="d304512e212 ">A generated string used to pass information to your next request. If <span class="keyword parmname">NextToken</span> is returned, pass the value of <span class="keyword parmname">NextToken</span> to <span class="keyword apiname">ListMarketplaceParticipationsByNextToken</span>. If <span class="keyword parmname">NextToken</span> is not returned, there are no more marketplaces and participations to return.
<p>Optional</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="50%" headers="d304512e209 "><span class="keyword parmname">ListParticipations</span></td>
<td class="entry" data-valign="top" width="50%" headers="d304512e212 "><span class="ph">Detailed information that is specific to a seller in a Marketplace.</span>
<p>Type: List of <a href="Sellers_Datatypes.md#Participation" class="xref" title="Detailed information that is specific to a seller in a Marketplace.">Participation</a></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="50%" headers="d304512e209 "><span class="keyword parmname">ListMarketplaces</span></td>
<td class="entry" data-valign="top" width="50%" headers="d304512e212 "><span class="ph">Detailed information about an Amazon market where a seller can list items for sale and customers can view and purchase items.</span>
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
see
<a href="../dev_guide/DG_RequiredRequestParameters.md" class="xref">Required request parameters</a>.</span>

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="sectiondiv content">

``` pre
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

<a href="#Examples" class="xref">↑ Top</a>

</div>

</div>

</div>

</div>

<div id="RelatedActions" class="topic nested1">

## Related topics

<div class="body">

<a href="../dev_guide/DG_NextToken.md" class="xref">Using NextToken to request additional pages</a>

<a href="Sellers_Overview.md" class="xref">What you should know about the Amazon MWS Sellers API Section</a>

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
