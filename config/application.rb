require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module Workers
  class Application < Rails::Application
    config.load_defaults 5.2

    # デフォルトのロケールを日本（ja）に設定
    config.i18n.default_locale = :ja
  end
end
