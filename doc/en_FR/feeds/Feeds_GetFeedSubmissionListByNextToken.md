<div id="MWSDX_noscript">

JavaScript is currently disabled in your browser.  
To use the Amazon MWS documentation, you must enable JavaScript in your
browser.

</div>

<div id="MWSDX_divtop">

[![Amazon
Services](https://images-na.ssl-images-amazon.com/images/G/08/mwsportal/fr_FR/amazonservices.gif "Amazon Services")](http://services.amazon.fr)  
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

<div id="Feeds_GetFeedSubmissionListByNextToken" class="nested0">

GetFeedSubmissionListByNextToken
================================

<div class="body">

<span class="ph">Returns a list of feed submissions using the <span
class="keyword parmname">NextToken</span> parameter.</span>

</div>

<div id="Description" class="topic concept nested1">

Description
-----------

<div class="body conbody">

The <span id="Description__GetFeedSubmissionListByNextToken"
class="keyword apiname">GetFeedSubmissionListByNextToken</span>
operation returns a list of feed submissions that match the query
parameters. It uses the <span class="keyword parmname">NextToken</span>,
which was supplied in a previous request to either the <span
class="keyword apiname">GetFeedSubmissionListByNextToken</span>
operation or the <span
class="keyword apiname">GetFeedSubmissionList</span> operation where the
value of <span class="keyword parmname">HasNext</span> was `true`.

<div class="section">

### Availability

This operation is available in all marketplaces.

</div>

<div class="section">

### Throttling

<div class="p">

<div class="tablenoborder">

| Maximum request quota | Restore rate                  | Hourly request quota   |
|-----------------------|-------------------------------|------------------------|
| 30 requests           | One request every two seconds | 1800 requests per hour |

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

Request parameters
------------------

<div class="body refbody">

<div class="section">

<span class="ph">For more information about the request parameters that
are required for all <span class="ph">Amazon MWS</span> operations, see
<a href="../dev_guide/DG_RequiredRequestParameters.md" class="xref">Required request parameters</a>
in the <span class="ph">Amazon MWS Developer Guide</span>.</span>

</div>

<div class="tablenoborder">

| Name                                            | Description                                                                                                                                                                                                                                                               | Required | Valid values                            |
|-------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------|-----------------------------------------|
| <span class="keyword parmname">NextToken</span> | A string token returned by a previous request to either <span class="keyword apiname">GetFeedSubmissionList</span> or <span class="keyword apiname">GetFeedSubmission ListByNextToken</span> where the value of <span class="keyword parmname">HasNext</span> was `true`. | Yes      | <span class="ph">Type: xs:string</span> |

</div>

</div>

</div>

<div id="ResponseElements" class="topic reference nested1">

Response elements
-----------------

<div class="body refbody">

<div class="tablenoborder">

<table id="ResponseElements__ResponseElementsTable" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
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
<td><span class="keyword parmname">NextToken</span></td>
<td>A generated string used to pass information to another call. Pass the <span class="keyword parmname">NextToken</span> value to the <span class="keyword apiname">GetFeedSubmissionListByNextToken</span> operation if the value of <span class="keyword parmname">HasNext</span> is <var class="keyword varname">true</var>.</td>
<td>No</td>
<td><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">HasNext</span></td>
<td>A Boolean value that indicates whether there are more items to retrieve, requiring additional requests to <span class="keyword apiname">GetGetFeedSubmissionListByNextToken</span> to retrieve them.</td>
<td>No</td>
<td><p>The value <var class="keyword varname">true</var> means there are more items to retrieve; otherwise <var class="keyword varname">false</var>.</p>
<span class="ph">Type: xs:boolean</span></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">FeedSubmissionInfo</span></td>
<td><span class="ph">Detailed information about a feed submission.</span></td>
<td>No</td>
<td>Type: <a href="Feeds_Datatypes.md#FeedSubmissionInfo" class="xref" title="Detailed information about a feed submission.">FeedSubmissionInfo</a></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div id="Examples" class="topic reference nested1">

Examples
--------

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

    POST /Feeds/2009-01-01 HTTP/1.1
    Content-Type: x-www-form-urlencoded
    Host: mws.amazonservices.com
    User-Agent: <Your User Agent Header>

    AWSAccessKeyId=0PExampleR2
    &Action=GetFeedSubmissionListByNextToken
    &MWSAuthToken=amzn.mws.4ea38b7b-f563-7709-4bae-87aeaEXAMPLE
    &Marketplace=ATExampleER
    &NextToken=2YgYW55IGNhcm5hbCBwbGVhc3VyZS4=
    &SellerId=A1ExampleE6
    &SignatureMethod=HmacSHA256
    &SignatureVersion=2
    &Timestamp=2009-02-04T15%3A51%3A49.015Z
    &Version=2009-01-01
    &Signature=BXExampleo%3D

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

    <?xml version="1.0"?>
    <GetFeedSubmissionListByNextTokenResponse
        xmlns="http://mws.amazonaws.com/doc/2009-01-01/">
        <GetFeedSubmissionListByNextTokenResult>
            <NextToken>none</NextToken>
            <HasNext>false</HasNext>
            <FeedSubmissionInfo>
                <FeedSubmissionId>2291326430</FeedSubmissionId>
                <FeedType>_POST_PRODUCT_DATA_</FeedType>
                <SubmittedDate>2009-02-20T02:10:35+00:00</SubmittedDate>
                <FeedProcessingStatus>_SUBMITTED_</FeedProcessingStatus>
            </FeedSubmissionInfo>
        </GetFeedSubmissionListByNextTokenResult>
        <ResponseMetadata>
            <RequestId>1105b931-6f1c-4480-8e97-f3b467840a9e</RequestId>
        </ResponseMetadata>
    </GetFeedSubmissionListByNextTokenResponse>

<a href="#Examples" class="xref">↑ Top</a>

</div>

</div>

</div>

</div>

<div id="RelatedActions" class="topic nested1">

Related topics
--------------

<div class="body">

<a href="../dev_guide/DG_NextToken.md" class="xref">Using NextToken to request additional pages</a>

<a href="../feeds/Feeds_Overview.md" class="xref">What you should know about the Amazon MWS Feeds API section</a>

<a href="Feeds_GetFeedSubmissionList.md" class="xref" title="Returns a list of all feed submissions submitted in the previous 90 days.">GetFeedSubmissionList</a>

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
