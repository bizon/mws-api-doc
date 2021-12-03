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

<div id="Subscriptions_Datatypes" class="nested0">

# Subscriptions Datatypes

<div class="body">

The following datatypes are used in the request parameters and response
elements of the Amazon Marketplace Web Service (Amazon MWS) <span
class="ph">Subscriptions API section</span>:

<div class="tablenoborder">

| Datatype                                                                                                                                                                  | Description                                                                                                                         |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------|
| <a href="#AttributeKeyValue" class="xref" title="A structure that contains attributes related to a Destination.">AttributeKeyValue</a>                                    | <span class="ph">A structure that contains attributes related to a <span class="keyword parmname">Destination</span>. </span>       |
| <a href="#Destination" class="xref" title="A delivery channel that you create to receive notifications.">Destination</a>                                                  | <span class="ph">A delivery channel that you create to receive notifications.</span>                                                |
| <a href="#Subscription" class="xref" title="Represents the type of notification that you want to receive and the location where you want to receive it.">Subscription</a> | <span class="ph">Represents the type of notification that you want to receive and the location where you want to receive it.</span> |

</div>

</div>

<div id="AttributeKeyValue" class="topic nested1">

## AttributeKeyValue

<div class="body">

<span class="ph">A structure that contains attributes related to a <span
class="keyword parmname">Destination</span>. </span>

<div class="section">

### Datatype content

The following table shows the elements of the <span
class="keyword parmname">AttributeKeyValue</span> datatype. Each <span
class="keyword parmname">AttributeKeyValue</span> datatype will differ
depending on the <span class="keyword parmname">DeliveryChannel</span>
specified in the <span class="keyword parmname">Destination</span>:

<div class="tablenoborder">

<span class="desc tabledesc"><span
class="keyword parmname">AttributeKeyValue</span> values for the `SQS`
<span class="keyword parmname">DeliveryChannel</span>:</span>

Name

</div>

</div>

</div>

</div>

</div>

</div>

</div>

</div>

Description

Required

Valid values

<span class="keyword parmname">Key</span>

The name of the attribute.

<span class="ph">Type: xs:string</span>

Yes

<span class="keyword parmname">Key</span> values:

-   `sqsQueueUrl`

<span class="keyword parmname">Value</span>

The value of the attribute.

<span class="ph">Type: xs:string</span>

Yes

<span class="keyword parmname">Value</span> values:

-   The URL for the <span class="ph">Amazon SQS</span> queue you are
    using to receive notifications. For more information, see
    <a href="Subscriptions_ReceivingNotifications.md" class="xref" title="Describes how to set up a Destination to receive notifications.">Receiving notifications</a>.

<div id="Destination" class="topic nested1">

## Destination

<div class="body">

<span class="ph">A delivery channel that you create to receive
notifications.</span>

<div class="section">

### Datatype content

The following table shows the elements of the <span
class="keyword parmname">Destination</span> datatype:

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
<th id="d316459e387" class="entry" data-valign="top" width="28.57142857142857%">Name</th>
<th id="d316459e390" class="entry" data-valign="top" width="28.57142857142857%">Description</th>
<th id="d316459e393" class="entry" data-valign="top" width="14.285714285714285%">Required</th>
<th id="d316459e396" class="entry" data-valign="top" width="28.57142857142857%">Valid values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d316459e387 "><span class="keyword parmname">DeliveryChannel</span></td>
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d316459e390 ">The technology that you are using to receive notifications.
<p><span class="ph">Type: xs:string</span></p></td>
<td class="entry" data-valign="top" width="14.285714285714285%" headers="d316459e393 ">Yes</td>
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d316459e396 "><span class="keyword parmname">DeliveryChannel</span> values:
<ul>
<li><var class="keyword varname">SQS</var></li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d316459e387 "><span class="keyword parmname">AttributeList</span></td>
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d316459e390 ">Contains attributes related to the specified <span class="keyword parmname">DeliveryChannel</span>.
<p>Type: List of <a href="#AttributeKeyValue" class="xref" title="A structure that contains attributes related to a Destination.">AttributeKeyValue</a></p></td>
<td class="entry" data-valign="top" width="14.285714285714285%" headers="d316459e393 ">Yes</td>
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d316459e396 ">For <span class="keyword parmname">AttributeList</span> values, see <a href="#AttributeKeyValue" class="xref" title="A structure that contains attributes related to a Destination.">AttributeKeyValue</a>. Each <span class="keyword parmname">AttributeKeyValue</span> datatype will differ depending on the <span class="keyword parmname">DeliveryChannel</span> specified here.</td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="Subscription" class="topic nested1">

## Subscription

<div class="body">

<span class="ph">Represents the type of notification that you want to
receive and the location where you want to receive it.</span>

<div class="section">

### Datatype content

The following table shows the elements of the <span
class="keyword parmname">Subscription</span> datatype:

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
<th id="d316459e562" class="entry" data-valign="top" width="28.57142857142857%">Name</th>
<th id="d316459e565" class="entry" data-valign="top" width="28.57142857142857%">Description</th>
<th id="d316459e568" class="entry" data-valign="top" width="14.285714285714285%">Required</th>
<th id="d316459e571" class="entry" data-valign="top" width="28.57142857142857%">Valid values</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d316459e562 "><span class="keyword parmname">NotificationType</span></td>
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d316459e565 ">The type of notification that you want to subscribe to.
<p><span class="ph">Type: xs:string</span></p></td>
<td class="entry" data-valign="top" width="14.285714285714285%" headers="d316459e568 ">Yes</td>
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d316459e571 ">For <span class="keyword parmname">NotificationType</span> values, see <a href="Subscriptions_NotificationType.md" class="xref">NotificationType enumeration</a></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d316459e562 "><span class="keyword parmname">Destination</span></td>
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d316459e565 ">The delivery channel that you previously created and registered where you will receive notifications.
<p>Type: <a href="#Destination" class="xref" title="A delivery channel that you create to receive notifications.">Destination</a></p></td>
<td class="entry" data-valign="top" width="14.285714285714285%" headers="d316459e568 ">Yes</td>
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d316459e571 ">Any valid <span class="keyword parmname">Destination</span> that you previously registered by calling the <span class="keyword apiname">RegisterDestination</span> operation.</td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d316459e562 "><span class="keyword parmname">IsEnabled</span></td>
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d316459e565 ">Indicates whether to enable subscriptions of the given notification type at the given destination.
<p><span class="ph">Type: xs:boolean</span></p></td>
<td class="entry" data-valign="top" width="14.285714285714285%" headers="d316459e568 ">Yes</td>
<td class="entry" data-valign="top" width="28.57142857142857%" headers="d316459e571 "><var class="keyword varname">true</var> if you want to enable the subscription at the destination; otherwise, <var class="keyword varname">false</var>.</td>
</tr>
</tbody>
</table>

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

<div style="clear: both;">

</div>
