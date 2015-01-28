##ES6 Features (Con'd)
- Template Strings
- JavaScript
```
"my name is ${user.name}";
```
- CoffeeScript
```
"my name is #{user.name}"
```
- Default parameters
- Rest and Spread
    - JavaScript
    ```
    var f = (x, ...y) => {
        return x * y.length;
    }
    f(3, "hello", true);
    ```
    - CoffeeScript (Splats)
    ```
    f = (x..y) ->
        x * y.length
    f(2, "hello", true)
    ```
- Enhanced object literals (same in CoffeeScript)
```
var a = {name: name, city: city};
var b = {name, city};
```
