class HomeController < ApplicationController
  def index
    @ruby_version   = RUBY_DESCRIPTION
    @rails_version  = Rails.version
    @java_version   = java.lang.System.get_property("java.version") if defined?(JRUBY_VERSION)
    @jruby_version  = JRUBY_VERSION if defined?(JRUBY_VERSION)
    @environment    = Rails.env
  end
end
