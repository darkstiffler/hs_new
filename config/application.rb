require File.expand_path('../boot', __FILE__)

# my required frameworks

require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "sprockets/railtie"

Bundler.require(:default, Rails.env)

module Birchis
  class Application < Rails::Application
  end
end
