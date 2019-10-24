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

<div id="FBAInventory_ListInventorySupply" class="nested0">

# ListInventorySupply

<div class="body">

<span class="ph">Returns information about the availability of a
seller's inventory.</span>

</div>

<div id="Description" class="topic concept nested1">

## Description

<div class="body conbody">

The <span class="keyword apiname">ListInventorySupply</span> operation
returns information about the availability of inventory that a seller
has in <span class="ph">Amazon's fulfillment network</span> and in
current inbound shipments. You can check the current availabilty status
for your <span class="ph">Fulfillment by Amazon</span> inventory as well
as discover when availability status changes.

<div class="p">

This operation does not return availability information for inventory
that is:

  - Unsellable
  - Bound to a customer order

</div>

<div class="section">

### Availability

This operation is available in all marketplaces except Brazil.

</div>

<div class="section">

### Throttling

The <span class="keyword apiname">ListInventorySupply</span> operation
has a **maximum request quota** of 30 and a **restore rate** of two
requests every second. <span class="ph">For definitions of throttling
terminology and for a complete explanation of throttling, see
[Throttling: Limits to how often you can submit
requests](../dev_guide/DG_Throttling.md) in the
<span class="ph">Amazon MWS Developer Guide</span>.</span>

</div>

</div>

</div>

<div id="RequestParameters" class="topic reference nested1">

## Request parameters

<div class="body refbody">

<div class="tablenoborder">

<table>
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
<th>Values</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><span class="keyword parmname">SellerSkus</span></td>
<td>A list of seller SKUs for items that you want inventory availability information about.</td>
<td>Yes, if <span class="keyword parmname">QueryStartDateTime</span> is not specified.
<p>Specifying both <span class="keyword parmname">QueryStartDateTime</span> and <span class="keyword parmname">SellerSkus</span> returns an error.</p></td>
<td>Seller SKUs for items that you have shipped to an <span class="ph">Amazon fulfillment center</span>.
<p>Maximum: 50</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">QueryStartDateTime</span></td>
<td>A date used for selecting items that have had changes in inventory availability after (or at) a specified time.</td>
<td>In <span class="ph"><a href="../dev_guide/DG_ISO8601.md" class="xref">ISO 8601 date time format</a></span>
<p><span class="ph">Type: xs:dateTime</span></p></td>
<td></td>
</tr>
<tr class="odd">
<td><span class="keyword parmname">ResponseGroup</span></td>
<td>Indicates whether or not you want the <span class="keyword apiname">ListInventorySupply</span> operation to return the <span class="keyword parmname">SupplyDetail</span> element.</td>
<td>No</td>
<td><span class="keyword parmname">ResponseGroup</span> values:
<ul>
<li>Basic - Does not include the <span class="keyword parmname">SupplyDetail</span> element in the response</li>
<li>Detailed - Includes the <span class="keyword parmname">SupplyDetail</span> element in the response</li>
</ul>
<p>Default: Basic</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">MarketplaceId</span>
<p>(NA only)</p></td>
<td>An encrypted Amazon defined marketplace identifier. It is used to limit the scope of a request or response to a specific marketplace.</td>
<td>No
<p>Assumes the default value if MarketplaceId is not specified.</p></td>
<td><span class="keyword parmname">MarketplaceId</span> values:
<p>For a list of MarketplaceId values, see <a href="../dev_guide/DG_Endpoints.md" class="xref">Amazon MWS endpoints MarketplaceId values</a> in the <span class="ph">Amazon MWS Developer Guide</span>.</p>
<p>Default: The MarketplaceId assigned as the seller's <em>home</em> marketplace.</p>
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

| Name                                                      | Description                                                                                                                                                                                                                                                                                                                                                                                                    | Required | Values                                                                                                                                                   |
| --------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------- | -------------------------------------------------------------------------------------------------------------------------------------------------------- |
| <span class="keyword parmname">NextToken</span>           | A generated string used to pass information to your next request. If <span class="keyword parmname">NextToken</span> is returned, pass the value of <span class="keyword parmname">NextToken</span> to <span class="keyword apiname">ListInventorySupplyByNextToken</span>. If <span class="keyword parmname">NextToken</span> is not returned, there is no more inventory availability information to return. | Optional | <span class="ph">Type: xs:string</span>                                                                                                                  |
| <span class="keyword parmname">InventorySupplyList</span> | A list of items that are or soon will be available for fulfillment by <span class="ph">Amazon's fulfillment network</span>. Each item is either currently in the fulfillment network or is in an inbound shipment to an <span class="ph">Amazon fulfillment center</span>. SKU, ASIN, condition, quantity, and availability information is included with each item.                                            | Yes      | Type: List of [InventorySupply](FBAInventory_Datatypes.md#InventorySupply "General information about the availability of inventory for a single SKU.") |

</div>

</div>

</div>

<div id="Examples" class="topic reference nested1">

## Examples

<div class="body refbody">

<div class="section">

### Example query request

<span class="ph">For information about standard request requirements,
see [Required request
parameters](../dev_guide/DG_RequiredRequestParameters.md).</span>

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="sectiondiv content">

``` pre codeblock
https://mws.amazonservices.com/FulfillmentInventory/2010-10-01
  ?Action=ListInventorySupply
  &Version=2011-03-01
  &AWSAccessKeyId=AKIAJGUEXAMPLEE2NVUA
  &MWSAuthToken=amzn.mws.4ea38b7b-f563-7709-4bae-87aeaEXAMPLE
  &SignatureVersion=2
  &SignatureMethod=HmacSHA256
  &Signature=ZRA9DR5rveSuz%2F1D18AHvoipg2BAev8yblPQ1BbEbfU%3D
  &Timestamp=2010-10-01T02:40:36Z
  &SellerId=A2NKEXAMPLEF53
  &SellerSkus.member.1=SampleSKU1
  &SellerSkus.member.2=SampleSKU2
  &ResponseGroup=Basic
```

[↑ Top](#Examples)

</div>

</div>

<div class="section">

### Example response

<span class="ph">For information about standard response formatting, see
[Response format](../dev_guide/DG_ResponseFormat.md).</span>

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="sectiondiv content">

``` pre codeblock
<?xml version="1.0"?>
<ListInventorySupplyResponse xmlns="http://mws.amazonaws.com/FulfillmentInventory/2010-10-01">
    <ListInventorySupplyResult>
        <InventorySupplyList>
            <member>
                <SellerSKU>SampleSKU1</SellerSKU>
                <ASIN>B00000K3CQ</ASIN>
                <TotalSupplyQuantity>20</TotalSupplyQuantity>
                <FNSKU>X0000000FM</FNSKU>
                <Condition>NewItem</Condition>
                <SupplyDetail/>
                <InStockSupplyQuantity>15</InStockSupplyQuantity>
                <EarliestAvailability>
                    <TimepointType>Immediately</TimepointType>
                </EarliestAvailability>
            </member>
            <member>
                <SellerSKU>SampleSKU2</SellerSKU>
                <ASIN>B00004RWQR</ASIN>
                <TotalSupplyQuantity>0</TotalSupplyQuantity>
                <FNSKU>X00008FZR1</FNSKU>
                <Condition>UsedLikeNew</Condition>
                <SupplyDetail/>
                <InStockSupplyQuantity>0</InStockSupplyQuantity>
            </member>
        </InventorySupplyList>
    </ListInventorySupplyResult>
    <ResponseMetadata>
        <RequestId>e8698ffa-8e59-11df-9acb-230ae7a8b736</RequestId>
    </ResponseMetadata>
</ListInventorySupplyResponse>
```

[↑ Top](#Examples)

</div>

</div>

<div class="section">

### Example query request

<span class="ph">For information about standard request requirements,
see [Required request
parameters](../dev_guide/DG_RequiredRequestParameters.md).</span>

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="sectiondiv content">

``` pre codeblock
http://mws.amazonaws.com/FulfillmentInventory/2010-10-01/
  ?Action=ListInventorySupply
  &Version=2010-10-01
  &AWSAccessKeyId=1QZHP81N5R44N89PFAKE
  &MWSAuthToken=amzn.mws.4ea38b7b-f563-7709-4bae-87aeaEXAMPLE
  &SignatureVersion=2
  &SignatureMethod=HmacSHA256
  &Signature=VY6sqvdk01VEG0V+h4oj3FBFAKE=
  &Timestamp=2010-10-01T02:40:36Z
  &SellerId=1234567890
  &QueryStartDateTime=2011-05-03T06%3A00%3A00Z
  &ResponseGroup=Detailed
```

[↑ Top](#Examples)

</div>

</div>

<div class="section">

### Example response

<span class="ph">For information about standard response formatting, see
[Response format](../dev_guide/DG_ResponseFormat.md).</span>

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="sectiondiv content">

``` pre codeblock
<?xml version="1.0"?>
<ListInventorySupplyResponse xmlns="http://mws.amazonaws.com/FulfillmentInventory/2010-10-01/">
    <ListInventorySupplyResult>
        <NextToken>H4sIAAAAAAAAADXQzW6CMAAA4FcxXD3AgE5J5pLSiBTQ8Sc
            SblCB0Ap2LSL49O6y7xGr05WbPW8ip3SlDdZK6t3CmuKTH8d9B/0mhCR7gcV
            E3gpuDaR8850n239tjC17Z3Gg2PmsZJNa14izwUtQAMYp6tOH4NHl/gN492S
            YVU0P5F0OYwUwmYI0d/YHnMSgDPUF0mvxTPNofZkXr6ww39SIBYJUTlUMNwI
            WaduUNr/MZYmaySPqugvxiQaTs2Rxgs1gFENKcUV7Ry/8BSUECjcj2sQ7bLT
            nBvYPd9/ksLbmV5ydt+HUWFx1QMQgD7O5Ey96mZzNZypKo7V9nBUtPNp/Azt
            F/X4Di21K/SkBAAA=</NextToken>
        <InventorySupplyList>
            <member>
                <SellerSKU>SampleSKU3</SellerSKU>
                <ASIN>BT008FQ92Q</ASIN>
                <TotalSupplyQuantity>18</TotalSupplyQuantity>
                <FNSKU>X0000000EY</FNSKU>
                <Condition>NewItem</Condition>
                <SupplyDetail>
                    <member>
                        <EarliestAvailableToPick>
                            <TimepointType>Immediately</TimepointType>
                        </EarliestAvailableToPick>
                        <Quantity>5</Quantity>
                        <LatestAvailableToPick>
                            <TimepointType>Immediately</TimepointType>
                        </LatestAvailableToPick>
                        <SupplyType>InStock</SupplyType>
                    </member>
                    <member>
                        <EarliestAvailableToPick>
                            <TimepointType>DateTime</TimepointType>
                            <DateTime>2011-05-04T23:00:00Z</DateTime>
                        </EarliestAvailableToPick>
                        <Quantity>13</Quantity>
                        <LatestAvailableToPick>
                            <TimepointType>DateTime</TimepointType>
                            <DateTime>2011-05-04T23:00:00Z</DateTime>
                        </LatestAvailableToPick>
                        <SupplyType>InStock</SupplyType>
                    </member>
                </SupplyDetail>
                <InStockSupplyQuantity>4</InStockSupplyQuantity>
            </member>
        </InventorySupplyList>
    </ListInventorySupplyResult>
    <ResponseMetadata>
        <RequestId>e26d8d21-8e5c-11df-9acb-230ae7a8b736</RequestId>
    </ResponseMetadata>
</ListInventorySupplyResponse>
```

[↑ Top](#Examples)

</div>

</div>

</div>

</div>

<div id="RelatedTopics" class="topic nested1">

## Related topics

<div class="body">

[Using NextToken to request additional
pages](../dev_guide/DG_NextToken.md)

[What you should know about the Fulfillment Inventory API
section](FBAInventory_Overview.md)

[ListInventorySupplyByNextToken](FBAInventory_ListInventorySupplyByNextToken.md "Returns the next page of information about the availability of a seller's inventory using the NextToken parameter.")

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
