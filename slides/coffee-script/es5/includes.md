##Includes
- Object iteration not consistent with array iteration
```
for (var key in yourobject) {
    console.log(key, yourobject[key]);
}
```
- Or over object only properties
```
for (var key in yourobject) {
    if (yourobject.hasOwnProperty(key)) {
        console.log(key, yourobject[key]);
    }
}
```
- CoffeeScript comprehensions
```
//arrays
for num in nums
//object
for key of yourobject
```
- key value pair (loops are wrapped in IIFE)
```
yearsOld = max: 10, ida: 9
ages = for child, age of yearsold
    "#{child} is #{age}"
//hasOwnProperty
for own key, value of yourobject
```
