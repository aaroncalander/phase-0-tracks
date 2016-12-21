What are some common HTTP status codes?

- 200 OK: the request succeeded

- 300 Multiple Choices: the requested resource has different choices and cannot be resolved into one

- 404 Not Found: requested resource wasn't found; could be from a typo or the resource is no longer on the web

- 403 Forbidden: access to the resource is forbidden; server understood request but is refusing to fulfill it due to possible file permissions

- 500 Internal Server Error: the server encountered an unexpected condition which prevented it from fulfilling the request

- 503 Service Unavailable: web server is unable to handle HTTP request at the time; could be from a crash, maintenance, server attack, etc.; usually a temporary condition

What is the difference between a GET request and a POST request? When might each be used?

GET - requests data from a specified source and the query string (name/value pairs) is sent in the URL; can be cached and bookmarked and is less secure

POST - submits data to be processed to a specified resource; the query string (name/value pairs) is sent in the HTTP message body; never cached and cannot be bookmarked and is more secure

GET is recommended for database queries only that include ASCII characters. POST is recommended if database updates or other actions are involved as well as data that includes non-ASCII characters.

What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?

- a cookie is usually a small text file that is stored on your computer's browser directory or program data subfolders.; they are created when you use your browser to visit a website and they can keep track of your movements within the site.

Two types of cookies:

- session cookies: created temporarily while visiting a website and are deleted when you leave the site

- persistent cookies: remain in your browser's subfolder and are activated again when you visit the website that created the particular cookie

- when receiving an HTTP request, a server can send a Set-Cookie header with the response. The cookie value is then sent along with every request made to the same server as the content of a Cookie HTTP header.