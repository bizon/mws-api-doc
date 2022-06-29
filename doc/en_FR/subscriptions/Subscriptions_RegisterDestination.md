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

<div id="Subscriptions_RegisterDestination" class="nested0">

# RegisterDestination

<span class="ph">Specifies a new destination where you want to receive
notifications.</span>

<div id="Description" class="topic concept nested1">

## Description

<div class="body conbody">

The <span class="keyword apiname">RegisterDestination</span> operation
specifies a location where you want to receive notifications and adds it
to the list of registered destinations. For more information on what
kinds of destinations can be specified, see
<a href="Subscriptions_ReceivingNotifications.md" class="xref" title="Describes how to set up a Destination to receive notifications.">Receiving notifications</a>.

After you register a <span class="keyword parmname">Destination</span>,
you must create a <span class="keyword parmname">Subscription</span> by
calling the <span class="keyword apiname">CreateSubscription</span>
operation to begin receiving notifications.

<div class="note note">

<span class="notetitle">Note:</span> After you register a <span
class="keyword parmname">Destination</span>, Amazon recommends that you
call the <span
class="keyword apiname">SendTestNotificationToDestination</span>
operation to verify that you can receive notifications.

</div>

To remove a <span class="keyword parmname">Destination</span> that you
have registered from the list of registered destinations, call the <span
class="keyword apiname">DeregisterDestination</span> operation.

<div class="section">

### Availability

This operation is available in all marketplaces except Mexico.

</div>

<div class="section">

### Throttling

<div class="tablenoborder">

| Maximum request quota | Restore rate              | Hourly request quota   |
|-----------------------|---------------------------|------------------------|
| 25 requests           | Two requests every second | 7200 requests per hour |

</div>

For definitions of throttling terminology and for a complete explanation
of throttling, see
<a href="../dev_guide/DG_Throttling.md" class="xref">Throttling: Limits to how often you can submit requests</a>
in the <span class="ph">Amazon MWS Developer Guide</span>.

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

<table class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d327782e204" class="entry" data-valign="top" width="28.57142857142857%">Name</th>
<th id="d327782e207" class="entry" data-valign="top" width="28.57142857142857%">Description</th>
<th id="d327782e210" class="entry" data-valign="top" width="14.285714285714285%">Required</th>
<th id="d327782e213" class="entry" data-valign="top" width="28.57142857142857%">Valid values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d327782e204 "><span class="keyword parmname">MarketplaceId</span></td>
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d327782e207 ">The unique identifier for the marketplace.</td>
<td class="entry" data-valign="top" width="14.285714285714285%" headers="d327782e210 ">Yes</td>
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d327782e213 ">Any valid <span class="keyword parmname">MarketplaceId</span> that you are registered in. <span class="ph">For a list of <span class="keyword parmname">MarketplaceId</span> values, see <a href="../dev_guide/DG_Endpoints.md" class="xref">Amazon MWS endpoints and MarketplaceId values</a> in the <span class="ph">Amazon MWS Developer Guide</span>.</span>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d327782e204 "><span class="keyword parmname">Destination</span></td>
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d327782e207 ">The <span class="keyword parmname">Destination</span> where you want to receive notifications.</td>
<td class="entry" data-valign="top" width="14.285714285714285%" headers="d327782e210 ">Yes</td>
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d327782e213 ">Type: <a href="Subscriptions_Datatypes.md#Destination" class="xref" title="A delivery channel that you create to receive notifications.">Destination</a></td>
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

The <span class="keyword apiname">RegisterDestination</span> operation
only returns the common response elements.

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
POST /Subscriptions/2013-07-01 HTTP/1.1
Content-Type: x-www-form-urlencoded
Host: mws.amazonservices.com
User-Agent: <Your User Agent Header>

AWSAccessKeyId=AKIAEEXAMPLESA
&Action=RegisterDestination
&Destination.AttributeList.member.1.Key=sqsQueueUrl
&Destination.AttributeList.member.1.Value=
  https%3A%2F%2Fsqs.us-east-1.amazonaws.com%2F51471EXAMPLE%2Fmws_notifications
&Destination.DeliveryChannel=SQS
&MWSAuthToken=amzn.mws.4ea38b7b-f563-7709-4bae-87aeaEXAMPLE
&MarketplaceId=ATVPDKIKX0DER
&SellerId=A135KEXAMPLE56
&SignatureMethod=HmacSHA256
&SignatureVersion=2
&Timestamp=2013-07-25T16%3A14%3A01Z
&Version=2013-07-01
&Signature=WgTRuEXAMPLEeIzoJ5tzX06uKV7ongzUserZ6vj8kug%3D
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
<RegisterDestinationResponse
    xmlns="http://mws.amazonservices.com/schema/Subscriptions/2013-07-01">
    <RegisterDestinationResult/>
    <ResponseMetadata>
        <RequestId>b120e610-9cf0-48d7-b615-ca869EXAMPLE</RequestId>
    </ResponseMetadata>
</RegisterDestinationResponse>
```

<a href="#Examples" class="xref">↑ Top</a>

</div>

</div>

</div>

</div>

<div id="RelatedTopics" class="topic nested1">

## Related topics

<div class="body">

<a href="../subscriptions/Subscriptions_Overview.md" class="xref">What you should know about the Amazon MWS Subscriptions API section</a>

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
