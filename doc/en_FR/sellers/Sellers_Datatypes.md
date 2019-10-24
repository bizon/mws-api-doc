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

<div id="Feeds_Datatypes" class="nested0">

# Sellers Datatypes

<div class="body">

The following datatypes are used in the response elements of the
<span class="ph">Amazon Marketplace Web Service (Amazon MWS)</span>
<span class="ph">Sellers API
section</span>:

<div class="tablenoborder">

| Name                                                                                                                                                        | Description                                                                                                                                           |
| ----------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------- |
| [Marketplace](#Marketplace "Detailed information about an Amazon market where a seller can list items for sale and customers can view and purchase items.") | <span class="ph">Detailed information about an Amazon market where a seller can list items for sale and customers can view and purchase items.</span> |
| [Participation](#Participation "Detailed information that is specific to a seller in a Marketplace.")                                                       | <span class="ph">Detailed information that is specific to a seller in a Marketplace.</span>                                                           |

</div>

</div>

<div id="Marketplace" class="topic nested1">

## Marketplace

<div class="body">

<span class="ph">Detailed information about an Amazon market where a
seller can list items for sale and customers can view and purchase
items.</span>

<div class="section">

### Datatype content

The following table shows the elements of the
<span class="keyword parmname">Marketplace</span> datatype:

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
<td><span class="keyword parmname">MarketplaceId</span></td>
<td>The encrypted marketplace value. Example: ATVPDKIKX0DER
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">Name</span></td>
<td>Marketplace name. Example: Amazon.com
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">DefaultCountryCode</span></td>
<td>The two-digit country code of the marketplace, in ISO 3166-1 alpha-2 format.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">DefaultCurrencyCode</span></td>
<td>The <span class="ph"> <a href="../dev_guide/DG_ISO4217.html" class="xref">ISO 4217 format</a> </span> currency code of the marketplace. Example: USD
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">DefaultLanguageCode</span></td>
<td>The <span class="ph"> <a href="../dev_guide/DG_ISO639.html" class="xref">ISO 639-1 format</a> </span> language code of the marketplace. Example: en_US
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">DomainName</span></td>
<td>The domain name associated with the marketplace. Example: www.amazon.com
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="Participation" class="topic nested1">

## Participation

<div class="body">

<span class="ph">Detailed information that is specific to a seller in a
Marketplace.</span>

<div class="section">

### Datatype content

The following table shows the elements of the
<span class="keyword parmname">Participation</span> datatype:

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
<td><span class="keyword parmname">MarketplaceId</span></td>
<td>The encrypted marketplace value. Example: ATVPDKIKX0DER
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">SellerId</span></td>
<td>The <span class="keyword parmname">SellerId</span> or <span class="keyword parmname">MerchantId</span> of the seller. Example: ATUHFHCIERT
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">HasSellerSuspendedListings</span></td>
<td>Specifies if the seller has suspended listings. Yes if the seller has set Listing Status to Inactive, otherwise No.
<p>Type: xs:Restricted String</p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="RelatedActions" class="topic nested1">

## Related topics

<div class="body">

[What you should know about the Amazon MWS Sellers API
Section](Sellers_Overview.html)

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