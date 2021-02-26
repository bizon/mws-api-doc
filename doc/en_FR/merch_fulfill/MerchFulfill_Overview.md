<div id="MWSDX_noscript">

JavaScript is currently disabled in your browser.  
To use the Amazon MWS documentation, you must enable JavaScript in your
browser.

</div>

<div id="MWSDX_divtop">

[![Amazon
Services](https://images-na.ssl-images-amazon.com/images/G/08/mwsportal/fr_FR/amazonservices.gif "Amazon Services")](http://services.amazon.fr)  
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

<div id="MerchFulfill_Overview" class="nested0">

What you should know about the Merchant Fulfillment service
===========================================================

<div class="body">

<div class="section">

With the <span class="ph">Merchant Fulfillment service</span>, you can
build applications that let sellers purchase shipping for non-Prime and
Prime orders using Amazon’s
<a href="https://sellercentral.amazon.co.uk/gp/help/200202220" class="xref">Buy Shipping Services</a>.
To build applications that fulfill Prime orders, see
<a href="MerchFulfill_HowToUseForPrime.md" class="xref">How to fulfill Seller Fulfilled Prime orders</a>.

You can build applications that can:

-   Preview shipping service offers based on shipping requirements: ship
    date, must arrive by date, package size and weight, etc.
-   Create shipments based on shipping service offers that they choose.
-   Automatically pay for shipping through the API service.
-   Receive and print shipping labels.

<div class="note important">

<span class="importanttitle">Important:</span> Your access to <span
class="ph">Amazon MWS</span> data depends on the role Amazon assigns you
after you submit the <span class="ph">Developer Registration and
Assessment form</span>. For more information see
<a href="../dev_guide/DG_Registering.md#DG_Registering" class="xref">Registering to use Amazon MWS</a>.

</div>

</div>

<div class="section">

Terms and conditions
--------------------

Before a seller can use any application that uses the <span
class="ph">Merchant Fulfillment service</span> to fulfill orders, they
need to:

1.  Review and accept the terms and conditions of the Buy Shipping
    Services program.
2.  Review and accept the terms and conditions of any carrier that they
    want to purchase shipping from.

Sellers can review and accept terms and conditions on the
<a href="https://sellercentral.amazon.co.uk/gp/shipping-manager/terms-and-conditions.html/ref=ag_xx_cont_201950090" class="xref">Manage Shipping Services</a>
page of Seller Central. Calling the Merchant Fulfillment service on
behalf of a seller who has not accepted the terms and conditions of
Amazon and the carrier returns the <span
class="keyword parmname">TermsAndConditionsNotAccepted</span> error. See
<a href="MerchFulfill_ErrorCodes.md" class="xref">Error codes</a>.

</div>

<div class="section">

Operations
----------

These operations are included in the <span class="ph">Merchant
Fulfillment service</span>

<div class="tablenoborder">

| Operation                                                                                                                                                                                                                                | Description                                                                                                                                             | Availability                                                                                           |
|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------|
| <a href="MerchFulfill_GetEligibleShippingServices.md" class="xref" title="Returns a list of shipping service offers.">GetEligibleShippingServices</a>                                                                                  | <span class="ph">Returns a list of shipping service offers.</span>                                                                                      | <span class="ph">The Canada, US, MX, Spain, UK, France, Germany, Italy, and India marketplaces.</span> |
| <a href="MerchFulfill_GetAdditionalSellerInputs.md" class="xref" title="Returns a list of additional seller inputs that are required from the seller to purchase the shipping service that you specify.">GetAdditionalSellerInputs</a> | <span class="ph">Returns a list of additional seller inputs that are required from the seller to purchase the shipping service that you specify.</span> | <span class="ph">The Canada, US, MX, Spain, UK, France, Germany, Italy, and India marketplaces.</span> |
| <a href="MerchFulfill_CreateShipment.md" class="xref">CreateShipment</a>                                                                                                                                                               | <span class="ph">Purchases shipping and returns a shipping label.</span>                                                                                | <span class="ph">The Canada, US, MX, Spain, UK, France, Germany, Italy, and India marketplaces.</span> |
| <a href="MerchFulfill_GetShipment.md" class="xref" title="Returns an existing shipment for a given identifier.">GetShipment</a>                                                                                                        | <span class="ph">Returns an existing shipment for a given identifier.</span>                                                                            | <span class="ph">The Canada, US, MX, Spain, UK, France, Germany, Italy, and India marketplaces.</span> |
| <a href="MerchFulfill_CancelShipment.md" class="xref" title="Cancels an existing shipment.">CancelShipment</a>                                                                                                                         | <span class="ph">Cancels an existing shipment.</span>                                                                                                   | <span class="ph">The Canada, US, MX, Spain, UK, France, Germany, Italy, and India marketplaces.</span> |
| <a href="../fba_outbound/MWS_GetServiceStatus.md" class="xref" title="Returns the operational status of the Fulfillment Outbound Shipment API section.">GetServiceStatus</a>                                                           | <span class="ph">Returns the operational status of the <span class="ph">Merchant Fulfillment service</span>.</span>                                     | <span class="ph">The Canada, US, MX, Spain, UK, France, Germany, Italy, and India marketplaces.</span> |

</div>

</div>

<div id="MerchFulfill_Overview__Terminology" class="section">

Terminology
-----------

<div class="tablenoborder">

| Term                         | Definition                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
|------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Shipping service**         | A carrier's shipping service. For example, "UPS Ground" or "FedEx Standard Overnight". Identified with a <span class="keyword parmname">ShippingServiceId</span> value, which is returned by the <a href="MerchFulfill_GetEligibleShippingServices.md" class="xref" title="Returns a list of shipping service offers.">GetEligibleShippingServices</a> operation.                                                                                                                                                                                                                                                                                                           |
| **Shipping service offer**   | <span class="ph">A shipping service offer made by a carrier.</span> Represented by the <span class="keyword parmname">ShippingService</span> datatype. Identified with a <span class="keyword parmname">ShippingServiceOfferId</span> value, which is returned by the <span class="keyword apiname">GetEligibleShippingServices</span> operation.                                                                                                                                                                                                                                                                                                                             |
| **Package**                  | A parcel to be shipped by a carrier. A package includes metadata such as dimensions, weight, and item contents.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| **Shipment**                 | A package and a shipping label. Identified with a <span class="keyword parmname">ShipmentId</span> value.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| **Additional seller inputs** | Additional seller-provided information that is required to purchase certain shipping services. You can call the <a href="MerchFulfill_GetAdditionalSellerInputs.md" class="xref" title="Returns a list of additional seller inputs that are required from the seller to purchase the shipping service that you specify.">GetAdditionalSellerInputs</a> to find out which additional seller inputs are required for a specific shipping service. Then, after getting these additional seller inputs from the seller, you can use them as input to the <a href="MerchFulfill_CreateShipment.md" class="xref">CreateShipment</a> operation to purchase the shipping service. |

</div>

</div>

</div>

<div class="related-links">

In this section
---------------

-   **[How to fulfill Seller Fulfilled Prime
    orders](../merch_fulfill/MerchFulfill_HowToUseForPrime.md)**  
-   **[How to reprint a shipping
    label](../merch_fulfill/MerchFulfill_HowToGetNewShippingLabel.md)**  
-   **[How to cancel a
    shipment](../merch_fulfill/MerchFulfill_HowToCancelShipment.md)**  
-   **[How to extract a shipping label
    file](../merch_fulfill/MerchFulfill_HowToExtractShippingLabel.md)**  

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
