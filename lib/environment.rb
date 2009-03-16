require 'rubygems'
require 'spec'
require 'rhyme'

import javax.servlet.http.Cookie
import javax.servlet.http.HttpServletRequest
import javax.servlet.http.HttpServletResponse
import javax.servlet.http.HttpSession
import javax.servlet.FilterConfig
import javax.servlet.FilterChain
import javax.servlet.ServletContext
import javax.servlet.RequestDispatcher
import org.vraptor.VRaptorFilter
import java.util.HashSet
import java.util.Locale

def req(x)
  require File.dirname(__FILE__) + "/spec/vraptor/#{x}"
end

def req_mocked(x)
  req "mocked_#{x}"
end

req 'matchers'
req_mocked 'config'
req_mocked 'http_session'
req_mocked 'http_request'
req_mocked 'http_response'
req_mocked 'request_dispatcher'
req_mocked 'servlet_context'
req_mocked 'cookie'

Spec::Runner.configure do |config|
  config.include(VRaptorMatchers)
end
