##ES6 Features
- Classes
    - CoffeeScript
    ```
    class View
        constructor: (options) ->
            @model = options.model
            @template = options.template
    ```
    - JavaScript
    ```
    class View {
        constructor(options) {
            this.model = options.model;
            this.template = options.template;
        }
    }
    ```

- Iterator
```
for (var post of posts) {
    console.log(post.url);
}
```
- Destructuring assignment
```
var post = {
    url: '/first-post',
    title: 'My First Post'
}
var {url, title} = post;
```
