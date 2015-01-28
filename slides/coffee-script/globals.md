##Globals
- following is a global variable
```
var myVar = 'temp';
```
- IIFE to the rescue
```
(function(){
    var myVar = 'temp';
})()
```
- Every file needs to be wrapped
- CoffeeScript
```
myVar = 'temp'
```
- Every file is automatically wrapped in an IIFE
- Demo
