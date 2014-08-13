@sampleapi = angular.module('sampleapi', ['ngRoute', 'rails', 'templates'])

@sampleapi.config(($routeProvider) ->
    $routeProvider

      .when '/samples/index',
        templateUrl: 'samples/index.html',
        controller: 'SamplesController'

      .when '/leaflet',
        templateUrl: 'leaflet/overview.html',
        controller: 'LeafletController'

      .otherwise({redirectTo: '/samples/index'})
)