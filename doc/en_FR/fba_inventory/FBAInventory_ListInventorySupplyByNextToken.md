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

<div id="FBAInventory_ListInventorySupplyByNextToken" class="nested0">

# ListInventorySupplyByNextToken

<div class="body">

<span class="ph">Returns the next page of information about the
availability of a seller's inventory using the <span
class="keyword parmname">NextToken</span> parameter.</span>

</div>

<div id="Description" class="topic concept nested1">

## Description

<div class="body conbody">

The <span class="keyword apiname">ListInventorySupplyByNextToken</span>
operation returns the next page of information about the availability of
a seller's inventory using the <span
class="keyword parmname">NextToken</span> value that was returned by
your previous request to either <span
class="keyword apiname">ListInventorySupply</span> or <span
class="keyword apiname">ListInventorySupplyByNextToken</span>. If <span
class="keyword parmname">NextToken</span> is not returned, there are no
more pages to return.

<div class="section">

### Availability

This operation is available in all marketplaces except Brazil.

</div>

<div class="section">

### Throttling

The <span class="keyword apiname">ListInventorySupply</span> and <span
class="keyword apiname">ListInventorySupplyByNextToken</span> operations
together share a **maximum request quota** of 30 and a **restore rate**
of two requests every second. <span class="ph">For definitions of
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

| Name                                            | Description                                                                                                                                                                                                 | Required | Values                                  |
|-------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------|-----------------------------------------|
| <span class="keyword parmname">NextToken</span> | A string token returned in the response of your previous request to either <span class="keyword apiname">ListInventorySupply</span> or <span class="keyword apiname">ListInventorySupplyByNextToken</span>. | Yes      | <span class="ph">Type: xs:string</span> |

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
<th id="d85743e214" class="entry" data-valign="top" width="22.421524663677133%">Name</th>
<th id="d85743e217" class="entry" data-valign="top" width="77.57847533632287%">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="22.421524663677133%" headers="d85743e214 "><span class="keyword parmname">NextToken</span></td>
<td class="entry" data-valign="top" width="77.57847533632287%" headers="d85743e217 ">A generated string used to pass information to your next request. If <span class="keyword parmname">NextToken</span> is returned, pass the value of <span class="keyword parmname">NextToken</span> to <span class="keyword apiname">ListInventorySupplyByNextToken</span>. If <span class="keyword parmname">NextToken</span> is not returned, there is no more inventory availability information to return.
<p>Optional</p>
<span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="22.421524663677133%" headers="d85743e214 "><span class="keyword parmname">InventorySupplyList</span></td>
<td class="entry" data-valign="top" width="77.57847533632287%" headers="d85743e217 ">A list of items that are or soon will be available for fulfillment by <span class="ph">Amazon's fulfillment network</span>. Each item is either currently in the fulfillment network or is in an inbound shipment to an <span class="ph">Amazon fulfillment center</span>. SKU, ASIN, condition, quantity, and availability information is included with each item.
<p>Type: List of <a href="FBAInventory_Datatypes.md#InventorySupply" class="xref" title="General information about the availability of inventory for a single SKU.">InventorySupply</a></p></td>
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
http://mws.amazonaws.com/FulfillmentInventory/2010-10-01/
  ?Action=ListInventorySupplyByNextToken
  &Version=2010-10-01
  &AWSAccessKeyId=1QZHP81N5R44N89PFAKE
  &MWSAuthToken=amzn.mws.4ea38b7b-f563-7709-4bae-87aeaEXAMPLE
  &SignatureVersion=2
  &SignatureMethod=HmacSHA256
  &Signature=VY6sqvdk01VEG0V+h4oj3FBFAKE=
  &Timestamp=2010-10-01T02:40:36Z
  &SellerId=1234567890
  &NextToken=2YgYW55IGNhcm5hbCBwbGVhc3VyZS4=
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
<ListInventorySupplyByNextTokenResponse xmlns="http://mws.amazonaws.com/FulfillmentInventory/2010-10-01/">
    <ListInventorySupplyByNextTokenResult>
        <NextToken>2YgYW55IGNhcm5hbCBwbGVhc3VyZS4=</NextToken>
        <InventorySupplyList>
            <member>
                <SellerSKU>SampleSKU5</SellerSKU>
                <ASIN>B00008UI0R</ASIN>
                <TotalSupplyQuantity>0</TotalSupplyQuantity>
                <FNSKU>B00008UI0R</FNSKU>
                <Condition/>
                <SupplyDetail/>
                <InStockSupplyQuantity>0</InStockSupplyQuantity>
            </member>
            <member>
                <SellerSKU>SampleSKU6</SellerSKU>
                <ASIN>B00000K3CQ</ASIN>
                <TotalSupplyQuantity>5259</TotalSupplyQuantity>
                <FNSKU>X0000000FM</FNSKU>
                <Condition>NewItem</Condition>
                <SupplyDetail/>
                <InStockSupplyQuantity>5259</InStockSupplyQuantity>
                <EarliestAvailability>
                    <TimepointType>Immediately</TimepointType>
                </EarliestAvailability>
            </member>
        </InventorySupplyList>
    </ListInventorySupplyByNextTokenResult>
    <ResponseMetadata>
        <RequestId>b3a020ac-8e5e-11df-9acb-230ae7a8b736</RequestId>
    </ResponseMetadata>
</ListInventorySupplyByNextTokenResponse>
```

<a href="#Examples" class="xref">↑ Top</a>

</div>

</div>

</div>

</div>

<div id="RelatedTopics" class="topic nested1">

## Related topics

<div class="body">

<a href="../dev_guide/DG_NextToken.md" class="xref">Using NextToken to request additional pages</a>

<a href="FBAInventory_Overview.md" class="xref">What you should know about the Fulfillment Inventory API section</a>

<a href="FBAInventory_ListInventorySupply.md" class="xref" title="Returns information about the availability of a seller&#39;s inventory.">ListInventorySupply</a>

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
