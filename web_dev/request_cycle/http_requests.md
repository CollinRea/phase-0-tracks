### HTTP Status Codes

##### 100 : Continue

This is an interim response to inform the client that the initial part of the request has been received and has not yet been rejected by the server. The client SHOULD continue by sending the remainder of the requests, or if the request has already been completed, ignore the response. 

##### 200 : OK

The request was successful. Depending on the method used, the information returned by the response will vary ie: 
* GET an entity corresponding to the requested resource is sent in the response;
* HEAD the entity-header fields corresponding to the requested resource are sent in the response without any message-body;
* POST an entity describing or containing the result of the action;
* TRACE an entity containing the request message as received by the end server.



[Wikipedia page for additional details](https://en.wikipedia.org/wiki/List_of_HTTP_status_codes)