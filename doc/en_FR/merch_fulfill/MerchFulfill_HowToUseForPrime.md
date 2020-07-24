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

<div id="MerchFulfill_HowToUseForPrime" class="nested0">

How to fulfill Seller Fulfilled Prime orders
============================================

<div class="body">

Amazon recommends this workflow for using the <span class="ph">Merchant
Fulfillment service</span> to fulfill Seller Fulfilled Prime orders.
This workflow is meant to supplement an order fulfillment system that
retrieves scheduled order reports using the Reports service. See
<a href="../reports/Reports_WorkingWithOrderReports.md" class="xref" title="Describes how to schedule and manage order reports.">Working with order reports</a>.
Incoming orders that are not fulfilled using the workflow described here
must be fulfilled by the seller using some other method.

<div class="note important">

<span class="importanttitle">Important:</span> This success of this
workflow requires that incoming order reports contain the optional <span
class="keyword parmname">IsPrime</span> and <span
class="keyword parmname">LatestShipDate</span> elements (for XML order
reports) or the optional <span class="keyword parmname">is-prime</span>
and <span class="keyword parmname">latest-ship-date</span> fields (for
flat file order reports). If these elements or fields do not appear in a
seller's order reports, Prime orders cannot be identified and ship dates
cannot be determined. This could lead to sellers missing the shipping
SLAs for their Prime orders. Sellers using an application that you
develop based on this workflow must add these columns to their order
reports using the **Optional columns** area of the
<a href="https://sellercentral.amazon.co.uk/orders/reports/column-selection" class="xref">Add or remove order report columns</a>
in Seller Central.

</div>

<span class="ph">For definitions, see
<a href="../merch_fulfill/MerchFulfill_Overview.md#Terminology" class="xref">Terminology</a>.</span>

**To fulfill Seller Fulfilled Prime orders**

1.  **Identify Prime orders**

    Identify the Prime orders in incoming order reports. Prime orders
    have the <span class="keyword parmname">IsPrime</span> element (for
    XML order reports) or the <span
    class="keyword parmname">is-prime</span> column (for flat file order
    reports) marked as true.

    Do not use the <span
    class="keyword parmname">FulfillmentServiceLevel</span> element or
    the <span class="keyword parmname">ship-service-level</span> column
    in order reports to attempt to identify Prime orders.

2.  **Determine the latest ship date for the Prime orders**

    Use the <span class="keyword parmname">LatestShipDate</span> element
    (from an XML order report) or the <span
    class="keyword parmname">latest-ship-date</span> column (from a flat
    file order report) to determine the date by which Prime orders need
    to be shipped.

3.  **Get shipping service offers**

    Call the
    <a href="MerchFulfill_GetEligibleShippingServices.md" class="xref" title="Returns a list of shipping service offers.">GetEligibleShippingServices</a>
    operation to get shipping service offers for the Prime orders
    identified in Step 1.

    <div class="note note">

    <span class="notetitle">Note:</span>
    -   For the <span class="keyword parmname">ShipDate</span>
        parameter, use the <span
        class="keyword parmname">LatestShipDate</span> value (XML
        report) or the <span
        class="keyword parmname">latest-ship-date</span> value (flat
        file report) from the order report.
    -   Do not specify the <span
        class="keyword parmname">MustArriveByDate</span> parameter, as
        this will unnecessarily limit the number of shipping service
        offers that are returned.
    -   Save the <span class="keyword parmname">ShippingServiceId</span>
        value from each shipping service offer that is returned. Use
        this for subsequent calls to the <span
        class="keyword apiname">CreateShipment</span> operation to
        create shipments for specific shipping service offers.

    </div>

4.  **Create a shipment**

    Call the
    <a href="MerchFulfill_CreateShipment.md" class="xref">CreateShipment</a>
    operation for one of the shipping service offers returned in the
    previous step. Use these parameter values:

    -   <span class="keyword parmname">ShipmentRequestDetails</span>.
        Use the same values that were included in the call to the <span
        class="keyword apiname">GetEligibleShippingServices</span>
        operation in the previous step.
    -   <span class="keyword parmname">ShippingServiceId</span>. Use the
        value associated with this shipping service offer.

    <div class="p">

    Calling the <span class="keyword apiname">CreateShipment</span>
    operation:
    -   Triggers payment for shipping, which is deducted from the
        seller’s Amazon seller account.
    -   Confirms the shipment. The seller does not have to confirm the
        shipment by other means.

    </div>

    <div class="note important">

    <span class="importanttitle">Important:</span> Save the <span
    class="keyword parmname">ShipmentId</span> value returned by the
    <span class="keyword apiname">CreateShipment</span> operation to
    identify the shipment in case the seller wants to print a new label,
    cancel a shipment, or check shipment status at a later time.
    Consider saving the item list along with each shipment ID to help
    the seller identify a shipment at a later time. See
    <a href="MerchFulfill_HowToGetNewShippingLabel.md" class="xref">How to reprint a shipping label</a>
    and
    <a href="MerchFulfill_HowToCancelShipment.md" class="xref">How to cancel a shipment</a>.

    </div>

5.  **Extract and print the shipping label**

    Extract the shipping label from the <span
    class="keyword parmname">FileContents</span> element returned by the
    <span class="keyword apiname">CreateShipment</span> operation. Print
    the shipping label. See
    <a href="MerchFulfill_HowToExtractShippingLabel.md" class="xref">How to extract a shipping label file</a>.

6.  **Create shipments for the remaining Prime orders**

    Repeat steps 3 through 5 until you have created shipments for all of
    the Prime orders identified in Step 1.

<div class="section">

Related topics
--------------

<a href="MerchFulfill_HowToGetNewShippingLabel.md" class="xref">How to reprint a shipping label</a>

<a href="MerchFulfill_HowToCancelShipment.md" class="xref">How to cancel a shipment</a>

</div>

</div>

<div class="related-links">

<div class="familylinks">

<div class="parentlink">

**Parent topic:**
<a href="../merch_fulfill/MerchFulfill_Overview.md" class="link">What you should know about the Merchant Fulfillment service</a>

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
