##ES6 Features (Cont'd)
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
- Arrow Functions
```
app.get('posts', (req, res) => res.render('/posts.html') );
```
- Array comprehensions
    - JavaScript
    ```
    var results = [
        for(c of customers)
            if (c.city == "Seattle")
                { name: c.name, age: c.age }
    ]
    ```
    - CoffeeScript
    ```
    results = (for c in customers when c.city is 'Seattle'
        {name: c.name, age: c.age}
    )
    ```
