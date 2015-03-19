Gem::Specification.new do |s|
  s.name        = 'warden_login'
  s.version     = '0.1.0'
  s.platform    = Gem::Platform::RUBY
  s.author      = 'Ricard Forniol'
  s.email       = 'ricard@forniol.cat'
  s.summary     = 'signin_as!'
  s.description = 'Avoid integration tests to have to signin manually'

  s.files         = ['warden_login.rb']
  s.test_file     = ''
  s.require_path  = '.'

  s.add_dependency('capybara')
  s.add_dependency('devise')
end
