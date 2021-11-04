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

<div id="MerchFulFill_GetAdditionalSellerInputs" class="nested0">

# GetAdditionalSellerInputs

<span class="ph">Returns a list of additional seller inputs that are
required from the seller to purchase the shipping service that you
specify.</span>

<div id="Description" class="topic concept nested1">

## Description

<div class="body conbody">

The <span class="keyword apiname">GetAdditionalSellerInputs</span>
operation returns a list of additional inputs that are required from the
seller for purchasing shipping for some shipping services. Calling <span
class="keyword apiname">GetAdditionalSellerInputs</span> is only
required for shipment services that require additional seller inputs.

To identify shipping services that require additional seller inputs,
examine the <span class="keyword parmname">ShippingService</span>
elements that are returned by the
<a href="MerchFulfill_GetEligibleShippingServices.md" class="xref" title="Returns a list of shipping service offers.">GetEligibleShippingServices</a>
operation. When <span
class="keyword parmname">RequiresAdditionalSellerInputs</span>=`true` is
included in a <span class="keyword parmname">ShippingService</span>
element, that shipment service requires additional seller inputs. Call
the <span class="keyword apiname">GetAdditionalSellerInputs</span>
operation to find out which additional seller inputs are required. When
<span
class="keyword parmname">RequiresAdditionalSellerInputs</span>=`false`
is included in a <span class="keyword parmname">ShippingService</span>
element, that shipment service offer does not require additional seller
inputs. You can skip the <span
class="keyword apiname">GetAdditionalSellerInputs</span> operation and
call the
<a href="MerchFulfill_CreateShipment.md" class="xref">CreateShipment</a>
operation to create your shipment.

The <span class="keyword apiname">GetAdditionalSellerInputs</span>
operation also includes syntax requirements for the additional input
that you get from sellers, and returns saved values that you previously
provided to Amazon. For definitions, see
<a href="../merch_fulfill/MerchFulfill_Overview.md#Terminology" class="xref">Merchant Fulfillment API</a>.

<div class="section">

### Availability

This operation is only available in the Canada, US, Mexico, Spain, UK,
France, Germany, Italy, and India marketplaces.

</div>

<div class="section">

### Throttling

<span class="ph">This operation has a maximum request quota of 10 and a
restore rate of five requests every second. For definitions of
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

<table id="RequestParameters__RequestParametersTable" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d182889e171" class="entry" data-valign="top" width="24.061810154525393%">Name</th>
<th id="d182889e174" class="entry" data-valign="top" width="22.075055187637975%">Description</th>
<th id="d182889e177" class="entry" data-valign="top" width="23.178807947019873%">Required</th>
<th id="d182889e180" class="entry" data-valign="top" width="30.684326710816777%">Values</th>
</tr>
</thead>
<tbody class="tbody">
<tr id="RequestParameters__row_ShipmentRequestDetails" class="odd row">
<td class="entry" data-valign="top" width="24.061810154525393%" headers="d182889e171 "><span class="keyword parmname">OrderId</span></td>
<td class="entry" data-valign="top" width="22.075055187637975%" headers="d182889e174 ">An Amazon-defined order identifier. Use the <span class="keyword parmname">AmazonOrderId</span> value that you specified in a previous call to the <a href="MerchFulfill_GetEligibleShippingServices.md" class="xref" title="Returns a list of shipping service offers.">GetEligibleShippingServices</a> operation.</td>
<td class="entry" data-valign="top" width="23.178807947019873%" headers="d182889e177 ">Yes</td>
<td class="entry" data-valign="top" width="30.684326710816777%" headers="d182889e180 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="24.061810154525393%" headers="d182889e171 "><span class="keyword parmname">ShippingServiceId</span></td>
<td class="entry" data-valign="top" width="22.075055187637975%" headers="d182889e174 ">The identifier for the carrier shipping service that the seller chose. This was returned by a previous call to the <a href="MerchFulfill_GetEligibleShippingServices.md" class="xref" title="Returns a list of shipping service offers.">GetEligibleShippingServices</a> operation.
<p>Example: CHINA_POST_E_COURIER_PRI</p></td>
<td class="entry" data-valign="top" width="23.178807947019873%" headers="d182889e177 ">Yes</td>
<td class="entry" data-valign="top" width="30.684326710816777%" headers="d182889e180 "><span class="ph">Type: xs:string</span></td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="24.061810154525393%" headers="d182889e171 "><span class="keyword parmname">ShipFromAddress</span></td>
<td class="entry" data-valign="top" width="22.075055187637975%" headers="d182889e174 ">The address from which the shipment ships. Use the <span class="keyword parmname">ShipFromAddress</span> value that you specified in a previous call to the <a href="MerchFulfill_GetEligibleShippingServices.md" class="xref" title="Returns a list of shipping service offers.">GetEligibleShippingServices</a> operation.</td>
<td class="entry" data-valign="top" width="23.178807947019873%" headers="d182889e177 ">Yes</td>
<td class="entry" data-valign="top" width="30.684326710816777%" headers="d182889e180 ">Type: <a href="MerchFulfill_Datatypes.md#Address" class="xref" title="Postal address information.">Address</a></td>
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

<table id="ResponseElements__ResponseElementsTable" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d182889e305" class="entry" data-valign="top">Name</th>
<th id="d182889e308" class="entry" data-valign="top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" headers="d182889e305 "><span class="keyword parmname">ShipmentLevelFields</span></td>
<td class="entry" data-valign="top" headers="d182889e308 ">A list of additional seller inputs that are required for this shipping service. These inputs are at the shipment level and are shared across multiple items in the same shipment.
<p>Type: List of <a href="MerchFulfill_Datatypes.md#ShipmentLevelFields" class="xref" title="A list of additional seller inputs (at the shipment level), used as input to the CreateShipment operation.">ShipmentLevelFields</a></p></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" headers="d182889e305 "><span class="keyword parmname">ItemLevelFieldsList</span></td>
<td class="entry" data-valign="top" headers="d182889e308 ">A list of additional seller inputs that are required for this shipping service. These inputs are at the item level and are different for each item in the shipment.
<p>Type: List of <a href="MerchFulfill_Datatypes.md#ItemLevelFields" class="xref" title="A list of additional seller inputs (at the item level), returned by the GetAdditionalSellerInputs operation.">ItemLevelFieldsList</a></p></td>
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
https://mws.amazonservices.com/MerchantFulfillment/2015-06-01
  &Action=GetAdditionalSellerInputs 
  &SellerId=A46VPI2LR4OTS
  &SignatureVersion=2 
  &Timestamp=2019-08-07T18%3A29%3A23Z 
  &Version=2015-06-01 
  &Signature=WMeN1apuR3ahb0ncdqq51gxwmGy4K6HqCIwtf87rquE%3D 
  &SignatureMethod=HmacSHA256 
  &OrderId=922-2942641-9412606 
  &ShippingServiceId=CHINA_POST_E_COURIER_PRI 
  &ShipFromAddress.Name=Shenzhen%20Address 
  &ShipFromAddress.AddressLine1=test%20address 
  &ShipFromAddress.City=Shenzhen 
  &ShipFromAddress.StateOrProvinceCode=Guangdong 
  &ShipFromAddress.PostalCode=510810 
  &ShipFromAddress.CountryCode=CN 
  &ShipFromAddress.Email=example%40email.com 
  &ShipFromAddress.Phone=555-555-5555
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

For shipping that requires additional seller inputs.

``` pre
<?xml version="1.0"?>
<GetAdditionalSellerInputsResponse
    xmlns="https://mws.amazonservices.com/MerchantFulfillment/2015-06-01">
    <GetAdditionalSellerInputsResult>
        <ShipmentLevelFields>
            <member>
                <SellerInputDefinition>
                    <IsRequired>true</IsRequired>
                    <RestrictedSetValues>
                        <member>Abandon</member>
                        <member>Return</member>
                    </RestrictedSetValues>
                    <DataType>String</DataType>
                    <InputTarget>SHIPMENT_LEVEL</InputTarget>
                    <StoredValue>
                        <ValueAsString>ABANDON</ValueAsString>
                        <DataType>STRING</DataType>
                        <ValueAsBoolean>false</ValueAsBoolean>
                        <ValueAsInteger>0</ValueAsInteger>
                    </StoredValue>
                    <InputDisplayText>Non-Deliverable Instructions</InputDisplayText>
                    <Constraints/>
                </SellerInputDefinition>
                <AdditionalInputFieldName>NON_DELIVERABLE_INSTRUCTIONS</AdditionalInputFieldName>
            </member>
            <member>
                <SellerInputDefinition>
                    <IsRequired>true</IsRequired>
                    <RestrictedSetValues/>
                    <DataType>Address</DataType>
                    <InputTarget>SHIPMENT_LEVEL</InputTarget>
                    <InputDisplayText>Ship From Address(Chinese)</InputDisplayText>
                    <Constraints>
                        <member>
                            <ValidationRegEx>putjust5digitRegex</ValidationRegEx>
                            <ValidationString>Please enter Ship From Address in
                                Chinese</ValidationString>
                        </member>
                    </Constraints>
                </SellerInputDefinition>
                <AdditionalInputFieldName>SENDER_ADDRESS_TRANSLATED</AdditionalInputFieldName>
            </member>
        </ShipmentLevelFields>
        <ItemLevelFieldsList>
            <member>
                <Asin>B004U9TL66</Asin>
                <AdditionalInputs>
                    <member>
                        <SellerInputDefinition>
                            <IsRequired>true</IsRequired>
                            <RestrictedSetValues/>
                            <DataType>Weight</DataType>
                            <InputTarget>ITEM_LEVEL</InputTarget>
                            <StoredValue>
                                <ValueAsWeight>
                                    <Value>600</Value>
                                    <Unit>G</Unit>
                                </ValueAsWeight>
                                <DataType>WEIGHT</DataType>
                                <ValueAsBoolean>false</ValueAsBoolean>
                                <ValueAsInteger>0</ValueAsInteger>
                            </StoredValue>
                            <InputDisplayText>Item weight</InputDisplayText>
                            <Constraints>
                                <member>
                                    <ValidationRegEx>^[0-9]{1,3}(.[0-9]{1,2})?$</ValidationRegEx>
                                    <ValidationString>Please enter item weight (max 6
                                        digits)</ValidationString>
                                </member>
                            </Constraints>
                        </SellerInputDefinition>
                        <AdditionalInputFieldName>ITEM_WEIGHT</AdditionalInputFieldName>
                    </member>
                    <member>
                        <SellerInputDefinition>
                            <IsRequired>true</IsRequired>
                            <RestrictedSetValues/>
                            <DataType>String</DataType>
                            <InputTarget>ITEM_LEVEL</InputTarget>
                            <StoredValue>
                                <ValueAsString>CN</ValueAsString>
                                <DataType>STRING</DataType>
                                <ValueAsBoolean>false</ValueAsBoolean>
                                <ValueAsInteger>0</ValueAsInteger>
                            </StoredValue>
                            <InputDisplayText>Country of Origin</InputDisplayText>
                            <Constraints>
                                <member>
                                    <ValidationRegEx>^[a-zA-Z]{2}$</ValidationRegEx>
                                    <ValidationString>Please enter country code of the country of
                                        manufacture (e.g. CN)</ValidationString>
                                </member>
                            </Constraints>
                        </SellerInputDefinition>
                        <AdditionalInputFieldName>COUNTRY_OF_ORIGIN</AdditionalInputFieldName>
                    </member>
                    <member>
                        <SellerInputDefinition>
                            <IsRequired>true</IsRequired>
                            <RestrictedSetValues/>
                            <DataType>String</DataType>
                            <InputTarget>ITEM_LEVEL</InputTarget>
                            <StoredValue>
                                <ValueAsString>è¡£æœ�</ValueAsString>
                                <DataType>STRING</DataType>
                                <ValueAsBoolean>false</ValueAsBoolean>
                                <ValueAsInteger>0</ValueAsInteger>
                            </StoredValue>
                            <InputDisplayText>Item Description(Chinese)</InputDisplayText>
                            <Constraints>
                                <member>
                                    <ValidationRegEx>^[^a-zA-Z]{1,10}$</ValidationRegEx>
                                    <ValidationString>Please enter item description in Chinese up to
                                        10 characters </ValidationString>
                                </member>
                            </Constraints>
                        </SellerInputDefinition>
                        <AdditionalInputFieldName>ITEM_DESCRIPTION_TRANSLATED</AdditionalInputFieldName>
                    </member>
                    <member>
                        <SellerInputDefinition>
                            <IsRequired>true</IsRequired>
                            <RestrictedSetValues/>
                            <DataType>String</DataType>
                            <InputTarget>ITEM_LEVEL</InputTarget>
                            <StoredValue>
                                <ValueAsString>200</ValueAsString>
                                <DataType>CURRENCY</DataType>
                                <ValueAsBoolean>false</ValueAsBoolean>
                                <ValueAsInteger>0</ValueAsInteger>
                            </StoredValue>
                            <InputDisplayText>Item Value(USD)</InputDisplayText>
                            <Constraints>
                                <member>
                                    <ValidationRegEx>^[0-9]{1,3}(.[0-9]{1,2})?$</ValidationRegEx>
                                    <ValidationString>Please enter item value in USD (max 6
                                        digits)</ValidationString>
                                </member>
                            </Constraints>
                        </SellerInputDefinition>
                        <AdditionalInputFieldName>ITEM_VALUE</AdditionalInputFieldName>
                    </member>
                    <member>
                        <SellerInputDefinition>
                            <IsRequired>false</IsRequired>
                            <RestrictedSetValues/>
                            <DataType>String</DataType>
                            <InputTarget>ITEM_LEVEL</InputTarget>
                            <InputDisplayText>HS Code</InputDisplayText>
                            <Constraints>
                                <member>
                                    <ValidationRegEx>^[0-9a-zA-Z -]{1,10}?$</ValidationRegEx>
                                    <ValidationString>Please enter HS Code containing letters and
                                        numbers only up to 10 characters</ValidationString>
                                </member>
                            </Constraints>
                        </SellerInputDefinition>
                        <AdditionalInputFieldName>HS_CODE</AdditionalInputFieldName>
                    </member>
                    <member>
                        <SellerInputDefinition>
                            <IsRequired>true</IsRequired>
                            <RestrictedSetValues/>
                            <DataType>String</DataType>
                            <InputTarget>ITEM_LEVEL</InputTarget>
                            <StoredValue>
                                <ValueAsString>Diapers</ValueAsString>
                                <DataType>STRING</DataType>
                                <ValueAsBoolean>false</ValueAsBoolean>
                                <ValueAsInteger>0</ValueAsInteger>
                            </StoredValue>
                            <InputDisplayText>Item Description</InputDisplayText>
                            <Constraints>
                                <member>
                                    <ValidationRegEx>^[a-zA-Z0-9-._&amp; ]{3,25}$</ValidationRegEx>
                                    <ValidationString>Please enter item description using
                                        alphanumeric characters (max 25
                                        characters)</ValidationString>
                                </member>
                            </Constraints>
                        </SellerInputDefinition>
                        <AdditionalInputFieldName>ITEM_DESCRIPTION</AdditionalInputFieldName>
                    </member>
                </AdditionalInputs>
            </member>
        </ItemLevelFieldsList>
    </GetAdditionalSellerInputsResult>
    <ResponseMetadata>
        <RequestId>c16c3c89-6dcd-11e9-b318-db190c5bb6ad</RequestId>
    </ResponseMetadata>
</GetAdditionalSellerInputsResponse>
```

For shipping that does not require additional seller inputs.

``` pre
<?xml version="1.0" encoding="UTF-8"?>
<GetAdditionalSellerInputsResponse xmlns="https://mws.amazonservices.com/MerchantFulfillment/2015-06-01">
    <GetAdditionalSellerInputsResult>
        <ShipmentLevelFields/>
        <ItemLevelFieldsList>
            <member>
                <Asin>B004U9TL66</Asin>
                <AdditionalInputs/>
            </member>
        </ItemLevelFieldsList>
    </GetAdditionalSellerInputsResult>
    <ResponseMetadata>
        <RequestId>308c41e1-6de4-11e9-9856-5df3f6909c79</RequestId>
    </ResponseMetadata>
</GetAdditionalSellerInputsResponse>
```

<a href="#Examples" class="xref">↑ Top</a>

</div>

</div>

</div>

</div>

<div id="RelatedTopics" class="topic nested1">

## Related topics

<div class="body">

<a href="../merch_fulfill/MerchFulfill_Overview.md" class="xref">Merchant Fulfillment API</a>

<a href="MerchFulfill_HowToUseForPrime.md" class="xref">How to fulfill Seller Fulfilled Prime orders</a>

<a href="MerchFulfill_CreateShipment.md" class="xref">CreateShipment</a>

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
