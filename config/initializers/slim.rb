# since we use AngularJS, '{{}}' should't be parsed as attribute delimiter
# see: https://github.com/slim-template/slim/pull/434
Slim::Engine.set_default_options :attr_delims => {'(' => ')', '[' => ']'}