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

<div id="Feeds_GetFeedSubmissionResult" class="nested0">

# GetFeedSubmissionResult

<div class="body">

<span class="ph">Returns the feed processing report and the Content-MD5
header.</span>

</div>

<div id="Description" class="topic concept nested1">

## Description

<div class="body conbody">

The <span id="Description__GetFeedSubmissionResult"
class="keyword apiname">GetFeedSubmissionResult</span> operation returns
the feed processing report and the Content-MD5 header for the returned
HTTP body.

You should compute the MD5 hash of the HTTP body of the report that
<span class="ph">Amazon MWS</span> returned to you, and compare that
with the Content-MD5 header value that is returned. If the computed hash
value and the returned hash value do not match, the report body was
corrupted during transmission. You should discard the result and
automatically retry the request for up to three more times. Please
notify <span class="ph">Amazon MWS</span> if you receive a corrupted
report body. For more information on the Content-MD5 header, see
<a href="Feeds_MD5.md" class="xref">Using the Content-MD5 hash with the SubmitFeed and GetFeedSubmissionResult operations</a>.

<div class="section">

### Availability

This operation is available in all marketplaces.

</div>

<div class="section">

### Throttling

<div class="p">

<div class="tablenoborder">

| Maximum request quota | Restore rate             | Hourly request quota |
|-----------------------|--------------------------|----------------------|
| 15 requests           | One request every minute | 60 requests per hour |

</div>

<span class="ph">For definitions of throttling terminology and for a
complete explanation of throttling, see
<a href="../dev_guide/DG_Throttling.md" class="xref">Throttling: Limits to how often you can submit requests</a>
in the <span class="ph">Amazon MWS Developer Guide</span>.</span>

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
<a href="../dev_guide/DG_RequiredRequestParameters.md" class="xref">Required request parameters</a>
in the <span class="ph">Amazon MWS Developer Guide</span>.</span>

</div>

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
<th id="d130098e189" class="entry" data-valign="top" width="24.565217391304348%">Name</th>
<th id="d130098e192" class="entry" data-valign="top" width="41.84782608695652%">Description</th>
<th id="d130098e195" class="entry" data-valign="top" width="10.869565217391305%">Required</th>
<th id="d130098e198" class="entry" data-valign="top" width="22.717391304347824%">Valid values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="24.565217391304348%" headers="d130098e189 "><span class="keyword parmname">FeedSubmissionId</span></td>
<td class="entry" data-valign="top" width="41.84782608695652%" headers="d130098e192 ">The identifier of the feed submission you are requesting a feed processing report for. You can get the <span class="keyword parmname">FeedSubmissionId</span> for a feed using the <span class="keyword apiname">GetFeedSubmissionList</span> operation.</td>
<td class="entry" data-valign="top" width="10.869565217391305%" headers="d130098e195 ">Yes</td>
<td class="entry" data-valign="top" width="22.717391304347824%" headers="d130098e198 ">A <span class="keyword parmname">FeedSubmissionId</span> value.
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

<div class="section">

The <span class="keyword apiname">GetFeedSubmissionResult</span>
operation returns the feed processing report and the Content-MD5 header
for the returned HTTP body.

</div>

</div>

</div>

<div id="Examples" class="topic reference nested1">

## Examples

<div class="body refbody">

<div class="section">

### Example query request

<span class="ph">For more information about the request parameters that
are required for all <span class="ph">Amazon MWS</span> operations, see
<a href="../dev_guide/DG_RequiredRequestParameters.md" class="xref">Required request parameters</a>
in the <span class="ph">Amazon MWS Developer Guide</span>.</span>

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
&Action=GetFeedSubmissionResult
&FeedSubmissionId=20Example76
&MWSAuthToken=amzn.mws.4ea38b7b-f563-7709-4bae-87aeaEXAMPLE
&Marketplace=ATExampleER
&SellerId=A1ExampleE6
&SignatureMethod=HmacSHA256
&SignatureVersion=2
&Timestamp=2009-02-04T17%3A44%3A33.500Z
&Version=2009-01-01
&Signature=CNExampleQ%3D
```

<a href="#Examples" class="xref">↑ Top</a>

</div>

</div>

<div class="section">

### Example response

<span class="ph">Amazon MWS returns an XML file that contains the
response to a successful request or subscription. If the request is
unsuccessful, the main response element is <span
class="keyword apiname">ErrorResponse</span>. For more information, see
<a href="../dev_guide/DG_ResponseFormat.md" class="xref">Response format</a>
in the <span class="ph">Amazon MWS Developer Guide</span>.</span>

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="sectiondiv content">

``` pre
<?xml version="1.0" encoding="UTF-8"?>
<AmazonEnvelope
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xsi:noNamespaceSchemaLocation="amzn-envelope.xsd">
    <Header>
        <DocumentVersion>1.02</DocumentVersion>
        <MerchantIdentifier>T_M_GOOD_83835495</MerchantIdentifier>
    </Header>
    <MessageType>ProcessingReport</MessageType>
    <Message>
        <MessageID>1</MessageID>
        <ProcessingReport>
            <DocumentTransactionID>4319742521</DocumentTransactionID>
        </ProcessingReport>
    </Message>
</AmazonEnvelope>
```

<a href="#Examples" class="xref">↑ Top</a>

</div>

</div>

</div>

</div>

<div id="RelatedActions" class="topic nested1">

## Related topics

<div class="body">

<a href="../feeds/Feeds_Overview.md" class="xref">What you should know about the Amazon MWS Feeds API section</a>

<a href="Feeds_GetFeedSubmissionList.md" class="xref" title="Returns a list of all feed submissions submitted in the previous 90 days.">GetFeedSubmissionList</a>

<a href="Feeds_MD5.md" class="xref">Using the Content-MD5 hash with the SubmitFeed and GetFeedSubmissionResult operations</a>

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
