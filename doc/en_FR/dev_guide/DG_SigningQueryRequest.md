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

# Signing a Query Request

<div class="body">

The request signature is part of the authentication process for
identifying and verifying who is sending a request. It is used as the
value for the Signature parameter in the request URL you construct.
<span class="ph">Amazon MWS</span> verifies both the identity of the
sender and whether the sender is registered to use
<span class="ph">Amazon MWS</span>. Authentication is performed using
your access key Id to locate your Secret Key, which you use to create
the request signature. If verification fails, the request is not
processed. Note that if you are using one of the <span class="ph">Amazon
MWS</span> client libraries to submit requests, you do not need to
calculate your signature or time stamp.

1.  Create a query request as described in [Creating a Canonicalized
    Query String](DG_QueryString.md). The following is an example of a
    query request:
    
    ``` pre codeblock
    POST
    mws.amazonservices.com 
    /Feeds/2009-01-01
    AWSAccessKeyId=0PExampleR2&Action=SubmitFeed&FeedType=_POST_INVENTORY_AVAIL
    ABILITY_DATA_&MWSAuthToken=amzn.mws.4ea38b7b-f563-7709-4bae-87aeaEXAMPLE&Ma
    rketplace=ATExampleER&SellerId=A1ExampleE6&SignatureMethod=HmacSHA256&Signa
    tureVersion=2&Timestamp=2009-08-20T01%3A10%3A27.607Z&Version=2009-01-01
    ```

2.  Calculate an RFC 2104-compliant HMAC with the string you just
    created, using your Secret Key as the key. Both HmacSHA256 and
    HmacSHA1 are supported hash algorithms, but Amazon recommends using
    HmacSHA256.
    
    <div class="note note">
    
    <span class="notetitle">Note:</span> Standard port numbers should
    not be included in the query request string used to calculate the
    signature. See the [Signature Version 2 Signing
    Process](http://docs.aws.amazon.com/general/latest/gr/signature-version-2.md)
    for further information.
    
    </div>

3.  Convert the resulting value to base64.

4.  Use the resulting value as the value of the Signature request
    parameter.

The following example shows how to calculate the signature using Java:

<span class="ph expander"> <span class="keyword parmname xshow">Show
example code</span> <span class="keyword parmname xhide">Hide example
code</span> </span>

<div class="section">

<div class="sectiondiv content">

``` pre codeblock
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URLEncoder;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.SignatureException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.TreeMap;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import org.apache.commons.codec.binary.Base64;

public class SignatureExample {
    private static final String CHARACTER_ENCODING = "UTF-8";
    final static String ALGORITHM = "HmacSHA256";

    public static void main(String[] args) throws Exception {
        // Change this secret key to yours
        String secretKey = "Your secret key";

        // Use the endpoint for your marketplace
        String serviceUrl = "https://mws.amazonservices.com/";

        // Create set of parameters needed and store in a map
        HashMap<String, String> parameters = new HashMap<String,String>();

        // Add required parameters. Change these as needed.
        parameters.put("AWSAccessKeyId", urlEncode("Your Access Key Id"));
        parameters.put("Action", urlEncode("GetFeedSubmissionList"));
        parameters.put("MWSAuthToken", urlEncode("Your MWS Auth Token"));
        parameters.put("SellerId", urlEncode("Your Seller Id"));
        parameters.put("SignatureMethod", urlEncode(ALGORITHM));
        parameters.put("SignatureVersion", urlEncode("2"));
        parameters.put("SubmittedFromDate",
          urlEncode("2013-05-01T12:00:00Z"));
        parameters.put("Timestamp", urlEncode("2013-05-02T16:00:00Z"));
        parameters.put("Version", urlEncode("2009-01-01"));

        // Format the parameters as they will appear in final format
        // (without the signature parameter)
        String formattedParameters = calculateStringToSignV2(parameters,
            serviceUrl);

        String signature = sign(formattedParameters, secretKey);

        // Add signature to the parameters and display final results
        parameters.put("Signature", urlEncode(signature));
        System.out.println(calculateStringToSignV2(parameters,
            serviceUrl));
    }

    /* If Signature Version is 2, string to sign is based on following:
    *
    *    1. The HTTP Request Method followed by an ASCII newline (%0A)
    *
    *    2. The HTTP Host header in the form of lowercase host,
    *       followed by an ASCII newline.
    *
    *    3. The URL encoded HTTP absolute path component of the URI
    *       (up to but not including the query string parameters);
    *       if this is empty use a forward '/'. This parameter is followed
    *       by an ASCII newline.
    *
    *    4. The concatenation of all query string components (names and
    *       values) as UTF-8 characters which are URL encoded as per RFC
    *       3986 (hex characters MUST be uppercase), sorted using
    *       lexicographic byte ordering. Parameter names are separated from
    *       their values by the '=' character (ASCII character 61), even if
    *       the value is empty. Pairs of parameter and values are separated
    *       by the '&' character (ASCII code 38).
    *
    */
    private static String calculateStringToSignV2(
        Map<String, String> parameters, String serviceUrl)
            throws SignatureException, URISyntaxException {
        // Sort the parameters alphabetically by storing
        // in TreeMap structure
        Map<String, String> sorted = new TreeMap<String, String>();
        sorted.putAll(parameters);

        // Set endpoint value
        URI endpoint = new URI(serviceUrl.toLowerCase());

        // Create flattened (String) representation
        StringBuilder data = new StringBuilder();
        data.append("POST\n");
        data.append(endpoint.getHost());
        data.append("\n/");
        data.append("\n");

        Iterator<Entry<String, String>> pairs =
          sorted.entrySet().iterator();
        while (pairs.hasNext()) {
            Map.Entry<String, String> pair = pairs.next();
            if (pair.getValue() != null) {
                data.append( pair.getKey() + "=" + pair.getValue());
            }
            else {
                data.append( pair.getKey() + "=");
            }

            // Delimit parameters with ampersand (&)
            if (pairs.hasNext()) {
                data.append( "&");
            }
        }

        return data.toString();
    }

    /*
     * Sign the text with the given secret key and convert to base64
     */
    private static String sign(String data, String secretKey)
            throws NoSuchAlgorithmException, InvalidKeyException,
                   IllegalStateException, UnsupportedEncodingException {
        Mac mac = Mac.getInstance(ALGORITHM);
        mac.init(new SecretKeySpec(secretKey.getBytes(CHARACTER_ENCODING),
            ALGORITHM));
        byte[] signature = mac.doFinal(data.getBytes(CHARACTER_ENCODING));
        String signatureBase64 = new String(Base64.encodeBase64(signature),
            CHARACTER_ENCODING);
        return new String(signatureBase64);
    }

    private static String urlEncode(String rawValue) {
        String value = (rawValue == null) ? "" : rawValue;
        String encoded = null;

        try {
            encoded = URLEncoder.encode(value, CHARACTER_ENCODING)
                .replace("+", "%20")
                .replace("*", "%2A")
                .replace("%7E","~");
        } catch (UnsupportedEncodingException e) {
            System.err.println("Unknown encoding: " + CHARACTER_ENCODING);
            e.printStackTrace();
        }

        return encoded;
    }
  }
```

[↑ Top](#DG_ClientLibraries__Signatures)

</div>

</div>

</div>

<div id="RelatedTopics" class="topic nested1">

## Related topics

<div class="body">

[Using the Amazon MWS client libraries](DG_ClientLibraries.md)

[Creating a Canonicalized Query String](DG_QueryString.md)

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
