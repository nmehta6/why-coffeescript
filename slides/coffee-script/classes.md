##Classes
- Abstraction over Javascript functions. Removes complexities of prototypical inheritance
- Ability to define both instance and static properties
- shorthand '@' to access 'this'
```
class Animal
    constructor: (name) ->
        @name = name
```
```
//Instance properties
class Order
    price: 5
    process: ->
//Static properties
class Order
    @find = (id) ->
```

```
//Angular controller example ():
(function (app) {
    app.controller('ShellController', ['$scope', '$window', function ($scope, $window) {
        $window.location.href = $scope.interactiveUrl;
    }]);
}(angular.module('app')));
//Angular controller using CoffeeScript and ngClassify
class Shell extends Controller
    constructor: ($scope, $window) ->
        $window.location.href = $scope.interactiveUrl
```
