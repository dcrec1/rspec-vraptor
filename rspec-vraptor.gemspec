# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{rspec-vraptor}
  s.version = "0.9.8"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Diego Carrion"]
  s.date = %q{2010-09-01}
  s.email = %q{dc.rec1@gmail.com}
  s.files = ["lib/environment.rb", "lib/spec/vraptor/matchers.rb", "lib/spec/vraptor/mocked_cookie.rb", "lib/spec/vraptor/mocked_filter_config.rb", "lib/spec/vraptor/mocked_http_request.rb", "lib/spec/vraptor/mocked_http_response.rb", "lib/spec/vraptor/mocked_http_session.rb", "lib/spec/vraptor/mocked_request_dispatcher.rb", "lib/spec/vraptor/mocked_servlet_context.rb", "lib/spec/vraptor.rb", "Rakefile", "README.textile"]
  s.homepage = %q{http://www.diegocarrion.com}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{rspec-vraptor}
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{RSpec for VRaptor Sexy/Nice URLs}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
