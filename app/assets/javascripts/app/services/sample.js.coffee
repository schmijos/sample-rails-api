@sampleapi.factory 'Sample', ['railsResourceFactory', (railsResourceFactory) ->
  return railsResourceFactory({url: '/api/v2/samples', name: 'sample'});
]