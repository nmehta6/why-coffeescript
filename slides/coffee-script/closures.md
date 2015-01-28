##Closures
- Prevent leaky variables
```
//every alert will have the final value of i
for ( var i = 0; i < elems.length; i++ ) {
    elems[i].addEventListener('click', function(e){
    alert( 'I am link #' + i );
    }, 'false' );
}
```
```
//Good. Use IIFE to create closures.
for ( var i = 0; i < elems.length; i++ ) {
    (function( lockedInIndex ){
        elems[ i ].addEventListener( 'click', function(e){
            alert( 'I am link #' + lockedInIndex );
            }, 'false' );
    })(i);
}
```
- Cumbersome
- CoffeeScript's *do* syntax to create closures
```
for elem, i in elements
    do (i) ->
        elems.addEventListener('click', (e) ->
            alert('I am link #' + i)
        , 'false')
```
