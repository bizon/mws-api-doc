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

# Shipping label specifications

<div class="body conbody">

You can call the
<span class="keyword apiname">GetUniquePackageLabels</span> operation of
the <span class="ph">Fulfillment Inbound Shipment API section</span> to
get shipping labels that are ready to be printed and affixed to each
package in your shipment. If your workflow requires you to generate your
own shipping labels, use the following guidelines. For more information
about the <span class="keyword apiname">GetUniquePackageLabels</span>
operation, see
[GetUniquePackageLabels](../fba_inbound/FBAInbound_GetUniquePackageLabels.md).

The shipping label that you place on the outside of each package must
include the following information:

  - Seller name.

  - "Ship to" address (the fulfillment center address that
    <span class="ph">Fulfillment by Amazon (FBA)</span> provided to
    you).

  - "Ship from" address.

  - FBA shipment identifier (the barcode that identifies a package in a
    shipment). For <span class="ph">Small Parcel</span> shipments, the
    shipping label for each package should have a unique barcode. This
    helps ensure that your shipment is processed in a timely manner when
    it reaches <span class="ph">Amazon's fulfillment network</span>. To
    construct unique barcode values for each package in a shipment, do
    the following:
    
    1.  Start with the Shipment ID value and append "U" and "001" to get
        the barcode value for the first package in the shipment.
    2.  To get the barcode values for each successive package in the
        shipment, (1) increment "001" by one, and then (2) append "U"
        and the incremented number to the Shipment ID value. Do this for
        each package in the shipment.
    
    Example: If you have three packages in a shipment with a Shipment ID
    value of FBA1MMD8D0, your three barcode values would be
    FBA1MMD8D0U001, FBA1MMD8D0U002, and FBA1MMD8D0U003.

  - A section clearly marked **Internal Use Only**.
    
    On the right side of the Internal Use Only section, do the
    following:
    
      - For a package that contains units all of the same SKU, indicate
        the quantity of units.
      - For a package that contains units with different SKUs, indicate
        "Assorted SKUs".
      - For a master carton (a box made to contain a certain number
        smaller boxes) that is not full, indicate "Partial case".
    
    On the left side of the **Internal Use Only** section, indicate any
    preparation that is required at the fulfillment center. For example,
    if you require labeling, indicate that as follows:
    
    **FC Prep Required - LABELING**

  - A section clearly marked **Seller Use Only**, below the **Internal
    Use Only** section (optional). Use this if you want to provide any
    seller-specific information.

  - An indication of whether the shipment contains media or non-media
    items. Provide this in the top right corner of the label by
    indicating "Media", "Non-Media", or leaving it blank. See the
    following descriptions:
    
      - "Media" - Indicates that the shipment contains only Books,
        Music, Video, DVD (BMVD) items.
      - "Non-media" - Indicates that the shipment contains only non-BMVD
        items.
      - blank (no text) - Indicates that the shipment contains a
        combination of BMVD and non-BMVD items.

<div class="section">

## Shipping label example

![Shipping label](ShippingLabel.png)

</div>

<div class="section">

## Shipping label print specifications

<div class="tablenoborder">

| Specification | Description                                                                                                                                                                 |
| ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Label color   | White                                                                                                                                                                       |
| Font          | See the [Label font specifications](FBAGuide_LabelFontSpec.md).                                                                                                           |
| Label size    | Amazon recommends that you use a label with a height by width dimension of 4" x 6" (10.2 cm x 15.2 cm). However you can use a label size up to 6" x 8" (15.2 cm x 20.3 cm). |
| Label type    | Permanent adhesive                                                                                                                                                          |

</div>

</div>

<div class="section">

## Shipping label barcode specifications

<div class="tablenoborder">

| Specification                | Description                                              |
| ---------------------------- | -------------------------------------------------------- |
| Format                       | Code 128A                                                |
| Height                       | Greater than 0.5" (1.3 cm), or 15% of the barcode length |
| Narrow barcode element       | Greater than 0.0075" (.19 mm)                            |
| Wide-to-narrow element ratio | 3:1                                                      |
| Quiet zone (sides)           | Greater than 0.25" (6.4 mm)                              |
| Quiet zone (top and bottom)  | Greater than 0.125" (3.2 mm)                             |

</div>

</div>

</div>

<div class="related-links">

<div class="familylinks">

<div class="parentlink">

**Parent topic:** [Shipping
Specifications](../fba_guide/FBAGuide_ShippingSpecs.md)

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
