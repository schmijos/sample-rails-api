@sampleapi.controller 'SamplesController', ['$scope', 'Sample', ($scope, Sample) ->
  $scope.testMessage = "Welcome"
  $scope.samples = []

  # ng-init binding (Service Call)
  $scope.loadSamples = () ->
    Sample.query().then (results) ->
      $scope.samples = results

  # ng-click binding (Service Call)
  $scope.deleteSample = (sample) ->
    sample.delete()
    $scope.loadSamples()

  # ng-click binding (Service Call)
  $scope.updateSample = (sample) ->
    sample.update()
    $scope.loadSamples()

  # ng-click binding (Service Call)
  $scope.createSample = (sample) ->
    sample.create()
    $scope.loadSamples()

  # ng-click binding (Local Operation)
  $scope.createNewSample = () ->
    $scope.samples.push(new Sample())
]