#Intro

How many of you use Node.js in some form? <feedback>. How many of you are sort of aware of how Node.js is a little different from what you are used to (.NET, Java, etc.)? <feedback>. Ok, for the rest of you that is what I am aiming to do here today. For those of you who understand the difference this might be a rehash.

So, I want to cover the following things
- What is Node.js?
- What makes Node.js different?
- Single threaded nature and the event loop
- Node.js as a backend for a frontend
- Building a simple API with Node.js and Express

What is Node.js?
Node.js is a server-side Javascript platform based on Google's V8 engine. This is the same engine that the Chrome browser runs on. However, this is only for the server-side. It is different from some traditional server-side technologies such as ASP.NET, Ruby on Rails, etc. I would like to talk about these differences to highlight Node's capabilities.

Javascript is a single-threaded runtime. Node.js leverages this single-threaded nature of Javascript. However, it is asynchronous. This is an important concept to understand before digging deeper into Node.js. What we mean by single-threaded, here is that Javascript, as a language does not allow you to spin up new threads or access the threadpool. However, the Javascript engine may decide to do this if necessary. Let's look at an example here.

setTimeout(function() {
	console.log('done');
}, 1000);

This probably looks very familiar to any Javascript frontend developer. What we are doing here is supplying 2 arguments to the setTimeout function. First is a callback function which will execute, and the second argument is how long to wait before firing the callback.

Javascipt engines have something called an event loop. We can probably visualize an event loop like so.

<image of an event loop>

The event loop is constantly spinning looking for events. In our example above, the event of the callback function that needs to fire when the set timeout expires. When this happens, an event is fired, upon which the Javascript engine will execute the callback function. This is a key concept in Node.js. This mechanism is what sets Node.js apart from a lot of other web servers and web frameworks. Now that we understand the difference between Node.js and its core concept, let's have a look at a more practical example. In the example below, we will spin up a web server which will serve requests at a certain url.

var http = require('http');
http.createServer(function(req, res) {
	res.writeHead(200, {'Content-Type', 'text/plain'});
	res.end('Hello World');
}).listen(1337);

Let's disect the code above to understand how the event loop works. We "required" the http module from Node. This is one of the built-in modules that allows us to interact with other servers with the HTTP protocol. Here, we create a server with the createServer function on the http module. This server is listening on the port 1337. Also, we are supplying the createServer a callback function. What happens here is that the callback function will execute when the server receives a request (first parameter in the callback function). The server will fire this callback function which will create the appropriate response.

Now, we understand how Node.js fires these callback functions, let's dive into why? Node.js is meant to be very efficient at I/O. Ryan Dahl, the creator of Node.js, designed Node to be able to never block. Most things we do in Node will not block and will be done in an asynchronous manner. The reason behind doing so is because blocking, or waiting for resources to be available can be very costly. This slide below is taken from the presentation where Ryan first introduced Node. This really highlights the costs of I/O and why Node was created.

Now, as you can see how slow the bottom 2 calls are compared to calls to CPU and RAM. Every time a user requests something off of the disk or a resource located on another server, the web server will wait to fetch the resource and bring everything to a halt. It has to wait because you are telling it to wait in order to retrieve what was requested! Now, what if we didn't wait and went about doing other things? We could be serving other requests, or performing some other operations on the disk, etc. When these operations complete, the callbacks are invoked and the correct response is sent. This way, it doesn't matter how fast or slow I/O is, it doesn't bring your webserver to a crawl! This is the reason why Node.js is very good at serving many concurrent requests.

Alright, quick show of hands. How many of you are building some kind of single page application? Ok, so you guys must be familiar with a backend of a frontend then? Alright! Since browsers are becoming so much more capable, we are able to just serve up the JSON data to the client and not concern ourselves with rendering on the server-side. Here we are concerned about
- Serving up JSON data
- Serving static files (HTML, CSS and Javascript)
- Calling other HTTP services
- Looking up things in a database
- Accessing the disk for other misc. things
 All these concerns are I/O concerns. Typically these backends will spend very little time actually processing anything, but rather access data and transform it per the client's needs. Which means, they will just sit and wait for things to be returned to them. This is where Node.js can play an important role. Not only that frontend developers get an already well understood language, but it is really tailored for this purpose as well!

Now, let's demonstrate this with a simple example. I will take a single page application built with angular and have it talk to a REST api built with Node.js. Even though I am using angular in this example, it really doesn't matter what the client is using, since we are only communicating over HTTP here.

	
