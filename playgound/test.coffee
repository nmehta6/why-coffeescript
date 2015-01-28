angular.module('app').factory 'leaderboardService', ['$log', '$http', '$q', 'UserService', ($log, $http, $q, userService) ->
    self = {}
    self.get = ->
        $http.get '/api/leaderboard'

    self
]
