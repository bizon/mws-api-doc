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

# Item label specifications

<div class="body conbody">

When labeling your items, follow these guidelines to ensure that your
items can be processed in a timely manner after they reach the
fulfillment center:

-   **Cover all existing barcodes.** Unless you are sending stickerless,
    commingled inventory, be sure to cover the existing barcodes on each
    item.
-   **Use the proper print media for your printer.** Each label must be
    readable and scannable for at least 24 months. This means that the
    label must not smudge or fade over that period of time. Using laser
    paper and laser toner with a laser printer, for example, can help
    keep labels readable and scannable.

<div class="section">

## Item label example

<img src="ItemLabel.png" class="image" alt="Item label" />

The label that you place on each item must include the following
information:

1.  Barcode, with appropriate quiet zone areas (the clear area
    surrounding a bar code).
2.  String identifier for the barcode.
3.  Title and description.
4.  Condition (for example, **USED**).

<div class="note note">

<span class="notetitle">Note:</span> You can include optional,
seller-specified information at the bottom of the item label. This area
is reserved for text only. Do not use any additional barcodes. Any
information that you provide in addition to the label information listed
here could have a negative impact on the accuracy and speed of inventory
tracking.

</div>

</div>

<div class="section">

## Print specifications

<div class="tablenoborder">

| Specification | Description                                                                                                                                                                                                                                                             |
|---------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Label color   | White                                                                                                                                                                                                                                                                   |
| Font          | See <a href="FBAGuide_LabelFontSpec.md" class="xref">Label font specifications</a>.                                                                                                                                                                                   |
| Label size    | Use a label with a height by width dimension from 1" x 2" (2.5 cm x 5.0 cm) up to 2" x 3" (5.1 cm x 7.6 cm). For example, you could use a label that is 1" x 3" (2.5 cm x 7.6 cm) or 2" x 2" (5.1 cm x 5.1 cm), as long as all of the required information is included. |
| Label type    | Removable adhesive.                                                                                                                                                                                                                                                     |

</div>

</div>

<div class="section">

## Barcode specifications

<div class="tablenoborder">

<table id="FBAGuide_ItemLabelSpec__BarcodeSpecificationsTable" class="table" data-cellpadding="4" data-cellspacing="0" data-summary="" data-frame="border" data-border="1" data-rules="all">
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead class="thead" data-align="left">
<tr class="header row">
<th id="d25925e186" class="entry" data-valign="top" width="34.843205574912886%">Specification</th>
<th id="d25925e189" class="entry" data-valign="top" width="65.1567944250871%">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry" data-valign="top" width="34.843205574912886%" headers="d25925e186 ">Format</td>
<td class="entry" data-valign="top" width="65.1567944250871%" headers="d25925e189 ">Code 128A</td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.843205574912886%" headers="d25925e186 ">Height</td>
<td class="entry" data-valign="top" width="65.1567944250871%" headers="d25925e189 ">Greater than 0.25" (6.3 mm), or 15% of the barcode length.</td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.843205574912886%" headers="d25925e186 ">Narrow barcode element</td>
<td class="entry" data-valign="top" width="65.1567944250871%" headers="d25925e189 ">The specification depends on your printer's resolution.
<ul>
<li><strong>For 300 dpi:</strong> 13.33 mils (.3386 mm)</li>
<li><strong>For 200 dpi:</strong> 20 mils (.508 mm)</li>
</ul></td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.843205574912886%" headers="d25925e186 ">Wide-to-narrow element ratio</td>
<td class="entry" data-valign="top" width="65.1567944250871%" headers="d25925e189 ">3:1</td>
</tr>
<tr class="odd row">
<td class="entry" data-valign="top" width="34.843205574912886%" headers="d25925e186 ">Quiet zone (sides)</td>
<td class="entry" data-valign="top" width="65.1567944250871%" headers="d25925e189 ">Greater than 0.25" (6.4 mm)</td>
</tr>
<tr class="even row">
<td class="entry" data-valign="top" width="34.843205574912886%" headers="d25925e186 ">Quiet zone (top and bottom)</td>
<td class="entry" data-valign="top" width="65.1567944250871%" headers="d25925e189 ">Greater than 0.125" (3.2 mm)</td>
</tr>
</tbody>
</table>

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
