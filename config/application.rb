require_relative "boot"

require "rails"
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "active_storage/engine"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"

Bundler.require(*Rails.groups)

module Bbq
  class Application < Rails::Application
    config.load_defaults 6.1
    config.generators.system_tests = nil
    config.i18n.default_locale = :ru
  end
end
