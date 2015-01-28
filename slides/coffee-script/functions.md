##Functions
- Two types of functions in CoffeeScript
- Slim Arrow. Simplifies function creation
```
a = (param1, param2) -> doSomething()
```
- Thinking in a functional manner is simpler
```
_([0..10])
    .filter(x -> x < 5)
    .map(x -> x * 2)
```
- Javascript is cumbersome
```
_([0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]).filter(x(function() {
    return x < 5;
})).map(x(function() {
    return x * 2;
}));
```

- Far Arrow. binds this to the correct scope.
```
class myClass
    constructor: ->
        @a = 3
        fun = =>
            @a = 4
```
