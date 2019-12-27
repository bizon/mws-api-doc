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

# Creating a fulfillment return

<div class="body conbody">

You can create an application that uses the Fulfillment Outbound
Shipment service to create a fulfillment return. This returns items to
<span class="ph">Amazon's fulfillment network</span> that were fulfilled
using the Fulfillment Outbound Shipment service.

Here is a possible workflow for an application that uses the Fulfillment
Outbound Shipment service to initiate fulfillment returns. For
definitions, see
[Terminology](../fba_outbound/FBAOutbound_Overview.md#Terminology).

<div id="FBAGuide_FBAGuide_CreateFulfillmentReturn__Step-1" class="section">

## Step 1. The buyer requests a return

The buyer contacts the seller and requests a return for items that the
seller fulfilled using the Fulfillment Outbound Shipment service.

</div>

<div id="FBAGuide_FBAGuide_CreateFulfillmentReturn__Step-2" class="section">

## Step 2. The seller associates the return items with fulfillment orders

Each return item must be associated with the fulfillment order that the
seller used to fulfill it. The seller uses their own records to find the
correct
<span class="keyword parmname">SellerFulfillmentOrderItemId</span> value
to associate with each return item, as well as the correct
<span class="keyword parmname">SellerFulfillmentOrderId</span> value to
associate with each
<span class="keyword parmname">SellerFulfillmentOrderItemId</span>
value.

</div>

<div id="FBAGuide_FBAGuide_CreateFulfillmentReturn__Step-3" class="section">

## Step 3. The seller inputs one or more SellerFulfillmentOrderId values into the application

The seller inputs a
<span class="keyword parmname">SellerFulfillmentOrderId</span> value for
each of the fulfillment orders that contain items to return.

</div>

<div id="FBAGuide_FBAGuide_CreateFulfillmentReturn__Step-4" class="section">

## Step 4. The application calls GetFulfillmentOrder to get values for subsequent calls to the service, if required

<div class="p">

The application calls the
[GetFulfillmentOrder](../fba_outbound/FBAOutbound_GetFulfillmentOrder.md "Returns a fulfillment order based on a specified SellerFulfillmentOrderId.")
operation for each
<span class="keyword parmname">SellerFulfillmentOrderId</span> value
collected in Step 3, and saves the following response values:

  - <span class="keyword parmname">MarketplaceId</span> and
    <span class="keyword parmname">SellerSKU</span> - These are returned
    for each item in the fulfillment order. The application saves them
    for use as request parameters in subsequent calls to the
    [ListReturnReasonCodes](../fba_outbound/FBAOutbound_ListReturnReasonCodes.md "Returns a list of return reason codes for a seller SKU in a given marketplace.")
    operation.
  - <span class="keyword parmname">SellerFulfillmentOrderItemId</span>
    and <span class="keyword parmname">AmazonShipmentId</span> -
    <span class="keyword parmname">SellerFulfillmentOrderItemId</span>
    is returned for each item in the fulfillment order and
    <span class="keyword parmname">AmazonShipmentId</span> is returned
    for each shipment in the fulfillment order. The application saves
    these for subsequent calls to the
    [CreateFulfillmentReturn](../fba_outbound/FBAOutbound_CreateFulfillmentReturn.md "Creates a fulfillment return.")
    operation.

</div>

</div>

<div id="FBAGuide_FBAGuide_CreateFulfillmentReturn__Step-5" class="section">

## Step 5. The application gets return reason codes

A valid return reason code is required for each item that is to be
returned. The application calls the
<span class="keyword apiname">ListReturnReasonCodes</span> operation for
each <span class="keyword parmname">SellerSKU</span> value returned in
Step 4. For each call, the application specifies both the
<span class="keyword parmname">SellerSKU</span> value and the associated
<span class="keyword parmname">MarketplaceId</span> value. The operation
returns reason codes for each return item. The application saves the
return reason codes to use in subsequent calls to the
<span class="keyword apiname">CreateFulfillmentReturn</span> operation.

</div>

<div id="FBAGuide_FBAGuide_CreateFulfillmentReturn__Step-6" class="section">

## Step 6. The seller initiates the creation of a fulfillment return

Each fulfillment return requires a
<span class="keyword parmname">SellerFulfillmentOrderId</span> value to
identify the fulfillment order that was used to fulfill the items to be
returned. Only the items that were in the fulfillment order can be
included in the fulfillment return.

The seller inputs the following information into the application for a
fulfillment return:

1.  The <span class="keyword parmname">SellerFulfillmentOrderId</span>
    value for the fulfillment order that was used to fulfill the items
    to be returned. This value was identified in Step 2.
2.  Information for each item in the fulfillment return:
      - <span class="keyword parmname">SellerReturnItemId</span>.
        <span class="ph">An identifier assigned by the seller to the
        return item.</span> This identifier must be unique in the
        context of the fulfillment order that the return item is
        associated with.
      - <span class="keyword parmname">SellerFulfillmentOrderItemId</span>.
        <span class="ph">The identifier assigned to the item by the
        seller when the fulfillment order was created.</span> This value
        was identified in Step 2.
      - <span class="keyword parmname">AmazonShipmentId</span>. The
        Amazon shipment ID for the fulfillment order shipment that
        contained the item to be returned. This value was returned in
        Step 4.
      - <span class="keyword parmname">ReturnReasonCode</span>. The
        application exposes the valid return reason codes for the return
        item from Step 5. The seller chooses from the list of return
        reason codes.
      - <span class="keyword parmname">ReturnComment</span>. An optional
        comment from the seller about the return item.

If the items that the buyer wants to return come from multiple
fulfillment orders, the seller needs to initiate a separate fulfillment
return for each fulfillment order.

</div>

<div id="FBAGuide_FBAGuide_CreateFulfillmentReturn__Step-7" class="section">

## Step 7. The application creates the fulfillment return

The application creates a fulfillment return by calling the
[CreateFulfillmentReturn](../fba_outbound/FBAOutbound_CreateFulfillmentReturn.md "Creates a fulfillment return.")
operation, specifying the following:

1.  The <span class="keyword parmname">SellerFulfillmentOrderId</span>
    value for the fulfillment return, input by the seller in Step 6.
2.  Values for each item in the fulfillment return:
    <span class="keyword parmname">SellerReturnItemId</span>,
    <span class="keyword parmname">SellerFulfillmentOrderItemId</span>,
    <span class="keyword parmname">AmazonShipmentId</span>,
    <span class="keyword parmname">ReturnReasonCode</span>, and
    (optional) <span class="keyword parmname">ReturnComment</span>
    values input by the seller in Step 6.

</div>

<div id="FBAGuide_FBAGuide_CreateFulfillmentReturn__Step-8" class="section">

## Step 8. The application returns information required for returning the items

The application returns a list of items accepted for return, as well as
one or more return authorizations. Return authorizations contain the
information required by the buyer to return items to Amazon’s
fulfillment centers.

If the application returns only one return authorization for the
fulfillment return, then all of the return items share the same return
authorization and can be returned in the same shipment. If the
application returns multiple return authorizations, then each return
item must be matched with a return authorization. The
<span class="keyword parmname">ReturnAuthorizationId</span> correlates
each return item with a return authorization.

The application also returns a list of items that are invalid for
return, if any, along with reasons they are invalid.
<span class="keyword parmname">AmazonRmaId</span> values are not
returned for items on this list.

</div>

<div id="FBAGuide_FBAGuide_CreateFulfillmentReturn__Step-9" class="section">

## Step 9. The seller sends the buyer the return information

<div class="p">

If the fulfillment return has only one return authorization, the seller
sends the buyer the following:

  - A list of items that were accepted for return.
  - A list of items that are invalid for return, if any, along with the
    reasons they are invalid.
  - The <span class="keyword parmname">RmaPageURL</span> value. This is
    a URL for a web page that contains the return authorization barcode
    and the mailing label.
  - The <span class="keyword parmname">ReturnToAddress</span> value.
    This is the address of the Amazon fulfillment center where the buyer
    should ship the fulfillment return to.

</div>

If the fulfillment return has multiple authorizations:

1.  The application groups the return items by return authorization,
    using the
    <span class="keyword parmname">ReturnAuthorizationId</span>.
2.  The seller sends the buyer the following:
      - A list of items that were accepted for return, grouped by return
        authorization.
      - A list of items that are invalid for return, if any, along with
        the reasons they are invalid.
      - An <span class="keyword parmname">RmaPageURL</span> value and
        <span class="keyword parmname">ReturnToAddress</span> value for
        each return authorization.

</div>

<div id="FBAGuide_FBAGuide_CreateFulfillmentReturn__Step-10" class="section">

## Step 10. The buyer sends the fulfillment return to Amazon’s fulfillment centers.

</div>

<div id="FBAGuide_FBAGuide_CreateFulfillmentReturn__Step-11" class="section">

## Step 11. (optional) The seller requests the status of the fulfillment return

The seller can request the status of a fulfilment return. This is a
possible workflow:

1.  The seller uses the application to indicate that they want the
    status of a fulfillment return.
2.  The application exposes the
    <span class="keyword parmname">SellerFulfillmentOrderId</span>
    values that the seller entered in Step 3.
3.  The seller chooses the
    <span class="keyword parmname">SellerFulfillmentOrderId</span> value
    for the fulfillment return for which they want the status.
4.  The application calls the
    [CreateFulfillmentReturn](../fba_outbound/FBAOutbound_CreateFulfillmentReturn.md "Creates a fulfillment return.")
    operation, specifying the
    <span class="keyword parmname">SellerFulfillmentOrderId</span> value
    that the seller chose.
5.  The application exposes the
    <span class="keyword parmname">Status</span> value returned by the
    <span class="keyword apiname">CreateFulfillmentReturn</span>
    operation, either `New` or `Processed`.

</div>

</div>

<div class="related-links">

<div class="familylinks">

<div class="parentlink">

**Parent topic:** [Common tasks](../fba_guide/FBAGuide_CommonTasks.md)

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
