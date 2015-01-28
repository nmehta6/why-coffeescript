##Hoisting
- Variables are hoisted up to the top of the closure

```
console.log(typeof index !== "undefined");
var myFunc = function() {

}
var index = 1;

```
- Always a good practice to make this explicit

```
var index;
console.log(typeof index !== "undefined");
var myFunc = function() {

}
index = 1;

```

- CoffeeScript saves you the trouble of declarations

```
var myFunc = ->
index = 1
```
