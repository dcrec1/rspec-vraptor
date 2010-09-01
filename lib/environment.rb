require 'rubygems'
require 'java'
require 'spec'
require 'rhyme'
require 'slf4j-api-1.5.8'
require 'slf4j-log4j12-1.5.8'
require 'log4j-1.2.15'
require 'picocontainer-2.7'
require 'servlet-api-2.5' 
require 'vraptor-3.1.3'

import javax.servlet.http.Cookie
import javax.servlet.http.HttpServletRequest
import javax.servlet.http.HttpServletResponse
import javax.servlet.http.HttpSession
import javax.servlet.FilterConfig
import javax.servlet.FilterChain
import javax.servlet.ServletContext
import javax.servlet.RequestDispatcher
import java.util.HashSet
import java.util.Locale

begin
  import org.vraptor.VRaptorFilter
rescue
  $VRAPTOR_VERSION = "Nice"
end
begin
  import "br.com.caelum.vraptor.VRaptor"
rescue
  $VRAPTOR_VERSION = "Sexy"
end

def req(x)
  require File.dirname(__FILE__) + "/spec/vraptor/#{x}"
end

def req_mocked(x)
  req "mocked_#{x}"
end

req 'matchers'
req_mocked 'filter_config'
req_mocked 'http_session'
req_mocked 'http_request'
req_mocked 'http_response'
req_mocked 'request_dispatcher'
req_mocked 'servlet_context'
req_mocked 'cookie'

Spec::Runner.configure do |config|
  config.include(VRaptorMatchers)
end
