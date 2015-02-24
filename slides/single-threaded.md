##Single threaded and Javascript

- Javascript is a single-threaded runtime.
- Example:

	```Javascript
	setTimeout(function() {
		console.log('done');
	}, 1000);
	```
- Callbacks
- Live demo of an http server

Note:
- This is an important concept to understand before digging deeper into Node.js

- Lets look at how all of this is possible with Javascript. Node.js leverages this single-threaded nature of Javascript.

- What we mean by that is that there is no concept of threads in Javascript. However, the language allows for asynchronous programming.

Let's look at an example:
- How many of you have done something like this? <feedback>.
If you understand the concept of a callback function, Node.js is all about callbacks.

- Let's create a simple http server and fire it up!

http.createServer(function(req, res){
	res.WriteHead(200, {'Content-Type': 'plain/text'});
	res.end('Hello World');
}).listen(1337);
