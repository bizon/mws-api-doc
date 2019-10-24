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

<div id="MerchFulfill_HowToCancelShipment" class="nested0">

# How to cancel a shipment

<div class="body">

<span class="ph">This shows how to add functionality to the workflow
described in [How to fulfill Seller Fulfilled Prime
orders](MerchFulfill_HowToUseForPrime.md).</span>

**To cancel a shipment**

1.  Call the
    [CancelShipment](MerchFulfill_CancelShipment.md "Cancels an existing shipment.")
    operation, specifying the
    <span class="keyword parmname">ShipmentId</span> value of the
    shipment to be canceled.
2.  (Optional) Check the status of the canceled shipment. See the
    following procedure.

**To check the status of a canceled shipment (optional)**

1.  Call the
    [GetShipment](MerchFulfill_GetShipment.md "Returns an existing shipment for a given identifier.")
    operation, specifying the
    <span class="keyword parmname">ShipmentId</span> value of the
    canceled shipment.
2.  Get the cancellation status from the
    <span class="keyword parmname">Status</span> element returned by the
    <span class="keyword apiname">GetShipment</span> operation.

<div class="section">

## Errors

The service returns the
<span class="keyword parmname">LabelCancelWindowExpired</span> error if
the window for canceling a label has expired. See [Error
codes](MerchFulfill_ErrorCodes.md).

</div>

<div class="section">

## Related topics

[How to fulfill Seller Fulfilled Prime
orders](MerchFulfill_HowToUseForPrime.md)

</div>

</div>

<div class="related-links">

<div class="familylinks">

<div class="parentlink">

**Parent topic:** [What you should know about the Merchant Fulfillment
service](../merch_fulfill/MerchFulfill_Overview.md)

</div>

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
