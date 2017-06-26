Gem::Specification.new do |s|
  s.name        = 'langtool'
  s.version     = '0.0.1'
  s.date        = '2017-06-26'
  s.summary     = 'Text style and grammar checker'
  s.description = 'A simple wrapper for LanguageTool API'
  s.authors     = ['Michael Miro']
  s.email       = 'mirmikh@gmail.com'

  s.files       = [
    'lib/langtool.rb',
    'lib/langtool/checker.rb',
    'lib/langtool/language.rb'
  ]

  s.add_runtime_dependency 'httparty', '~> 0.15.5'

  s.homepage    = 'https://github.com/Seybo/langtool-ruby'
  s.license     = 'MIT'
end
