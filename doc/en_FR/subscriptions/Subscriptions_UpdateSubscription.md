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

<div id="Subscriptions_UpdateSubscription" class="nested0">

# UpdateSubscription

<span class="ph">Updates the subscription for the specified notification
type and destination.</span>

<div id="Description" class="topic concept nested1">

## Description

<div class="body conbody">

The <span class="keyword apiname">UpdateSubscription</span> operation
changes the properties of a <span
class="keyword parmname">Subscription</span> that you previously
created. If you no longer want to receive a particular notification type
at a <span class="keyword parmname">Destination</span>, call either the
<span class="keyword apiname">DeleteSubscription</span> operation or the
<span class="keyword apiname">UpdateSubscription</span> operation with
the <span class="keyword parmname">IsEnabled</span> request parameter
set to `false`.

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
<th id="d329492e182" class="entry" data-valign="top" width="28.57142857142857%">Name</th>
<th id="d329492e185" class="entry" data-valign="top" width="28.57142857142857%">Description</th>
<th id="d329492e188" class="entry" data-valign="top" width="14.285714285714285%">Required</th>
<th id="d329492e191" class="entry" data-valign="top" width="28.57142857142857%">Valid values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d329492e182 "><span class="keyword parmname">MarketplaceId</span></td>
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d329492e185 ">The unique identifier for the marketplace.</td>
<td class="entry" data-valign="top" width="14.285714285714285%" headers="d329492e188 ">Yes</td>
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d329492e191 ">Any valid <span class="keyword parmname">MarketplaceId</span> that you are registered in. <span class="ph">For a list of <span class="keyword parmname">MarketplaceId</span> values, see <a href="../dev_guide/DG_Endpoints.md" class="xref">Amazon MWS endpoints and MarketplaceId values</a> in the <span class="ph">Amazon MWS Developer Guide</span>.</span>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d329492e182 "><span class="keyword parmname">Subscription</span></td>
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d329492e185 ">The subscription to update. All child elements except the <span class="keyword parmname">NotificationType</span> and <span class="keyword parmname">Destination</span> can be changed.</td>
<td class="entry" data-valign="top" width="14.285714285714285%" headers="d329492e188 ">Yes</td>
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d329492e191 ">Any valid <span class="keyword parmname">Subscription</span> that you previously created by calling the <span class="keyword apiname">CreateSubscription</span> operation.
<p>Type: <a href="Subscriptions_Datatypes.md#Subscription" class="xref" title="Represents the type of notification that you want to receive and the location where you want to receive it.">Subscription</a></p></td>
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

The <span class="keyword apiname">UpdateSubscription</span> operation
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

AWSAccessKeyId=AKIAEEXAMPLENGQCJLSA
&Action=UpdateSubscription
&MWSAuthToken=amzn.mws.4ea38b7b-f563-7709-4bae-87aeaEXAMPLE
&MarketplaceId=ATVPDKIKX0DER
&SellerId=A135KEXAMPLE56
&SignatureMethod=HmacSHA256
&SignatureVersion=2
&Subscription.Destination.AttributeList.member.1.Key=sqsQueueUrl
&Subscription.Destination.AttributeList.member.1.Value=
  https%3A%2F%2Fsqs.us-east-1.amazonaws.com%2F51471EXAMPLE%2Fmws_notifications
&Subscription.Destination.DeliveryChannel=SQS
&Subscription.IsEnabled=true
&Subscription.NotificationType=AnyOfferChanged
&Timestamp=2013-07-25T16%3A45%3A11Z
&Version=2013-07-01
&Signature=eEfk%EXAMPLE8FKMWt411Ac%2FLmiwQW%2B7CFnIVl8ZWdIFI%3D
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
<UpdateSubscriptionResponse
    xmlns="http://mws.amazonservices.com/schema/Subscriptions/2013-07-01">
    <UpdateSubscriptionResult/>
    <ResponseMetadata>
        <RequestId>3263ad38-d15b-4043-b48c-cbfa2EXAMPLE</RequestId>
    </ResponseMetadata>
</UpdateSubscriptionResponse>
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
