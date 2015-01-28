##Map
- Same performance limitation as iterate
- Wrap any CoffeeScript comprehension with parans to map
```
result = (item.name for item in array)
```
- Mapping with an anonymous function
```
result = []
result.push((item) -> {id: item.slug, name: item.name}) for item in array
```
- Mapping by applying a function
```
result = (transform(item) for item in array)
```
