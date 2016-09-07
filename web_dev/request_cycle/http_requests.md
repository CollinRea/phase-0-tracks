### HTTP Status Codes

##### 1xx Codes are Informational and not always necessary.
###### 100 : Continue

This is an interim response to inform the client that the initial part of the request has been received and has not yet been rejected by the server. The client SHOULD continue by sending the remainder of the requests, or if the request has already been completed, ignore the response. 

##### 2xx Codes are Success messages
###### 200 : OK

The request was successful. Depending on the method used, the information returned by the response will vary ie: 
* GET an entity corresponding to the requested resource is sent in the response;
* POST an entity describing or containing the result of the action;
* HEAD the entity-header fields corresponding to the requested resource are sent in the response without any message-body;
* TRACE an entity containing the request message as received by the end server.

##### 3xx Codes are Redirection message, noting additional action needed.
###### 300 : Multiple Choices

Indicates multiple options for the resource from which the client may choose.

##### 4xx Codes are Client Errors
###### 400 : Bad Request**

The server cannot process the request due to an apparent client error such as:
* Incorrect request syntax
* Size is too large
* Invalid request message
* Deception request routing

###### 404 : Not Found**

The request resource could not be found but may be available in the future. 

##### 5xx Server Errors where the server failed to fulfill an apparently valid request
###### 500 : Internal Server Error**

Generic error message, given when an unexpected condition was encountered and no specific error message is suitable.


[Wikipedia page for additional details](https://en.wikipedia.org/wiki/List_of_HTTP_status_codes)

### HTTP Methods

**GET** -- Requests data from a specified resource
* GET requests can be cached
* GET requests remain in the browser history
* GET requests can be bookmarked
* GET requests should never be used when dealing with sensitive data
* GET requests have length restrictions
* GET requests should be used only to retrieve data

**POST** -- Submits data to be processed to a specified resource
* POST requests are never cached
* POST requests do not remain in the browser history
* POST requests cannot be bookmarked
* POST requests have no restrictions on data length


[Additional Methods and information](http://www.w3schools.com/tags/ref_httpmethods.asp)


### HTTP Cookies

A cookie is a small piece of data that a server sends to the client that may be stored by the browser and sent back together with the next request to the server. Typically, it is used to know if two requests came from the same browser allowing to keep a user logged-in. It remembers 'stateful' information for the 'stateless' HTTP protocol.

**Cookies are mainly used for these three purposes:**

* Session management (user logins, shopping carts)
* Personalization (user preferences)
* Tracking (analyzing user behavior)

[More information can be found here](https://developer.mozilla.org/en-US/docs/Web/HTTP/Cookies)



