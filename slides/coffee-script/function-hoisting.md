##Function Hoisting
- Named functions are hoisted
- Can create side-effects
```
if (true) {
    function declaration() {
        return "first";
    }
} else {
    function declaration() {
        return "second";
    }
}
```
- Firefox will return "first", Chrome will return "second"
- Stop using named functions
- CoffeeScript disallows named functions
```
if true
    declaration = -> 'first'
else
    declaration = -> 'second'
```
