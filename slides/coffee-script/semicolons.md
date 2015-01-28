##Semicolons
- [Guide](http://www.codecademy.com/blog/78-your-guide-to-semicolons-in-JavaScript).
- Optional (no, not really)
```
//Bad
function() {}
(window.options || {}).property
//Parsed as
function() {}(window.options || {}).property
```
- Visual noise
- Mechanical activity that slows down the developer
- CoffeeScript: no semicolons
- One statement per line
