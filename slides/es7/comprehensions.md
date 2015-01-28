##ES7 Features
- Array comprehensions (this may make it in ES6)
- Filter
    - JavaScript
    ```
    [ x for (x of a) if (x.color === ‘blue’) ]
    ```
    - CoffeeScript
    ```
    x for x in a when x.color === 'blue'
    ```
- Map
    - JavaScript
    ```
    [ square(x) for (x of [1,2,3,4,5]) ]
    ```
    - CoffeeScript
    ```
    square(x) for x in [1,2,3,4,5]
    ```
