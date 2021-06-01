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

<div id="DG_RequiredRequestParameters" class="nested0">

# Required request parameters

<div class="body">

<div class="p">

The following table describes the request parameters that are requred
for all <span class="ph">Amazon MWS</span> operations:

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d9127e66" class="entry" data-valign="top" width="16.666666666666664%">Name</th>
<th id="d9127e69" class="entry" data-valign="top" width="33.33333333333333%">Description</th>
<th id="d9127e72" class="entry" data-valign="top" width="16.666666666666664%">Required</th>
<th id="d9127e75" class="entry" data-valign="top" width="33.33333333333333%">Valid values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="16.666666666666664%" headers="d9127e66 "><span class="keyword parmname">AWSAccessKeyId</span></td>
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d9127e69 ">Your <span class="ph">Amazon MWS</span> account is identified by your access key Id, which <span class="ph">Amazon MWS</span> uses to look up your Secret Access Key.</td>
<td class="entry center" data-valign="top" width="16.666666666666664%" headers="d9127e72 ">Yes</td>
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d9127e75 ">The <span class="keyword parmname">AWSAccessKeyId</span> that you received when you registered for <span class="ph">Amazon MWS</span>.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="16.666666666666664%" headers="d9127e66 "><span class="keyword parmname">Action</span></td>
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d9127e69 ">The action you want to perform on the endpoint, such as the operation <span class="keyword apiname">GetFeedSubmissionResult</span>.</td>
<td class="entry center" data-valign="top" width="16.666666666666664%" headers="d9127e72 ">Yes</td>
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d9127e75 ">Any valid action for the endpoint you are calling.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="16.666666666666664%" headers="d9127e66 "><span class="keyword parmname">MWSAuthToken</span></td>
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d9127e69 ">Represents the authorization of a specific developer by a specific Amazon seller.</td>
<td class="entry center" data-valign="top" width="16.666666666666664%" headers="d9127e72 ">For web applications and third-party developer authorizations only.</td>
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d9127e75 ">The authorization token that you received when you registered for <span class="ph">Amazon MWS</span>.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="16.666666666666664%" headers="d9127e66 "><span class="keyword parmname">SellerId</span> or <span class="keyword parmname">Merchant</span></td>
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d9127e69 ">The seller identifier. In Seller Central this is called the Merchant Token. The seller can find this in Seller Central by going to <span class="ph uicontrol">Settings</span> <span class="ph uicontrol">&gt;</span> <span class="ph uicontrol">Account Info</span> <span class="ph uicontrol">&gt;</span> <span class="ph uicontrol">Your Merchant Token</span>.</td>
<td class="entry center" data-valign="top" width="16.666666666666664%" headers="d9127e72 ">Yes</td>
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d9127e75 ">The seller identifier that the seller used when they authorized you to make calls to <span class="ph">Amazon MWS</span> on their behalf.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="16.666666666666664%" headers="d9127e66 "><span class="keyword parmname">Signature</span></td>
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d9127e69 ">Part of the authentication process that is used for identifying and verifying who is sending a request.</td>
<td class="entry center" data-valign="top" width="16.666666666666664%" headers="d9127e72 ">Yes</td>
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d9127e75 ">For more information on how to calculate the signature, see <a href="DG_ClientLibraries.md" class="xref">Using the Amazon MWS client libraries</a>.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="16.666666666666664%" headers="d9127e66 "><span class="keyword parmname">SignatureMethod</span></td>
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d9127e69 ">The HMAC hash algorithm you are using to calculate your signature. Both <var class="keyword varname">HmacSHA256</var> and <var class="keyword varname">HmacSHA1</var> are supported hash algorithms, but Amazon recommends using <var class="keyword varname">HmacSHA256</var>.</td>
<td class="entry center" data-valign="top" width="16.666666666666664%" headers="d9127e72 ">Yes</td>
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d9127e75 "><span class="keyword parmname">SignatureMethod</span> values:
<ul>
<li><var class="keyword varname">HmacSHA256</var> (recommended)</li>
<li><var class="keyword varname">HmacSHA1</var></li>
</ul>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="16.666666666666664%" headers="d9127e66 "><span class="keyword parmname">SignatureVersion</span></td>
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d9127e69 ">Which signature version is being used. This is <span class="ph">Amazon MWS</span>-specific information that tells <span class="ph">Amazon MWS</span> the algorithm you used to form the string that is the basis of the signature.</td>
<td class="entry center" data-valign="top" width="16.666666666666664%" headers="d9127e72 ">Yes</td>
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d9127e75 "><span class="keyword parmname">SignatureVersion</span> values:
<ul>
<li><var class="keyword varname">2</var></li>
</ul>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="16.666666666666664%" headers="d9127e66 "><span class="keyword parmname">Timestamp</span></td>
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d9127e69 ">Each request must contain the timestamp of the request. Depending on the API operation you are using, you can provide an expiration date and time for the request instead of the timestamp. In <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>.</td>
<td class="entry center" data-valign="top" width="16.666666666666664%" headers="d9127e72 ">Yes</td>
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d9127e75 ">The current date and time or the expiration date and time for the request in <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>.
<p><span class="ph">Type: xs:dateTime</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="16.666666666666664%" headers="d9127e66 "><span class="keyword parmname">Version</span></td>
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d9127e69 ">The version of the API section being called.</td>
<td class="entry center" data-valign="top" width="16.666666666666664%" headers="d9127e72 ">Yes</td>
<td class="entry" data-valign="top" width="33.33333333333333%" headers="d9127e75 ">The version of the API section being called.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="Examples" class="topic reference nested0">

# Example request

<div class="body refbody">

<div class="section">

## Get request method

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="sectiondiv content">

``` pre
https://mws.amazonservices.com/CustomerInformation/2014-03-01/
?AWSAccessKeyId=AKIAEXAMPLEFWR4TJ7ZQ
&Action=ListCustomers
&DateRangeEnd=2014-04-30T00%3A06%3A07.000Z
&DateRangeStart=2014-04-01T00%3A06%3A07.000Z
&DateRangeType=AssociatedDate
&MWSAuthToken=amzn.mws.4ea38b7b-f563-7709-4bae-87aeaEXAMPLE
&MarketplaceId=ATVPDKIKX0DER
&SellerId=A1IMEXAMPLEWRC
&Signature=FUbIEXAMPLETUGtTS6sqNDt3OuLH8tbhz5YEXAMPLEw%3D
&SignatureMethod=HmacSHA256
&SignatureVersion=2
&Timestamp=2014-04-01T21%3A53%3A02Z
&Version=2014-03-01
```

<a href="#Examples" class="xref">↑ Top</a>

</div>

</div>

<div class="section">

## Post request method

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="sectiondiv content">

``` pre
POST /Feeds/2009-01-01 HTTP/1.1
Content-Type: x-www-form-urlencoded
Host: mws.amazonservices.com
User-Agent: <Your User Agent Header>

AWSAccessKeyId=0PExampleR2
&Action=CancelFeedSubmissions
&FeedSubmissionIdList.Id.1=1058369303
&FeedTypeList.Type.1=_POST_PRODUCT_DATA_
&FeedTypeList.Type.2=_POST_PRODUCT_PRICING_DATA_
&MWSAuthToken=amzn.mws.4ea38b7b-f563-7709-4bae-87aeaEXAMPLE
&Marketplace=ATExampleER
&SellerId=A1ExampleE6
&SignatureMethod=HmacSHA256
&SignatureVersion=2
&Timestamp=2009-02-04T17%3A34%3A14.203Z
&Version=2009-01-01
&Signature=0RExample0%3D
```

<a href="#Examples" class="xref">↑ Top</a>

</div>

</div>

</div>

</div>

<div id="RelatedTopics" class="topic nested0">

# Related topics

<div class="body">

<a href="DG_MD5.md" class="xref">Working with Content-MD5 checksums</a>

<a href="../dev_guide/DG_ResponseFormat.md" class="xref">Response format</a>

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
