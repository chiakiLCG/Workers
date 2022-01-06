require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module Workers
  class Application < Rails::Application
    config.load_defaults 5.2
    # デフォルトのロケールを日本（ja）に設定
    config.i18n.default_locale = :ja
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}').to_s]
    # タイムゾーンを日本時間に設定
    config.time_zone = 'Asia/Tokyo'
  end
end
