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

<div id="Finances_ListFinancialEventGroupsByNextToken" class="nested0">

# ListFinancialEventGroupsByNextToken

<span class="ph">Returns the next page of financial event groups using
the <span class="keyword parmname">NextToken</span> parameter.</span>

<div id="Description" class="topic concept nested1">

## Description

<div class="body conbody">

The
<span class="keyword apiname">ListFinancialEventGroupsByNextToken</span>
operation returns the next page of financial event groups using the
<span class="keyword parmname">NextToken</span> value that was returned
by your previous request to either
<span class="keyword apiname">ListFinancialEventGroups</span> or
<span class="keyword apiname">ListFinancialEventGroupsByNextToken</span>.
If <span class="keyword parmname">NextToken</span> is not returned,
there are no more pages to return.

Event groups opened more than 18 months before the current date are not
returned.

<div class="section">

### Availability

This operation is available in all
marketplaces.

</div>

<div class="section">

### Throttling

<div class="tablenoborder">

| Maximum request quota | Restore rate                  | Hourly request quota   |
| --------------------- | ----------------------------- | ---------------------- |
| 30 requests           | One request every two seconds | 1800 requests per hour |

</div>

For definitions of throttling terminology and for a complete explanation
of throttling, see [Throttling: Limits to how often you can submit
requests](../dev_guide/DG_Throttling.html) in the
<span class="ph">Amazon MWS Developer Guide</span>.

</div>

</div>

</div>

<div id="RequestParameters" class="topic reference nested1">

## Request parameters

<div class="body refbody">

<div class="section">

<span class="ph">For more information about the request parameters that
are required for all <span class="ph">Amazon MWS</span> operations, see
<span class="ph">[Required request
parameters](../dev_guide/DG_RequiredRequestParameters.html)</span> in
the <span class="ph">Amazon MWS Developer
Guide</span>.</span>

<div class="tablenoborder">

| Name                                            | Description                                                                                                                                                                                                           | Required | Valid values                            |
| ----------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------- | --------------------------------------- |
| <span class="keyword parmname">NextToken</span> | A string token returned in the response of your previous request to either <span class="keyword apiname">ListFinancialEventGroups</span> or <span class="keyword apiname">ListFinancialEventGroupsByNextToken</span>. | Yes      | <span class="ph">Type: xs:string</span> |

</div>

</div>

</div>

</div>

<div id="ResponseElements" class="topic reference nested1">

## Response elements

<div class="body refbody">

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
<td><span class="keyword parmname">NextToken</span></td>
<td>A generated string used to pass information to your next request. If <span class="keyword parmname">NextToken</span> is returned, pass the value of <span class="keyword parmname">NextToken</span> to <span class="keyword apiname">ListFinancialEventGroupsByNextToken</span>. If <span class="keyword parmname">NextToken</span> is not returned, there are no more financial event groups to return.
<p>Optional</p>
<p><span class="ph">Type: xs:string</span></p></td>
</tr>
<tr class="even">
<td><span class="keyword parmname">FinancialEventGroupList</span></td>
<td>Contains the financial event groups that meet the criteria specified in the request.
<p>Type: List of <a href="Finances_Datatypes.html#FinancialEventGroup" class="xref" title="Contains information related to a financial event group.">FinancialEventGroup</a></p></td>
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
see [Required request
parameters](../dev_guide/DG_RequiredRequestParameters.html).</span>

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="sectiondiv content">

``` pre codeblock
POST /Finances/2015-05-01 HTTP/1.1
Content-Type: x-www-form-urlencoded
Host: mws.amazonservices.com
User-Agent: <Your User Agent Header>

AWSAccessKeyId=0PB842EXAMPLESDX
&Action=ListFinancialEventGroupsByNextToken
&MWSAuthToken=amzn.mws.4ea38b7b-f563-7709-4bae-87aeaEXAMPLE
&NextToken=88faca76-b600-46d2-b53c-0c8c4EXAMPLE
&SellerId=A1XEXAMPLEDF
&SignatureMethod=HmacSHA256
&SignatureVersion=2
&Timestamp=2015-05-01T18%3A12%3A21.687Z
&Version=2015-05-01
&Signature=ZQLpf8vEXAMPLE0iC265pf18n0%3D
```

[↑ Top](#Examples)

</div>

</div>

<div class="section">

### Example response

<span class="ph">For information about standard response formatting, see
[Response format](../dev_guide/DG_ResponseFormat.html).</span>

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="sectiondiv content">

``` pre codeblock
<?xml version="1.0"?>
<ListFinancialEventGroupsByNextTokenResponse
    xmlns="https://mws.amazonservices.com/Finances/2015-05-01">
    <ListFinancialEventGroupsByNextTokenResult>
        <NextToken>2YgYW55IGNhcm5hbCBwbGVhcEXAMPLE</NextToken>
        <FinancialEventGroupList>
            <FinancialEventGroup>
                <FinancialEventGroupId>
                    22YgYW55IGNhcm5hbCBwbGVhEXAMPLE
                </FinancialEventGroupId>
                <ProcessingStatus>Closed</ProcessingStatus>
                <FundTransferStatus>Successful</FundTransferStatus>
                <OriginalTotal>
                    <CurrencyCode>USD</CurrencyCode>
                    <Amount>19.00</Amount>
                </OriginalTotal>
                <ConvertedTotal>
                    <CurrencyCode>USD</CurrencyCode>
                    <Amount>19.00</Amount>
                </ConvertedTotal>
                <FundTransferDate>2014-09-09T01:30:00.000-06:00</FundTransferDate>
                <TraceId>128311029381HSADJEXAMPLE</TraceId>
                <AccountTail>1212</AccountTail>
                <BeginningBalance>
                    <CurrencyCode>USD</CurrencyCode>
                    <Amount>0.00</Amount>
                </BeginningBalance>
                <FinancialEventGroupStart>
                    2014-09-01T01:30:00.000-06:00
                </FinancialEventGroupStart>
                <FinancialEventGroupEnd>
                    2014-09-09T01:30:00.000-06:00
                </FinancialEventGroupEnd>
            </FinancialEventGroup>
        </FinancialEventGroupList>
    </ListFinancialEventGroupsByNextTokenResult>
    <ResponseMetadata>
        <RequestId>1105b931-6f1c-4480-8e97-f3b46EXAMPLE</RequestId>
    </ResponseMetadata>
</ListFinancialEventGroupsByNextTokenResponse>
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
pages](../dev_guide/DG_NextToken.html)

[Finances API](../finances/Finances_Overview.html)

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