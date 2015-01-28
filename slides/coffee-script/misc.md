##Other features
- Default parameters and String Interpolation
```
fill = (container, liquid = 'coffee') ->
    "Filling the #{container} with #{liquid}..."
```
- Escaping
    - escapes numbers so it is possible to do 5.toString()
    - escapes all reserved words like 'delete' and 'with'
- Stops you from using 'with' which is evil
- Default values on objects
```
hash or= {a: 1}
```
