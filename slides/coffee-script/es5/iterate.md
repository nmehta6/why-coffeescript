##Iterations
- ES5 Iterations:
```
foods.forEach(function(food){
    if (food !== 'chocolate') {
        eat(food);
    }
});
```
- Performance implication since a callback is needed for every iteration
- ES3 loops
```
for (_k = 0, _len2 = foods.length; _k < _len2; _k++) {
    food = foods[_k];
    if (food !== 'chocolate') { eat(food); }
}
```
- CoffeeScript compiles down to ES3
- No need for shimming anything and one syntax to write all iterations
```
for food in foods when food isnt 'chipotle'
    eat(food)
```
- Allows multiple lines if needed
```
for team in teams when team in easternConference
    getScore(player) for player in team.players when player.position in ['forward', 'guard']
```
