#= require application
#= require angular-mocks

describe 'samplesController', ->
  beforeEach(module('sampleapi'));

  beforeEach(inject( ($httpBackend, $rootScope, $controller, Sample) ->
    @scope = $rootScope.$new()
    $controller('SamplesController', {$scope: @scope})
  ))

  it 'sets up the list of current samples', ->
    expect(@scope.testMessage).toEqual("Welcome")
