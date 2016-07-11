Alex Renner
9.1 Release 0 - Try The Thing

Common HTTP Status Codes:

Well, hopefully 200 is the most common (meaning people are making working websites), but there is no guarantee there. 300 means there are multiple pages that fit the request and the browser doesn't know which one to pick. 301 referes to a site/page that has been moved to a new URI (which I found out means Uniform Resource Identifier). 302 means that the requested resource is temporarily in a different URI. 304 is a 'Not Modified' error when a requested resource does not contain a body message. 307 means the requested site resides under a temporary URI. 400 is a bad request error where the request could not be understood (often due to syntax). 401 is an unauthorized request. 403 is a forbidden server that you do not have access to. 404 means server not found. 410 means the request is no longer available at the address and no forwarding address is provided. 500 is an internal server error where the server encounters an issue. 501 means that requested functionality is not supported on the current server. 503 is an unavailable server that can't handle your request at that time. 550 is a permission denied error where the server denies your account permissions.

GET Request VS POST Request:

A GET request asks for data from a specified resource while a POST request submits data to be processed.  Some of the major differences between the two is that a GET request caches, remain in browser history and can be bookmarked while POST requests cannot. GET requests also have length restrictions and should not be used for sensitive data.

Explore what a cookie is and how it relates to HTTP requests:

A cookie is a small bit of information that is stored on a user's computer in order to remember stateful information and to record browsing history. They can also be used to record information like names and addresses entered into fields for submission.