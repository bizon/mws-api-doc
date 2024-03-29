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

<div id="Subscriptions_Overview" class="nested0">

# What you should know about the Amazon MWS Subscriptions API section

<div class="body">

<div class="section">

## Overview

The <span class="ph">Amazon MWS</span> <span class="ph">Subscriptions
API section</span> enables you to subscribe to receive notifications
that are relevant to your business with Amazon. With the operations in
the <span class="ph">Subscriptions API section</span>, you can register
to receive important information from Amazon without having to poll the
<span class="ph">Amazon MWS</span> service. Instead, the information is
sent directly to you when an event occurs to which you are subscribed.

To receive notifications, you must first create and register a <span
class="keyword parmname">Destination</span>, such as an Amazon Simple
Queue Service (Amazon SQS) queue. Then, you create a <span
class="keyword parmname">Subscription</span> for the <span
class="keyword parmname">NotificationType</span> that you want to
receive, such as a notification when another Seller has changed their
offer for an item that you also sell. Finally, verify that Amazon is
able to send notifications to your <span
class="keyword parmname">Destination</span> by calling the <span
class="keyword apiname">SendTestNotificationToDestination</span>
operation.

</div>

<div class="section">

## Terminology

The following table defines terminology for this API section:

</div>

<div class="tablenoborder">

| Term                                            | Description                                                                                                                                                                                                                                                                                                     |
|-------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| <span class="dfn term">Notification</span>      | A communication that contains information related to a specific state change or event that affects you. A <span class="dfn term">Notification</span> is also referred to as a <span class="dfn term">Message</span>.                                                                                            |
| <span class="dfn term">Notification Type</span> | A label that denotes a specific class of notifications. For example, <span class="keyword parmname">AnyOfferChanged</span> notifications.                                                                                                                                                                       |
| <span class="dfn term">Delivery Channel</span>  | A technology that you use to receive notifications. For example, Amazon SQS.                                                                                                                                                                                                                                    |
| <span class="dfn term">Destination</span>       | A delivery channel that you create to receive notifications. For example, an Amazon SQS queue with the URL "http://sqs.us-east-1.amazonaws.com/12345/queue1".                                                                                                                                                   |
| <span class="dfn term">Subscription</span>      | An object that represents the type of notification that you want to receive and the location where you want to receive it. For example, send <span class="keyword parmname">AnyOfferChanged</span> notifications for Seller A1234 to the Amazon SQS queue at "http://sqs.us-east-1.amazonaws.com/12345/queue1". |

</div>

<div id="Subscriptions_Overview__RecommendationsOperations"
class="section">

## The <span class="ph">Subscriptions API section</span> operations

The following operations are included in the <span
class="ph">Subscriptions API section</span>:

<div class="tablenoborder">

| Operation                                                                                                                                                                       | Description                                                                                       | Availability                                            |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------|---------------------------------------------------------|
| <a href="Subscriptions_RegisterDestination.md" class="xref" title="Specifies a new destination where you want to receive notifications.">RegisterDestination</a>              | <span class="ph">Specifies a new destination where you want to receive notifications.</span>      | <span class="ph">All marketplaces except Mexico.</span> |
| <a href="Subscriptions_DeregisterDestination.md" class="xref" title="Removes an existing destination from the list of registered destinations.">DeregisterDestination</a>     | <span class="ph">Removes an existing destination from the list of registered destinations.</span> | <span class="ph">All marketplaces except Mexico.</span> |
| <a href="Subscriptions_ListRegisteredDestinations.md" class="xref" title="Lists all current destinations that you have registered.">ListRegisteredDestinations</a>            | <span class="ph">Lists all current destinations that you have registered.</span>                  | <span class="ph">All marketplaces except Mexico.</span> |
| <a href="Subscriptions_SendTestNotificationToDestination.md" class="xref" title="Sends a test notification to an existing destination.">SendTestNotificationToDestination</a> | <span class="ph">Sends a test notification to an existing destination.</span>                     | <span class="ph">All marketplaces except Mexico.</span> |

<span class="tablecap">Table 1. Operations for Destinations</span>

</div>

<div class="tablenoborder">

| Operation                                                                                                                                                                   | Description                                                                                             | Availability                                            |
|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------|---------------------------------------------------------|
| <a href="Subscriptions_CreateSubscription.md" class="xref" title="Creates a new subscription for the specified notification type and destination.">CreateSubscription</a> | <span class="ph">Creates a new subscription for the specified notification type and destination.</span> | <span class="ph">All marketplaces except Mexico.</span> |
| <a href="Subscriptions_GetSubscription.md" class="xref" title="Gets the subscription for the specified notification type and destination.">GetSubscription</a>            | <span class="ph">Gets the subscription for the specified notification type and destination.</span>      | <span class="ph">All marketplaces except Mexico.</span> |
| <a href="Subscriptions_DeleteSubscription.md" class="xref" title="Deletes the subscription for the specified notification type and destination.">DeleteSubscription</a>   | <span class="ph">Deletes the subscription for the specified notification type and destination.</span>   | <span class="ph">All marketplaces except Mexico.</span> |
| <a href="Subscriptions_ListSubscriptions.md" class="xref" title="Returns a list of all your current subscriptions.">ListSubscriptions</a>                                 | <span class="ph">Returns a list of all your current subscriptions.</span>                               | <span class="ph">All marketplaces except Mexico.</span> |
| <a href="Subscriptions_UpdateSubscription.md" class="xref" title="Updates the subscription for the specified notification type and destination.">UpdateSubscription</a>   | <span class="ph">Updates the subscription for the specified notification type and destination.</span>   | <span class="ph">All marketplaces except Mexico.</span> |

<span class="tablecap">Table 2. Operations for Subscriptions</span>

</div>

</div>

</div>

<div class="related-links">

## In this section

-   **[Receiving
    notifications](../subscriptions/Subscriptions_ReceivingNotifications.md)**  
    Describes how to set up a <span
    class="keyword parmname">Destination</span> to receive
    notifications.
-   **[Processing
    notifications](../subscriptions/Subscriptions_ProcessingNotifications.md)**  
    Describes how to process a notification that you have received.

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
