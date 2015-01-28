##Existential Operator
- Existential check is often misunderstood.
```
//myVar has to be defined
o.myVar === null;
//check for both type and value
var exists = (typeof o.myVar !== "undefined" && o.myVar !== null);
```
- Brittle and cumbersome
- CoffeeScript's existential operator easier to write and read
```
theSwitch = off if theSwitch?
theSwitch ?= off
//chained operators
winnerZip = lottery.drawWinner?().address?.zipcode
```
