require 'rubygems'
require 'spec'
require 'rhyme'

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
  require File.dirname(__FILE__) + "/spec/vraptor/mocked_#{x}"
end

req 'config'
req 'http_session'
req 'http_request'
req 'http_response'
req 'request_dispatcher'
req 'servlet_context'

Spec::Runner.configure do |config|
  config.include(VRaptorMatchers)
end
