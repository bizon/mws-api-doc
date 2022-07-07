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
<span id="MWSDX_dep_notice"></span>

### Deprecation Notice:

Amazon Marketplace Web Service (MWS) will no longer be available after
**December 31, 2023**. All MWS developers must migrate to Selling
Partner API (SP-API) to avoid service disruptions. Refer to the
[Migration
Hub](https://developer-docs.amazon.com/sp-api/page/migration-hub) for
more information.

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

You can call the <span
class="keyword apiname">GetUniquePackageLabels</span> operation of the
<span class="ph">Fulfillment Inbound Shipment API section</span> to get
shipping labels that are ready to be printed and affixed to each package
in your shipment. If your workflow requires you to generate your own
shipping labels, use the following guidelines. For more information
about the <span class="keyword apiname">GetUniquePackageLabels</span>
operation, see
<a href="../fba_inbound/FBAInbound_GetUniquePackageLabels.md" class="xref">GetUniquePackageLabels</a>.

The shipping label that you place on the outside of each package must
include the following information:

-   Seller name.

-   "Ship to" address (the fulfillment center address that <span
    class="ph">Fulfillment by Amazon (FBA)</span> provided to you).

-   "Ship from" address.

-   FBA shipment identifier (the barcode that identifies a package in a
    shipment). For <span class="ph">Small Parcel</span> shipments, the
    shipping label for each package should have a unique barcode. This
    helps ensure that your shipment is processed in a timely manner when
    it reaches <span class="ph">Amazon's fulfillment network</span>. To
    construct unique barcode values for each package in a shipment, do
    the following:

    1.  Start with the Shipment ID value and append "U" and "000001" to
        get the barcode value for the first package in the shipment.
    2.  To get the barcode values for each successive package in the
        shipment, (1) increment "000001" by one, and then (2) append "U"
        and the incremented number to the Shipment ID value. Do this for
        each package in the shipment.

    Example: If you have three packages in a shipment with a Shipment ID
    value of FBA1MMD8D0, your three barcode values would be
    FBA1MMD8D0U000001, FBA1MMD8D0U000002, and FBA1MMD8D0U000003.

    <div class="note note">

    <span class="notetitle">Note:</span> A box label identified with its
    own unique numerical identifier must follow the 6-digit number
    format after U, printed and affixed to each carton you send to a
    fulfillment center (for example, U000001, U000002, U000003, etc.).

    </div>

-   A section clearly marked **Internal Use Only**.

    On the right side of the Internal Use Only section, do the
    following:

    -   For a package that contains units all of the same SKU, indicate
        the quantity of units.
    -   For a package that contains units with different SKUs, indicate
        "Assorted SKUs".
    -   For a master carton (a box made to contain a certain number
        smaller boxes) that is not full, indicate "Partial case".

    On the left side of the **Internal Use Only** section, indicate any
    preparation that is required at the fulfillment center. For example,
    if you require labeling, indicate that as follows:

    **FC Prep Required - LABELING**

-   A section clearly marked **Seller Use Only**, below the **Internal
    Use Only** section (optional). Use this if you want to provide any
    seller-specific information.

-   An indication of whether the shipment contains media or non-media
    items. Provide this in the top right corner of the label by
    indicating "Media", "Non-Media", or leaving it blank. See the
    following descriptions:
    -   "Media" - Indicates that the shipment contains only Books,
        Music, Video, DVD (BMVD) items.
    -   "Non-media" - Indicates that the shipment contains only non-BMVD
        items.
    -   blank (no text) - Indicates that the shipment contains a
        combination of BMVD and non-BMVD items.

<div class="section">

## Shipping label example

<img src="ShippingLabel.png" class="image" alt="Shipping label" />

</div>

<div class="section">

## Shipping label print specifications

<div class="tablenoborder">

| Specification | Description                                                                                                                                                                 |
|---------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Label color   | White                                                                                                                                                                       |
| Font          | See the <a href="FBAGuide_LabelFontSpec.md" class="xref">Label font specifications</a>.                                                                                   |
| Label size    | Amazon recommends that you use a label with a height by width dimension of 4" x 6" (10.2 cm x 15.2 cm). However you can use a label size up to 6" x 8" (15.2 cm x 20.3 cm). |
| Label type    | Permanent adhesive                                                                                                                                                          |

</div>

</div>

<div class="section">

## Shipping label barcode specifications

<div class="tablenoborder">

| Specification                | Description                                              |
|------------------------------|----------------------------------------------------------|
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

**Parent topic:**
<a href="../fba_guide/FBAGuide_ShippingSpecs.md" class="link">Shipping Specifications</a>

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
