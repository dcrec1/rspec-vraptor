Gem::Specification.new do |s|
  s.name = %q{rspec-vraptor}
  s.version = "0.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Diego Carrion"]
  s.date = %q{2009-02-06}
  s.email = %q{dc.rec1@gmail.com}
  s.files = ["lib/spec/vraptor.rb", "lib/spec/vraptor/mocked_http_response.rb", "lib/spec/vraptor/mocked_config.rb", "lib/spec/vraptor/mocked_http_session.rb", "lib/spec/vraptor/mocked_request_dispatcher.rb", "lib/spec/vraptor/mocked_servlet_context.rb", "lib/spec/vraptor/mocked_http_request.rb", "lib/spec/vraptor/matchers.rb", "lib/environment.rb", "README.textile", "Rakefile"]
  s.homepage = %q{http://www.diegocarrion.com}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{rspec-vraptor}
  s.rubygems_version = %q{1.2.0}
  s.summary = %q{RSpec for VRaptor Sexy URLs}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if current_version >= 3 then
    else
    end
  else
  end
end
