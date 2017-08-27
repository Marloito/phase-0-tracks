# Common HTTP Status Codes
* 404 - Not Found. (resource being requested IS NOT available)
* 403 - Forbidden. (access to resource being requested is forbidden/not an authentication issue)
* 500 - Internal Server Error. (server-side error code/something is wrong)
* 503 - Service Unavailable. (web server you are requesting resource from is unavailable)
* 504 - Gateway Timeout. (if proxy server needs to contact another server and takes too long, access to the secondary server times out)

# GET vs POST requests
1. GET requests information 
* information is visible in URL
* these requests can be cached and bookmarked
* these requests have length restritions
* these should be used to RETRIEVE information

2. POST sends information to be processed
* information is visible in the message body not the URL
* these requests can NOT be cached or bookmarked
* these requests do NOT have length restrictions

# Cookies
* text file sent from server to browser after request is made from browser
* browser saves onto user's machine
* allows servers to identify users since HTTP protocols are stateless
* file contains intrsuctions to let server know which computer is re-accessing it 