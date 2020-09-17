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

Using multiple marketplaces
===========================

<div class="body conbody">

If you are registered in multiple marketplaces, then you have multiple
<span class="keyword parmname">MarketplaceId</span> values associated
with your <span class="keyword parmname">SellerId</span>. These multiple
<span class="keyword parmname">MarketplaceId</span> values can be, for
example, an Amazon seller account or a <span class="ph">Checkout by
Amazon</span> account, where those services are available. You can
submit a feed that is applied to one or several <span
class="keyword parmname">MarketplaceId</span> values. If you are in the
Europe (EU) or North America (NA) region, you can submit feeds to
support multiple marketplaces if you have registered using a single,
unified seller account.

If you sell in multiple marketplaces, you can manage your inventory
levels using the same SKUs across multiple marketplaces. This eliminates
the need for you to manually keep inventory levels across several
marketplaces in sync. For more information on selling in multiple
marketplaces, see
<a href="https://sellercentral-europe.amazon.com/gp/help/200671260" class="xref">Selling on Amazon's European Marketplaces</a>.

For backwards compatibility, if no marketplace is specified the feed is
applied to all marketplaces that share the same default country code.

<div class="note note">

<span class="notetitle">Note:</span> You can use the <span
class="ph">Amazon MWS</span> <span class="ph">Sellers API section</span>
to determine what <span class="keyword parmname">MarketplaceId</span>
values are associated with your <span
class="keyword parmname">SellerId</span>.

</div>

<div class="section">

Understanding how <span class="keyword parmname">MarketplaceId</span> values are used
-------------------------------------------------------------------------------------

You specify what marketplaces you want a feed to be applied to by
supplying a list of <span class="keyword parmname">MarketplaceId</span>
values to the optional <span
class="keyword parmname">MarketplaceIdList</span> parameter when you
call the <span class="keyword apiname">SubmitFeed</span> operation. For
example, an EU multiple-marketplace seller could specify that a feed be
applied to both their FR and DE marketplaces by specifying the <span
class="keyword parmname">MarketplaceIdList</span> parameter as follows:

    &MarketplaceIdList.Id.1=A13V1IB3VIYZZH
    &MarketplaceIdList.Id.2=A1PA6795UKMFR9

Do not confuse the optional <span
class="keyword parmname">MarketplaceIdList</span> parameter with the
<span class="keyword parmname">Marketplace</span> parameter in a
request. The <span class="keyword parmname">Marketplace</span> parameter
is no longer used for authentication and is deprecated.

For EU and NA sellers, you do not need to use a specific country
endpoint, such as https://mws.amazonservices.de, to indicate what
marketplace a feed is to be applied to. You can apply changes to a given
EU or NA marketplace by specifying that <span
class="keyword parmname">MarketplaceId</span> when submitting a feed.
For a list of <span class="keyword parmname">MarketplaceId</span>
values, see
<a href="../dev_guide/DG_Endpoints.md" class="xref">Amazon MWS endpoints and MarketplaceId values</a>.
You can also specify a <span class="ph">Checkout by Amazon</span> <span
class="keyword parmname">MarketplaceId</span> value.

</div>

<div class="section">

Behavior of Feeds When Submitting Multiple <span class="keyword parmname">MarketplaceId</span> values
-----------------------------------------------------------------------------------------------------

<div class="p">

If you include multiple <span
class="keyword parmname">MarketplaceId</span> values when submitting a
feed request, feeds processing has a more complex behavior. The
following are some general rules when submitting a feed request with
multiple <span class="keyword parmname">MarketplaceId</span> values:

-   Flat file feeds can only be applied to a single country. For
    example, a flat file feed submission would not be accepted if the
    <span class="keyword parmname">MarketplaceId</span> values were for
    a DE seller account and an FR seller account.
-   Feed behavior can vary, depending on the <span
    class="keyword apiname">FeedType</span> and <span
    class="keyword parmname">MarketplaceId</span> values submitted. See
    the table below for information on how a particular <span
    class="keyword apiname">FeedType</span> behaves when submitted with
    multiple <span class="keyword parmname">MarketplaceId</span> values.
-   If more than one <span class="keyword parmname">MarketplaceId</span>
    value is submitted and one or more of those <span
    class="keyword parmname">MarketplaceId</span> values fail validation
    for whatever reason (currency mismatch, language mismatch, country
    mismatch, one blocked and the other valid), then <span
    class="ph">Amazon MWS</span> returns an error and the submission
    fails.
-   Note that <span class="ph">Amazon MWS</span> validates a feed
    submission before it can be queued for processing. A feed submission
    passes validation when it contains appropriate <span
    class="keyword parmname">MarketplaceId</span> values for the <span
    class="keyword apiname">FeedType</span> submitted. Passing
    validation does not mean that the feed is correctly formatted or
    that it will process successfully.
-   When <span class="keyword apiname">SubmitFeed</span> is submitted
    with <span class="keyword parmname">PurgeAndReplace</span> set to
    `true`, the purge will be applied to all EU or NA marketplaces
    specified by the EU or NA seller. When no EU or NA marketplace is
    specified, then for backwards compatibility all marketplaces within
    a country will be updated.

</div>

</div>

<div class="section">

Behavior of XML Product Feeds and XML Relationship Feeds when used with multiple <span class="keyword parmname">MarketplaceId</span> values
-------------------------------------------------------------------------------------------------------------------------------------------

An XML Product Feed or XML Relationship Feed submission that specifies a
list of <span class="keyword parmname">MarketplaceId</span> values must
specify marketplaces that all share the **same language code** or the
feed is rejected at submission time. If no <span
class="keyword parmname">MarketplaceId</span> values are specified, the
feed is applied to all marketplaces that the seller is registered in and
that share the same language code as the seller's default marketplace.
An FBA <span class="keyword parmname">MarketplaceId</span> is not a
valid <span class="keyword parmname">MarketplaceId</span> for this type
of feed. This behavior applies to the following feeds:

-   <span class="keyword parmname">Product Feed</span>
    (`_POST_PRODUCT_DATA_`)
-   <span class="keyword parmname">Relationships Feed</span>
    (`_POST_PRODUCT_RELATIONSHIP_DATA_`)

</div>

<div class="section">

Behavior of XML Inventory Feeds when used with multiple <span class="keyword parmname">MarketplaceId</span> values
------------------------------------------------------------------------------------------------------------------

In EU (for all sellers) and in NA (for <span
class="ph">self-fulfilled</span> sellers only), quantity is a global
value in relationship with a SKU, so changes to stock levels are
reflected in all marketplaces in which the SKU is active. If multiple
XML Inventory Feeds are processed for the same SKU in different
marketplaces, then the quantity of the last uploaded XML Inventory Feed
from the seller reflects the global inventory level. Setting the item
inventory level to 0 effectively sets the item quantity to 0 in all
marketplaces and makes the item non-buyable. All listing information is
still maintained in the system. An FBA <span
class="keyword parmname">MarketplaceId</span> is not a valid <span
class="keyword parmname">MarketplaceId</span> for this type of feed.
This behavior applies to the following feed:

-   <span class="keyword parmname">Inventory Feed</span>
    (`_POST_INVENTORY_AVAILABILITY_DATA_`)

</div>

<div class="section">

Behavior of XML Overrides Feeds when used with multiple <span class="keyword parmname">MarketplaceId</span> values
------------------------------------------------------------------------------------------------------------------

Only a single marketplace can be specified for XML Overrides Feeds. An
FBA <span class="keyword parmname">MarketplaceId</span> is not a valid
<span class="keyword parmname">MarketplaceId</span> for this type of
feed. This behavior applies to the following feed:

-   <span class="keyword parmname">Overrides Feed</span>
    (`_POST_PRODUCT_OVERRIDES_DATA_`)

</div>

<div class="section">

Behavior of XML Pricing Feeds when used with multiple <span class="keyword parmname">MarketplaceId</span> values
----------------------------------------------------------------------------------------------------------------

An XML Pricing Feed submission that specifies a list of <span
class="keyword parmname">MarketplaceId</span> values must specify <span
class="keyword parmname">MarketplaceId</span> values that all share the
**same currency code** or the feed is rejected at submission time. If no
<span class="keyword parmname">MarketplaceId</span> values are
specified, the feed is applied to all marketplaces that the seller is
registered in that share the same currency code as the seller's default
marketplace. An FBA <span class="keyword parmname">MarketplaceId</span>
is not a valid <span class="keyword parmname">MarketplaceId</span> for
this type of feed. This behavior applies to the following feed:

-   <span class="keyword parmname">Pricing Feed</span>
    (`_POST_PRODUCT_PRICING_DATA_`)

</div>

<div class="section">

Behavior of XML Product Image Feeds when used with multiple <span class="keyword parmname">MarketplaceId</span> values
----------------------------------------------------------------------------------------------------------------------

XML Product Image Feeds map images to ASINs in the provided
marketplaces. If no <span class="keyword parmname">MarketplaceId</span>
values are specified, the feed is applied to all marketplaces that the
seller is registered in and that are in the same country as the seller's
original marketplace registration. This behavior applies to the
following feed:

-   <span class="keyword parmname">Product Images Feed</span>
    (`_POST_PRODUCT_IMAGE_DATA_`)

</div>

<div class="section">

Behavior of Flat File Product and Inventory Feeds when used with multiple <span class="keyword parmname">MarketplaceId</span> values
------------------------------------------------------------------------------------------------------------------------------------

Flat File Product and Inventory Feeds can only be applied to one
country, though they can apply to multiple marketplaces in that country,
such as an Amazon seller <span
class="keyword parmname">MarketplaceId</span> and a <span
class="ph">Checkout by Amazon</span> <span
class="keyword parmname">MarketplaceId</span>. However, in EU (for all
sellers) and in NA (for <span class="ph">self-fulfilled</span> sellers
only), quantity is a global value in relationship with a SKU, so changes
to stock levels are reflected in all marketplaces that the SKU is active
in. If multiple inventory feeds are processed for the same SKU in
different marketplaces, then the quantity of the last uploaded inventory
feed from the seller reflects the global inventory level. Setting the
item inventory level to 0 effectively sets the item quantity to 0 in all
marketplaces and makes the item non-buyable. All listing information is
still maintained in the system. An FBA <span
class="keyword parmname">MarketplaceId</span> is not a valid <span
class="keyword parmname">MarketplaceId</span> for this type of feed.
This behavior applies to the following feeds:

-   <span class="keyword parmname">Flat File Inventory Loader
    Feed</span> (`_POST_FLAT_FILE_INVLOADER_DATA_`)
-   <span class="keyword parmname">Flat File Listings Feed</span>
    (`_POST_FLAT_FILE_LISTINGS_DATA_`)
-   <span class="keyword parmname">Flat File Book Loader Feed</span>
    (`_POST_FLAT_FILE_BOOKLOADER_DATA_`)
-   <span class="keyword parmname">Flat File Music Loader Feed</span>
    (`_POST_FLAT_FILE_CONVERGENCE_LISTINGS_DATA_`)
-   <span class="keyword parmname">Flat File Video Loader Feed</span>
    (`_POST_FLAT_FILE_LISTINGS_DATA_`)
-   <span class="keyword parmname">Flat File Price and Quantity Update
    Feed</span> (`_POST_FLAT_FILE_PRICEANDQUANTITYONLY_UPDATE_DATA_`)
-   <span class="keyword parmname">UIEE Inventory Feed</span>
    (`_POST_UIEE_BOOKLOADER_DATA_`)

</div>

<div class="section">

Behavior of Order Feeds when used with multiple <span class="keyword parmname">MarketplaceId</span> values
----------------------------------------------------------------------------------------------------------

All Order Feeds refer to an Amazon order ID, which is a globally unique
identifier. Therefore, Order Feeds are not marketplace-specific. This
behavior applies to the following feeds:

-   <span class="keyword parmname">Order Acknowledgement Feed</span>
    (`_POST_ORDER_ACKNOWLEDGEMENT_DATA_`)
-   <span class="keyword parmname">Order Adjustments Feed</span>
    (`_POST_PAYMENT_ADJUSTMENT_DATA_`)
-   <span class="keyword parmname">Order Fulfillment Feed</span>
    (`_POST_ORDER_FULFILLMENT_DATA_`)
-   <span class="keyword parmname">Flat File Order Acknowledgement
    Feed</span> (`_POST_FLAT_FILE_ORDER_ACKNOWLEDGEMENT_DATA_`)
-   <span class="keyword parmname">Flat File Order Adjustments
    Feed</span> (`_POST_FLAT_FILE_PAYMENT_ADJUSTMENT_DATA_`)
-   <span class="keyword parmname">Flat File Order Fulfillment
    Feed</span> (`_POST_FLAT_FILE_FULFILLMENT_DATA_`)

</div>

<div class="section">

Behavior of XML FBA Fulfillment Order Feeds when used with multiple <span class="keyword parmname">MarketplaceId</span> values
------------------------------------------------------------------------------------------------------------------------------

All XML FBA Fulfillment Order Feeds can only be applied to **one
country**, though they can apply to multiple marketplaces in that
country, such as an Amazon seller <span
class="keyword parmname">MarketplaceId</span> and a <span
class="ph">Checkout by Amazon</span> <span
class="keyword parmname">MarketplaceId</span>. An FBA <span
class="keyword parmname">MarketplaceId</span> is not a valid <span
class="keyword parmname">MarketplaceId</span> for this type of feed.
This behavior applies to the following feeds:

-   <span class="keyword parmname">FBA Fulfillment Order Feed</span>
    (`_POST_FULFILLMENT_ORDER_REQUEST_DATA_`)
-   <span class="keyword parmname">FBA Fulfillment Order Cancellation
    Feed</span> (`_POST_FULFILLMENT_ORDER_CANCELLATION_REQUEST_DATA_`)

</div>

<div class="section">

Error messages when submitting multiple <span class="keyword parmname">MarketplaceId</span> values
--------------------------------------------------------------------------------------------------

There are several error messages that can be sent when submitting
requests with multiple <span
class="keyword parmname">MarketplaceId</span> values:

<div class="p">

<div class="tablenoborder">

| Error Message                                                                                                                                                                                                                                                                 | Description                                                                                                                                                                                                                                                                                      |
|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| All provided marketplaces for this feed type must have the same default language code. \[ABCD\], \[EFGH\] have different default language codes.                                                                                                                              | Some feeds, such as the \_POST\_PRODUCT\_DATA\_ feed, can only be applied to marketplaces that share the same language. The specified <span class="keyword parmname">MarketplaceId</span> values do not share the same language.                                                                 |
| All provided marketplaces for this feed type must have the same default currency code. \[ABCD\], \[EFGH\] have different default currency codes.                                                                                                                              | Some feeds, especially those that deal with pricing such as the \_POST\_PRODUCT\_PRICING\_DATA\_ feed, can only be applied to marketplaces that share the same currency. The specified <span class="keyword parmname">MarketplaceId</span> values do not share the same currency.                |
| All provided marketplaces for this feed type must be based in the same country. \[ABCD\], \[EFGH\] have different default country codes.                                                                                                                                      | Flat-file feeds can only be applied to <span class="keyword parmname">MarketplaceId</span> values that are registered in the same country. The specified <span class="keyword parmname">MarketplaceId</span> values do not share the same default country.                                       |
| The provided marketplaces are correctly associated with your account, but you are prevented from performing this action in the following marketplaces: \[ABCD\], \[ABCD\]. Please contact Seller Support in your default marketplace for more information about your account. | There is some issue with your account and the <span class="keyword parmname">MarketplaceId</span> you specified. You can get this error message for several reasons, including not completing a marketplace registration. Contact Seller Support in your home marketplace to clear up the issue. |
| One or more of the provided marketplaces is an FBA marketplace and cannot be used for this feed/report type: \[ABCD\], \[ABCD\].                                                                                                                                              | An FBA <span class="keyword parmname">MarketplaceId</span> is not a valid <span class="keyword parmname">MarketplaceId</span> for this type of feed.                                                                                                                                             |
| Your feed could not be applied to any marketplaces.                                                                                                                                                                                                                           | Since you did not provide a <span class="keyword parmname">MarketplaceId</span>, <span class="ph">Amazon MWS</span> attempted to determine an appropriate marketplace to use. It was unable to find a marketplace associated with your account that could be used to fulfill your request.       |

</div>

</div>

</div>

</div>

<div class="related-links">

<div class="familylinks">

<div class="parentlink">

**Parent topic:**
<a href="../feeds/Feeds_Overview.md" class="link">What you should know about the Amazon MWS Feeds API section</a>

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
