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

<div id="Sellers_GetServiceStatus" class="nested0">

# GetServiceStatus

<div class="body">

Returns the operational status of the <span class="ph">Sellers API
section</span>.

</div>

<div id="Description" class="topic concept nested1">

## Description

<div class="body conbody">

The <span id="Description__GetServiceStatus"
class="keyword apiname">GetServiceStatus</span> operation returns the
operational status of the <span class="ph">Sellers API section</span> of
<span class="ph">Amazon Marketplace Web Service (Amazon MWS)</span>.
Status values are `GREEN`, `YELLOW`, and `RED`.

<span class="ph">The <span
class="keyword apiname">GetServiceStatus</span> operation has a
**maximum request quota** of two and a **restore rate** of one request
every five minutes. </span> <span id="Description__CartInfo_throttling"
class="ph">For definitions of throttling terminology and for a complete
explanation of throttling, see
<a href="../dev_guide/DG_Throttling.md" class="xref">Throttling: Limits to how often you can submit requests</a>
in the <span class="ph">Amazon MWS Developer Guide</span>.</span>

</div>

</div>

<div id="RequestParameters" class="topic reference nested1">

## Request parameters

<div class="body refbody">

<div class="section">

None.

</div>

</div>

</div>

<div id="ResponseElements" class="topic reference nested1">

## Response elements

<div class="body refbody">

<div class="tablenoborder">

<table id="ResponseElements__ResponseElementsTable" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d301752e143" class="entry" data-valign="top" width="25.44529262086514%">Name</th>
<th id="d301752e146" class="entry" data-valign="top" width="74.55470737913487%">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="25.44529262086514%" headers="d301752e143 "><span class="keyword parmname">Status</span></td>
<td class="entry" data-valign="top" width="74.55470737913487%" headers="d301752e146 ">The following list shows possible values returned by the <span class="keyword apiname">GetServiceStatus</span> operation:
<dl>
<dt>GREEN</dt>
<dd>The service is operating normally.
</dd>
<dt>YELLOW</dt>
<dd>The service is experiencing higher than normal error rates or is operating with degraded performance. Additional information may be provided.
</dd>
<dt>RED</dt>
<dd>The service is unavailable or experiencing extremely high error rates. Additional information may be provided.
</dd>
</dl>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="25.44529262086514%" headers="d301752e143 "><span class="keyword parmname">Timestamp</span></td>
<td class="entry" data-valign="top" width="74.55470737913487%" headers="d301752e146 ">Indicates the time at which the operational status was evaluated.
<p><span class="ph">Type: xs:dateTime</span></p></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="25.44529262086514%" headers="d301752e143 "><span class="keyword parmname">MessageId</span></td>
<td class="entry" data-valign="top" width="74.55470737913487%" headers="d301752e146 ">An Amazon-defined message identifier.
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="25.44529262086514%" headers="d301752e143 "><span class="keyword parmname">Messages</span></td>
<td class="entry" data-valign="top" width="74.55470737913487%" headers="d301752e146 ">The parent element of one or more <span class="keyword parmname">Message</span> elements.</td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="25.44529262086514%" headers="d301752e143 "><span class="keyword parmname">Message</span></td>
<td class="entry" data-valign="top" width="74.55470737913487%" headers="d301752e146 ">The operational status message.
<p>The parent element of the following child elements (both child elements are type: xs:string):</p>
<ul>
<li><span class="keyword parmname">Locale</span></li>
<li><span class="keyword parmname">Text</span></li>
</ul></td>
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

AWSAccessKeyId=AKIAJI4WZFKGX2VWVORQ
&Action=GetServiceStatus
&MWSAuthToken=amzn.mws.4ea38b7b-f563-7709-4bae-87aeaEXAMPLE
&SellerId=A1SYRH96RHOLW7
&SignatureMethod=HmacSHA256
&SignatureVersion=2
&Timestamp=2011-09-19T22%3A06%3A20Z
&Version=2011-07-01
&Signature=mSwY4c4roi%2BTQZZbG1q17gZVYBkpsrPf0TmRTJkVi8A%3D
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
<GetServiceStatusResponse
    xmlns="https://mws.amazonservices.com/Sellers/2011-07-01">
    <GetServiceStatusResult>
        <Status>GREEN</Status>
        <Timestamp>2010-09-24T21:38:09.676Z</Timestamp>
    </GetServiceStatusResult>
</GetServiceStatusResponse>
```

<a href="#Examples" class="xref">↑ Top</a>

</div>

</div>

</div>

</div>

<div id="RelatedActions" class="topic nested1">

## Related topics

<div class="body">

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
