##Destructuring assignment
- A subset of pattern matching to extract out the parts of an object during assignment
- Transformation utility Helps pull out deeply nested objects/properties
- Array destructuring
```
[theBait, theSwitch] = [theSwitch, theBait]
```

- Array destructuring from function call
```
weatherReport = (location) ->
    [location, 72, "Mostly Sunny"]
info = {}
[info.city, info.temp, info.forecast] = weatherReport "Chicago, IL"
```
- Deep object destructuring
```
//JSON from a function call
futurists = {
    sculptor: "Umberto Boccioni",
    painter: "Vladimir Burliuk",
    poet: {
        name: "F.T. Marinetti",
        address: ["Via Roma 42R", "Bellagio, Italy 22021"]
    }
}
//Destructure object
{poet: {name, address: [street, city]}} = futurists
```
- Pulls out city, name and street from this nested object
