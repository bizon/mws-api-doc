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

# Scheduled Delivery

<div class="body conbody">

A scheduled delivery shipping method is available for
<span class="ph">Multi-Channel Fulfillment</span> orders in Japan. The
scheduled delivery shipping method enables you to choose a delivery
window within which your fulfillment order will be delivered.

**To schedule a <span class="ph">Multi-Channel Fulfillment</span>
order**

1.  Call the <span class="keyword apiname">GetFulfillmentPreview</span>
    operation, specifying the following:
    
      - <span class="keyword parmname">ShippingSpeedCategories</span> =
        ScheduledDelivery
      - <span class="keyword parmname">IncludeDeliveryWindows</span> =
        true
    
    A range of <span class="keyword parmname">DeliveryWindow</span>
    response elements are returned, each containing a
    <span class="keyword parmname">StartDateTime</span> and an
    <span class="keyword parmname">EndDateTime</span> response element.

2.  Determine which <span class="keyword parmname">DeliveryWindow</span>
    response element accurately delimits the time range in which the
    fulfillment order should be delivered.

3.  Call the <span class="keyword apiname">CreateFulfillmentOrder</span>
    operation, specifying the following:
    
      - <span class="keyword parmname">ShippingSpeedCategory</span> =
        ScheduledDelivery
      - The <span class="keyword parmname">StartDateTime</span> and
        <span class="keyword parmname">EndDateTime</span> values
        contained in the
        <span class="keyword parmname">DeliveryWindow</span> response
        element from the previous step.
    
    <div class="note important">
    
    <span class="importanttitle">Important:</span>
    
      - The <span class="keyword parmname">StartDateTime</span> and
        <span class="keyword parmname">EndDateTime</span> values
        included with a call to the
        <span class="keyword apiname">CreateFulfillmentOrder</span>
        operation must be specified exactly as they were returned by the
        <span class="keyword apiname">GetFulfillmentPreview</span>
        operation. If you specify
        <span class="keyword parmname">StartDateTime</span> and
        <span class="keyword parmname">EndDateTime</span> values that
        were not returned by the
        <span class="keyword apiname">GetFulfillmentPreview</span>
        operation, the service returns an error.
      - It is possible that delivery windows that are available when you
        call the
        <span class="keyword apiname">GetFulfillmentPreview</span>
        operation will no longer be available when you later call the
        <span class="keyword apiname">CreateFulfillmentOrder</span>
        operation. If this happens the service returns an error. In this
        case you will need to start again from step 1.
    
    </div>

For more information, see [What you should know about the Fulfillment
Outbound Shipment API
section](../fba_outbound/FBAOutbound_Overview.md).

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
