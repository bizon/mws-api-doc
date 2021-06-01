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

# Preparation examples

<div class="body conbody">

These examples demonstrate how to create separate shipments for items
that have different <span class="keyword parmname">PrepOwners</span> for
the same <span class="keyword parmname">PrepInstruction</span>, and show
how errors can result if the same instruction is given to two owners in
the same shipment.

</div>

<div class="related-links">

<div class="familylinks">

<div class="parentlink">

**Parent topic:**
<a href="../fba_inbound/FBAInbound_Overview.md" class="link">What you should know about the Fulfillment Inbound Shipment API section</a>

</div>

</div>

</div>

<div id="Creating_Multiple_Plans" class="topic concept nested1">

## Creating multiple plans for different PrepOwners

<div class="body conbody">

In this example, the seller is creating a shipment plan where multiple
items requiring the same <span
class="keyword parmname">PrepInstruction</span> have different <span
class="keyword parmname">PrepOwners</span>. Because each shipment must
have the same <span class="keyword parmname">PrepOwner</span> for a
given <span class="keyword parmname">PrepInstruction</span>, this plan
proposes multiple shipments. In this case, one item is being taped by
Amazon, the other is being taped by the seller.

<div class="section">

### Example query request

``` pre
https://mws.amazonaws.com/FulfillmentInboundShipment/2010-10-01
?AWSAccessKeyId=AKIAEIAL5QODNGQCJLSA
&Action=CreateInboundShipmentPlan
&SellerId=A135KKEKWF1J56
&SignatureVersion=2
&Timestamp=2015-11-29T22%3A36%3A53Z
&Version=2010-10-01
&Signature=wMAeU2CEHdRCPh%2Fg7lQC7HkgRjxZlLxtbbDvFDHzdOE%3D
&SignatureMethod=HmacSHA256
&LabelPrepPreference=SELLER_LABEL
&ShipFromAddress.Name=test1
&ShipFromAddress.AddressLine1=LINE_1
&ShipFromAddress.City=Seattle
&ShipFromAddress.StateOrProvinceCode=WA
&ShipFromAddress.PostalCode=98121
&ShipFromAddress.CountryCode=US
&InboundShipmentPlanRequestItems.member.1.SellerSKU=SKU00001
&InboundShipmentPlanRequestItems.member.1.Quantity=1
&InboundShipmentPlanRequestItems.member.1.PrepDetailsList.PrepDetails.1.PrepInstruction=Taping          
&InboundShipmentPlanRequestItems.member.1.PrepDetailsList.PrepDetails.1.PrepOwner=AMAZON
&InboundShipmentPlanRequestItems.member.2.SellerSKU=SKU00002
&InboundShipmentPlanRequestItems.member.2.Quantity=1
&InboundShipmentPlanRequestItems.member.2.PrepDetailsList.PrepDetails.1.PrepInstruction=Labeling         
&InboundShipmentPlanRequestItems.member.2.PrepDetailsList.PrepDetails.1.PrepOwner=AMAZON
&InboundShipmentPlanRequestItems.member.2.PrepDetailsList.PrepDetails.2.PrepInstruction=Taping         
&InboundShipmentPlanRequestItems.member.2.PrepDetailsList.PrepDetails.2.PrepOwner=SELLER
```

</div>

<div class="section">

### Example response

``` pre
<?xml version="1.0" encoding="UTF-8"?>
<CreateInboundShipmentPlanResponse
  xmlns="http://mws.amazonaws.com/FulfillmentInboundShipment/2010-10-01/">
  <CreateInboundShipmentPlanResult>
    <InboundShipmentPlans>
      <member>
        <DestinationFulfillmentCenterId>ABE2</DestinationFulfillmentCenterId>
        <LabelPrepType>SELLER_LABEL</LabelPrepType>
        <ShipToAddress>
          <City>Breinigsville</City>
          <CountryCode>US</CountryCode>
          <PostalCode>18031</PostalCode>
          <Name>Amazon.com</Name>
          <AddressLine1>705 Boulder Drive</AddressLine1>
          <StateOrProvinceCode>PA</StateOrProvinceCode>
        </ShipToAddress>
        <Items>
          <member>
            <FulfillmentNetworkSKU>FNSKU00001</FulfillmentNetworkSKU>
            <Quantity>1</Quantity>
            <SellerSKU>SKU00001</SellerSKU>
            <PrepDetailsList>
              <PrepDetails>
                <PrepInstruction>Taping</PrepInstruction>
                <PrepOwner>AMAZON</PrepOwner> 
              </PrepDetails>
            </PrepDetailsList>
          </member>
        </Items>
        <ShipmentId>FBA0000001</ShipmentId>
      </member>
      <member>
        <DestinationFulfillmentCenterId>ABE2</DestinationFulfillmentCenterId>
        <LabelPrepType>AMAZON_ONLY</LabelPrepType>
        <ShipToAddress>
          <City>Breinigsville</City>
          <CountryCode>US</CountryCode>
          <PostalCode>18031</PostalCode>
          <Name>Amazon.com</Name>
          <AddressLine1>705 Boulder Drive</AddressLine1>
          <StateOrProvinceCode>PA</StateOrProvinceCode>
        </ShipToAddress>
        <Items>
          <member>
            <FulfillmentNetworkSKU>FNSKU00002</FulfillmentNetworkSKU>
            <Quantity>1</Quantity>
            <SellerSKU>SKU00002</SellerSKU>
            <PrepDetailsList>
              <PrepDetails>
                <PrepInstruction>Taping</PrepInstruction>
                <PrepOwner>SELLER</PrepOwner> 
                <PrepInstruction>Labeling</PrepInstruction>
                <PrepOwner>AMAZON</PrepOwner>                     
              </PrepDetails>
            </PrepDetailsList>
          </member>
        </Items>
        <ShipmentId>FBA0000002</ShipmentId>
      </member>
    </InboundShipmentPlans>
  </CreateInboundShipmentPlanResult>
  <ResponseMetadata>
    <RequestId>babd156d-8b2f-40b1-a770-d117f9ccafef</RequestId>
  </ResponseMetadata>
</CreateInboundShipmentPlanResponse>
```

</div>

</div>

</div>

<div id="Creating_Single_Shipment" class="topic concept nested1">

## Creating a single shipment for matching PrepOwners

<div class="body conbody">

In this example, the seller is creating a single shipment where the same
<span class="keyword parmname">PrepInstruction</span> is executed by the
same <span class="keyword parmname">PrepOwner</span>. In this case, both
SKUs are being labelled by Amazon.

<div class="section">

### Example query request

``` pre
https://mws.amazonaws.com/FulfillmentInboundShipment/2010-10-01  
?AWSAccessKeyId=AKIAEIAL5QODNGQCJLSA
&Action=CreateInboundShipment
&SellerId=A135KKEKWF1J56
&SignatureVersion=2
&Timestamp=2015-11-29T22%3A51%3A09Z
&Version=2010-10-01
&Signature=zzk0jdEopg7JgFAAjVrmESGYHKwvBJ2BhYdC1gLaUhc%3D
&SignatureMethod=HmacSHA256
&ShipmentId=FBA0000001
&InboundShipmentHeader.ShipmentName=SHIPMENT_NAME
&InboundShipmentHeader.ShipFromAddress.Name=NAME
&InboundShipmentHeader.ShipFromAddress.AddressLine1=ADDR_LINE1
&InboundShipmentHeader.ShipFromAddress.City=Seattle
&InboundShipmentHeader.ShipFromAddress.StateOrProvinceCode=WA
&InboundShipmentHeader.ShipFromAddress.PostalCode=98121
&InboundShipmentHeader.ShipFromAddress.CountryCode=US
&InboundShipmentHeader.DestinationFulfillmentCenterId=ABE2
&InboundShipmentHeader.ShipmentStatus=WORKING
&InboundShipmentHeader.LabelPrepPreference=SELLER_LABEL
&InboundShipmentItems.member.1.QuantityShipped=1
&InboundShipmentItems.member.1.SellerSKU=SKU00001
&InboundShipmentItems.member.1.PrepDetailsList.PrepDetails.1.PrepInstruction=Labeling 
&InboundShipmentItems.member.1.PrepDetailsList.PrepDetails.1.PrepOwner=AMAZON
&InboundShipmentItems.member.2.QuantityShipped=2
&InboundShipmentItems.member.2.SellerSKU=SKU00002
&InboundShipmentItems.member.2.PrepDetailsList.PrepDetails.1.PrepInstruction= Labeling
&InboundShipmentItems.member.2.PrepDetailsList.PrepDetails.1.PrepOwner= AMAZON
&InboundShipmentItems.member.2.PrepDetailsList.PrepDetails.2.PrepInstruction=Taping 
&InboundShipmentItems.member.2.PrepDetailsList.PrepDetails.2.PrepOwner= SELLER
```

</div>

<div class="section">

### Example response

``` pre
<?xml version="1.0" encoding="UTF-8"?>
<CreateInboundShipmentResponse
  xmlns="http://mws.amazonaws.com/FulfillmentInboundShipment/2010-10-01/">
  <CreateInboundShipmentResult>
    <ShipmentId>FBA000111</ShipmentId>
  </CreateInboundShipmentResult>
  <ResponseMetadata>
    <RequestId>2a1455aa-c5f9-4993-9b18-dc10407e09ba</RequestId>
  </ResponseMetadata>
</CreateInboundShipmentResponse>
```

</div>

</div>

</div>

<div id="Incompatible_Prep_Owner" class="topic concept nested1">

## Creating a single shipment with incompatible PrepOwners

<div class="body conbody">

In this example, the seller is trying to create a single shipment where
the same <span class="keyword parmname">PrepInstruction</span> has two
different <span class="keyword parmname">PrepOwners</span>. This would
result in an <span class="keyword parmname">IncompatiblePrepOwner</span>
error.

<div class="section">

### Example query request

``` pre
https://mws.amazonaws.com/FulfillmentInboundShipment/2010-10-01
?AWSAccessKeyId=AKIAEIAL5QODNGQCJLSA
&Action=CreateInboundShipment
&SellerId=A135KKEKWF1J56
&SignatureVersion=2
&Timestamp=2015-11-29T22%3A51%3A09Z
&Version=2010-10-01
&Signature=zzk0jdEopg7JgFAAjVrmESGYHKwvBJ2BhYdC1gLaUhc%3D
&SignatureMethod=HmacSHA256
&ShipmentId=FBA0000001
&InboundShipmentHeader.ShipmentName=SHIPMENT_NAME
&InboundShipmentHeader.ShipFromAddress.Name=NAME
&InboundShipmentHeader.ShipFromAddress.AddressLine1=ADDR_LINE1
&InboundShipmentHeader.ShipFromAddress.City=Seattle
&InboundShipmentHeader.ShipFromAddress.StateOrProvinceCode=WA
&InboundShipmentHeader.ShipFromAddress.PostalCode=98121
&InboundShipmentHeader.ShipFromAddress.CountryCode=US
&InboundShipmentHeader.DestinationFulfillmentCenterId=ABE2
&InboundShipmentHeader.ShipmentStatus=WORKING
&InboundShipmentHeader.LabelPrepPreference=SELLER_LABEL
&InboundShipmentItems.member.1.QuantityShipped=1
&InboundShipmentItems.member.1.SellerSKU=SKU00001
&InboundShipmentItems.member.1.PrepDetailsList.PrepDetails.1.PrepInstruction=Taping 
&InboundShipmentItems.member.1.PrepDetailsList.PrepDetails.1.PrepOwner=AMAZON
&InboundShipmentItems.member.2.QuantityShipped=2
&InboundShipmentItems.member.2.SellerSKU=SKU00002
&InboundShipmentItems.member.2.PrepDetailsList.PrepDetails.1.PrepInstruction=Taping 
&InboundShipmentItems.member.2.PrepDetailsList.PrepDetails.1.PrepOwner=SELLER
```

</div>

<div class="section">

### Example response

``` pre
<ErrorResponse
  xmlns="http://mws.amazonaws.com/FulfillmentInboundShipment/2010-10-01/">
  <Error>
    <Type>Sender</Type>
    <Code>IncompatiblePrepOwner</Code>
    <Message>Incompatible PrepOwner. A shipment cannot have a mix of AMAZON and SELLER as PrepOwner for the same prep instruction</Message>
  </Error>
  <RequestId>b8e929f5-18bb-4c28-905e-f9d634a61038</RequestId>
</ErrorResponse>
```

</div>

</div>

</div>

<div id="RelatedTopics" class="topic concept nested1">

## Related topics

<div class="body conbody">

<a href="../fba_inbound/FBAInbound_CreateInboundShipment.md" class="xref">CreateInboundShipment</a>

<a href="../fba_inbound/FBAInbound_CreateInboundShipmentPlan.md" class="xref">CreateInboundShipmentPlan</a>

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
