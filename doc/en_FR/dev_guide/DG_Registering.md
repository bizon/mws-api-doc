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

<div id="DG_Registering" class="nested0">

# Registering to use <span class="ph">Amazon MWS</span>

<div class="body">

<div class="section">

<span class="ph">Amazon Marketplace Web Service (Amazon MWS)</span> is a
secure environment that uses signatures for authentication and lets
sellers delegate calling rights to developers by using the
<span class="ph">Amazon MWS</span> authorization service. Before you can
develop <span class="ph">Amazon MWS</span> applications for yourself or
others you must register as a developer on the [User
Permissions](https://sellercentral.amazon.fr/gp/account-manager/home.html)
page in Seller Central. See [Registering as a
developer](#DG_Registering__MX_EU_IN_RegisteringAsADeveloper). To be
eligible to register for <span class="ph">Amazon MWS</span>, you must
have a Professional selling plan. For more information, see [Selling
plans](https://sellercentral-europe.amazon.com/gp/help/64491) in the
Seller Central Help.

</div>

<div id="DG_Registering__section_anv_gts_1fb" class="section">

<div class="note note">

<span class="notetitle">Note:</span> You **do not need** to register as
a developer to use <span class="ph">Amazon MWS</span> applications built
by other software
developers.

</div>

</div>

<div id="DG_Registering__MX_EU_IN_RegisteringAsADeveloper" class="section">

## Registering as a developer

Before you can develop <span class="ph">Amazon MWS</span> applications
for yourself or others you must register as a developer to get your
<span class="ph">Amazon MWS</span> Developer ID and Developer Keys.

<div class="note important">

<span class="importanttitle">Important:</span> **Do Not Share
<span class="ph">Amazon MWS</span> Developer Keys**

Sharing your <span class="ph">Amazon MWS</span> Developer Keys is a
violation of Amazon’s Terms of Service. **Sharing your Developer Keys
may result in suspension of your selling account and Developer Keys.**

</div>

**To register as a developer**

1.  Go to the [User
    Permissions](https://sellercentral.amazon.fr/gp/account-manager/home.html)
    page in Seller Central and log into your Amazon selling account as
    the primary user.

2.  Under <span class="keyword parmname">Amazon MWS Developer Access
    Keys</span> click the <span class="ph uicontrol">Visit Developer
    Credentials</span> button.
    
    The **Developer Central** page appears. Apply for access
here.

</div>

<div class="section">

## Using your <span class="ph">Amazon MWS</span> Developer ID and Access Keys

<div class="note important">

<span class="importanttitle">Important:</span> **Do Not Share
<span class="ph">Amazon MWS</span> Access Keys**

Sharing your <span class="ph">Amazon MWS</span> Access Keys is a
violation of Amazon’s Terms of Service. **Sharing your Access Keys may
result in suspension of your selling account and Access Keys.**

</div>

The following is an example of the <span class="ph">Amazon MWS</span>
Developer ID and Access Keys:

  - Developer ID (a 12-digit identifier): 1234-3214-4321
  - AWS Access Key ID (a 20-character, alphanumeric identifier):
    022QF0EXAMPLEH9DHM02
  - Secret Key (a 40-character identifier):
    kWcrlEXAMPLEM/LtmEENI/aVmYvHNif5zB+d9+ct

If you are developing an <span class="ph">Amazon MWS</span> application
for sellers or are providing <span class="ph">Amazon MWS</span>-related
development services to sellers, you must provide your Developer ID to
those sellers so that they can authorize you to access their Amazon
seller accounts using <span class="ph">Amazon MWS</span>. **Asking for a
seller's own <span class="ph">Amazon MWS</span> developer credentials is
a violation of Amazon Terms of Service.**

The AWS Access Key ID is associated with your <span class="ph">Amazon
MWS</span> registration. You include it in all <span class="ph">Amazon
MWS</span> requests to identify yourself as the sender of the request.
The AWS Access Key ID is not a secret. To provide proof that you truly
are the sender of the request, you must also include a digital
signature. For all requests except those generated using the
<span class="ph">Amazon MWS</span> client libraries, you calculate the
signature using your Secret Key. Amazon uses the AWS Access Key ID in
the request to look up your Secret Key and then calculates a digital
signature with the key. If the signature Amazon calculates matches the
signature you sent, the request is considered authentic. Otherwise, the
request fails authentication and is not processed.

<div class="note important">

<span class="importanttitle">Important:</span> Your Secret Key is a
secret that only you and Amazon should know. It is important to keep it
confidential to protect your account. **Never include your Secret Key in
your requests to <span class="ph">Amazon MWS</span> and never e-mail it
to anyone. Never share it with anyone, even if they claim to be from
Amazon. No one from Amazon will ever ask you for your Secret Key.**

</div>

</div>

<div id="DG_Registering__ResettingYourKeys" class="section">

## Resetting your AWS Access Key ID and Secret Key

If you need to change your AWS Access Key ID and Secret Key, contact
Seller Support in your home marketplace via chat, telephone, or
<span class="ph"> [Contact Amazon
MWS](https://sellercentral-europe.amazon.com/gp/mws/contactus.html)
</span> form and ask to reset your AWS Access Key ID and Secret Key. If
you use the form, provide the following information:

1.  For **Subject**, enter "Reset access keys to my Amazon MWS account".
2.  For **Your comment**, enter "Please reset the AWS Access Key ID and
    Secret Key for my account.".

You will receive a reply from the Seller Support team with a link to the
[User
Permissions](https://sellercentral.amazon.fr/gp/account-manager/home.html)
page on Seller Central, where you can generate a new key pair for your
account. Only administrators can use the link to create new keys.

<div class="note note">

<span class="notetitle">Note:</span> When Seller Support deletes your
key pair, all applications that use your current keys will be denied
access to your account information until you update those applications
with your new keys.

</div>

</div>

<div id="DG_Registering__AuthorizingADeveloper" class="section">

## Authorizing a developer

A seller must authorize a developer to make calls to
<span class="ph">Amazon MWS</span> on the seller's behalf.

**For a seller to authorize a developer**

1.  The developer must be a registered <span class="ph">Amazon
    MWS</span> developer. See [Registering as a
    developer](#DG_Registering__RegisteringAsADeveloper).
2.  The developer gives their Developer ID to the seller.
3.  The seller goes to the [Manage your
    apps](https://sellercentral.amazon.com/apps/manage) page in Seller
    Central and logs into their Amazon seller account as the primary
    account holder.
4.  The seller clicks the <span class="ph uicontrol">Authorize new
    developer</span> button and follows the authorization workflow.

</div>

<div class="section">

## Related topics

  - [Acceptable Use Policy](DG_AcceptableUsePolicy.md)
  - [Data Protection Policy](DG_DataProtectionPolicy.md)
  - [Frequently Asked Questions](../faq.md)

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
