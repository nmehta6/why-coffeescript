##Single Page Apps and their backends
- SPAs are a great way to separate concerns
- They need backends that transform and serve data
- Backend of a SPA frontend typically needs to:
	- Serving up JSON data
	- Serving static files (HTML, CSS and Javascript)
	- Calling other HTTP services
	- Looking up things in a database
	- Accessing the disk for other misc. things
- Mostly I/O concerns
- Node can help with I/O and Javascript
- Added benefit of being able to use Javascript both client and server side


Note:
- Alright, quick show of hands. How many of you are building some kind of single page application?

- Ok, so you guys must be familiar with a backend of a frontend then? Alright!

- Since browsers are becoming so much more capable, we are able to just serve up the JSON data to the client and not concern ourselves with rendering on the server-side.

- Backend of a SPA frontend is specialized to do certain things. Lets look at some of these needs.

- All these concerns are I/O concerns. Typically these backends will spend very little time actually processing anything, but rather access data and transform it per the client's needs. Which means, they will just sit and wait for things to be returned to them. This is where Node.js can play an important role. Not only that frontend developers get an already well understood language, but it is really tailored for this purpose as well!
